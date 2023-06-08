# -*- coding: utf-8 -*-
"""
Created on Mon Sep 12 16:46:56 2022

@author: phavala
"""

# THIS SCRIPT DOES NOT REQUIRE MAIN_CRACMM to be run

# Creates metadata csv and markdown file for github
# adapted from AppendixAB_andMD.py from Pye et al. ACPD
import os
import pandas as pd
import re

def prep_metadata(mech):
    
  # uses CMAQ files: AE.nml, GC.nml, NR.nml. AERO_DATA.F, SOA_DEFN.F, hlconst.F, cracmm1_speciesdescription.csv
  # mech input string should be cracmm1_aq or cracmm1amore_aq for CMAQv5.4

  ## Manual selections ###########################################
  # Set current working directory where this file resides 
  # This python code expects *.nml and files from CMAQ to be present in ../input and will output in ../output
  codedir = os.getcwd()
  filepath = os.path.normpath(codedir)
  os.chdir(filepath)
  inputfiledir = os.path.join(os.getcwd(), '..', 'input') 
  #

  ###########################################
  # Prep Gases
  gcfile = 'GC_'+mech+'.nml'
  filename = os.path.join( inputfiledir, gcfile)
  dfgc = pd.read_csv(filename,skiprows=4)
  nrowdim=len(dfgc)
  dfgc=dfgc.drop([nrowdim-1]) #drop last row
  dfgc.columns=dfgc.columns.str.replace(' ','')
  dfgc.rename(columns={"!SPECIES":"Species"}, inplace=True)
  dfgc['Species']=dfgc.Species.str.replace("'","")
  dfgc['Species']=dfgc.Species.str.replace(" ","")
  dfgc['PhaseG']='G'  # is it in the gas-phase? 
  dfgc=dfgc.drop(['GC2AESURR','GC2AQSURR','IC','IC_FAC','BC','BC_FAC','FAC','CONC','WDEP','DDEP'],axis=1) 
  dfgc['Species']=dfgc.Species.str.replace('VROC','ROC') # drop for matching with AE

  ###########################################
  # Prep NR
  nrfile = 'NR_'+mech+'.nml'
  filename = os.path.join( inputfiledir, nrfile)
  dfnr = pd.read_csv(filename,skiprows=4)
  nrowdim=len(dfnr)
  dfnr=dfnr.drop([nrowdim-1]) #drop last row
  dfnr.columns=dfnr.columns.str.replace(' ','')
  dfnr.rename(columns={"!SPECIES":"Species"}, inplace=True)
  dfnr['Species']=dfnr.Species.str.replace("'","")
  dfnr['Species']=dfnr.Species.str.replace(" ","")
  dfnr['PhaseG']='G'
  dfnr=dfnr.drop(['NR2AESURR','NR2AQSURR','IC','IC_FAC','BC','BC_FAC','FAC','CONC','WDEP','DDEP'],axis=1)  #these won't match other nml
  # Append NR to GC
  dfgc=dfgc.append(dfnr,ignore_index=True)
  dfgc['WET-SCAVSURR']=dfgc['WET-SCAVSURR'].str.replace("'","")
  dfgc['WET-SCAVSURR']=dfgc['WET-SCAVSURR'].str.replace(" ","")

  ###########################################
  #https://www.dataquest.io/wp-content/uploads/2019/03/python-regular-expressions-cheat-sheet.pdf
  # Prep hlconst, dissolution enthalpy for WET-SCAVSURR
  hlfile = 'hlconst.F'
  filename = os.path.join( inputfiledir, hlfile)
  column_names = ['hspecies','henryMatm','henryenthalpyK']
  dfhenry = pd.DataFrame(columns=column_names)
  # read lines that start with DATA SUBNAME ('^       DATA SUBNAME') and parse Hlconst, save to dataframe
  filetoread = open(filename)
  for line in filetoread:
      line = line.rstrip()
      if re.search('^      DATA SUBNAME\(',line):
          hspecies=(re.findall('\)\s*/\s*\'(.*)\'.*!', line)[0]) # return name
          hlvalue=float(re.findall('DATA SUBNAME.*\/.*,(.*),.*\/.*!',line)[0]) # get the item between the first 2 commas between the slashes
          enthalpyK=float(re.findall('DATA SUBNAME.*\/.*,.*,(.*).*\/.*!',line)[0])
          newrow = pd.Series(data={'hspecies':hspecies,'henryMatm':hlvalue,
                                  'henryenthalpyK':enthalpyK})
          dfhenry = dfhenry.append(newrow,ignore_index=True)
  dfhenry.hspecies=dfhenry.hspecies.str.replace(" ","")
  dfgc=pd.merge(dfgc,dfhenry,left_on="WET-SCAVSURR",right_on="hspecies",how="left")

  ###########################################
  # Prep AE
  aefile = 'AE_'+mech+'.nml'
  filename = os.path.join( inputfiledir, aefile )
  dfae = pd.read_csv(filename,skiprows=4)
  nrowdim=len(dfae)
  dfae=dfae.drop([nrowdim-1]) #drop last row
  dfae.columns=dfae.columns.str.replace(' ','') # get rid of spaces in column names
  dfae.rename(columns={"!SPECIES":"Species"}, inplace=True) # rename this heading
  dfae['Species']=dfae.Species.str.replace("'","")  # get rid of ' in species names
  dfae['Species']=dfae.Species.str.replace(" ","")  # get rid of spaces in species names
  dfae['PhaseP']='P' # particle phase
  dfae=dfae.drop(['AE2AQSURR','FAC.1','IC','IC_FAC','BC','BC_FAC','FAC','CONC','WDEP','DDEP','OPTICS','DRYDEPSURR','WET-SCAVSURR'],axis=1)  #these won't match other nml

  ###########################################
  # Prep AERO_DATA and get density, kappa
  adfile = 'AERO_DATA.F'
  filename = os.path.join( inputfiledir, adfile)
  column_names = ['adspecies','aerodensity','aerokappa']
  dfad = pd.DataFrame(columns=column_names)
  # read lines that start with DATA SUBNAME ('^       DATA SUBNAME') and parse Hlconst, save to dataframe
  filetoread = open(filename)
  for line in filetoread:
      line = line.rstrip()
      if re.search('^     & spcs_list_type\(',line):
          # one comment has () which is problematic, drop
          line=str.replace(line, '(Black)','Black')
          adspecies=(re.findall('^     & spcs_list_type\(\'(.*)\',.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*\)', line)[0]) # return name
          aerodensity=float(re.findall('^     & spcs_list_type\(.*,.*,.*,.*,.*,\s*(.*),.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*\)', line)[0]) 
          aerokappa=float(re.findall('^     & spcs_list_type\(.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,(.*)\)', line)[0]) 
          newrow = pd.Series(data={'adspecies':adspecies,'aerodensity':aerodensity,
                                  'aerokappa':aerokappa})
          dfad = dfad.append(newrow,ignore_index=True)
  dfad.adspecies=dfad.adspecies.str.replace(" ","")
  dfae=pd.merge(dfae,dfad,left_on="Species",right_on="adspecies",how="left")

  ###########################################
  # Prep SOA_DEFN
  oafile = 'SOA_DEFN.F'
  filename = os.path.join( inputfiledir, oafile)
  column_names = ['oaspecies','oacstar','oaenthalpy','oaotoc','oaomoc']
  dfoa = pd.DataFrame(columns=column_names)
  # read lines that start with DATA SUBNAME ('^       DATA SUBNAME') and parse Hlconst, save to dataframe
  filetoread = open(filename)
  for line in filetoread:
      line = line.rstrip()
      if re.search('^     & oa_type\(',line):
          oaspecies=(      re.findall('^     & oa_type\(\'(.*)\',.*,.*,.*,.*,.*,.*,.*,.*,.*,.*,.*\)', line)[0]) # return name
          oacstar=float(   re.findall('^     & oa_type\(.*,.*,.*,.*,\s*(.*),.*,.*,.*,.*,.*,.*,.*\)', line)[0]) 
          oaenthalpy=float(re.findall('^     & oa_type\(.*,.*,.*,.*,.*,\s*(.*),.*,.*,.*,.*,.*,.*\)', line)[0]) 
          oaotoc=float(    re.findall('^     & oa_type\(.*,.*,.*,.*,.*,.*,\s*(.*),.*,.*,.*,.*,.*\)', line)[0]) 
          oaomoc=float(  re.findall('^     & oa_type\(.*,.*,.*,.*,.*,.*,.*,\s*(.*),.*,.*,.*,.*\)', line)[0]) 
          newrow = pd.Series(data={'oaspecies':oaspecies,'oacstar':oacstar,
                                  'oaenthalpy':oaenthalpy,'oaotoc':oaotoc,
                                   'oaomoc':oaomoc})
          #print(newrow)
          dfoa = dfoa.append(newrow,ignore_index=True)
  dfoa.oaspecies=dfoa.oaspecies.str.replace(" ","")
  dfae=pd.merge(dfae,dfoa,left_on="Species",right_on="oaspecies",how="left")


  # Finish formatting ae.nml info
  #dfae['Species']=dfae['Species'].str.strip().str[0:-1] # remove trailing I,J,K, needed for CMAQ v5.3 but not v5.4
  dfae['Species']=dfae.Species.str.replace('AROC','ROC') # match these with gas
  dfae['Species']=dfae.Species.str.replace('AHOM','HOM')  # match with gas
  dfae['Species']=dfae.Species.str.replace('AELHOM','ELHOM') # match with gas
  dfae['Species']=dfae.Species.str.replace('AOP3','OP3') # match with gas

  ###########################################
  # merge and add g (gas) or p (particle) suffix and do molec wt check
  dfgc=pd.merge(dfgc,dfae,on="Species",how="outer",suffixes=("_g","_p"))
  dfgc['chckmw']=dfgc['MOLWT_g']-dfgc['MOLWT_p'] # gas and particle molecular weights should match
  if len(dfgc[dfgc['chckmw']>0])>0:
    print(">>gas and particle molecular weights have an inconsistency<<")
    print(dfgc[dfgc['chckmw']>0])
  else:
    print(">>gas and particle molecular weights match<<")

  ###########################################
  # bring in descriptions--same input file for all cracmm1-based mechs
  filename = os.path.join( inputfiledir, 'cracmm1_speciesdescription.csv')
  dfdesc = pd.read_csv(filename)
  dfdesc.columns=dfdesc.columns.str.replace(' ','')
  dfdesc['Species']=dfdesc.Species.str.replace(' ','')
  # need to remove spaces from species names
  dfgc= pd.merge(dfgc,dfdesc,left_on='Species',right_on='Species',how="left")

  ###########################################
  # Organize data sort alphabetical, take GC.nml value first
  dfgc = dfgc.sort_values("Species") # sort alphabetical
  dfgc["Phase"]=dfgc["PhaseG"].fillna('')+dfgc["PhaseP"].fillna('')
  dfgc['Molecular Weight (g/mol)']=dfgc['MOLWT_g'].fillna(dfgc['MOLWT_p'])
  dfgc['Explicit/Lumped']=dfgc['ExplicitorLumped_g'].fillna(dfgc['ExplicitorLumped_p'])
  dfgc['Representative']=dfgc['!RepCmp_g'].fillna(dfgc['!RepCmp_p']) 
  dfgc['Representative']=dfgc.Representative.str.replace("!","")
  dfgc['DTXSID']=dfgc['DTXSID_g'].fillna(dfgc['DTXSID_p'])
  dfgc['DTXSID']=dfgc['DTXSID'].fillna('') 
  dfgc['DTXSID']=dfgc['DTXSID'].str.replace(' ','') 
  dfgc['SMILES']=dfgc['SMILES_g'].fillna(dfgc['SMILES_p']) 
  dfgc['SMILES']=dfgc['SMILES'].str.replace(' ','') 
  # Diagnose stable species based on them being transported in gas or aerosol
  dfgc['St']=dfgc['TRNS_g'].fillna('')+dfgc['TRNS_p'].fillna('')
  dfgc['St']=dfgc['St'].str.find('Yes')
  dfgc.loc[dfgc['St']>0,'Stable']='Yes'
  dfgc.loc[dfgc['St']<0,'Stable']='No'

  return dfgc


codedir = r'C:\Users\phavala\OneDrive - Environmental Protection Agency (EPA)\Documents\2021_cracmm\python\code'
filepath = os.path.normpath(codedir)
os.chdir(filepath)

mech='cracmm1_aq'
dfgc=prep_metadata(mech)

###########################################
# Write out Markdown for CMAQ github
###########################################
dfmarkdown = dfgc[['Species','Description','Phase','Molecular Weight (g/mol)','Explicit/Lumped','Representative','DTXSID','SMILES']].copy()
dfmarkdown['SMILES']=dfmarkdown['SMILES'].str.replace('NA','')
dfmarkdown['SMILES']=dfmarkdown['SMILES'].str.replace('[','\[')
dfmarkdown['SMILES']=dfmarkdown['SMILES'].str.replace(']','\]')
dfmarkdown['SMILES']=dfmarkdown['SMILES'].str.replace('(','\(')
dfmarkdown['SMILES']=dfmarkdown['SMILES'].str.replace(')','\)')
dfmarkdown.SMILES.fillna('',inplace=True)
#for i in range(len(dfmarkdown)):
#  if len(dfmarkdown.DTXSID.iloc[i])>5 :
#      dfmarkdown.SMILES.iloc[i]='['+ dfmarkdown.SMILES.iloc[i] + '](https://comptox.epa.gov/dashboard/chemical/details/' + dfmarkdown.DTXSID.iloc[i] + ')'
#smilestolink = dfmarkdown.DTXSID.str.len()>5
dfmarkdown.SMILES.loc[dfmarkdown.DTXSID.str.len()>5]='['+ dfmarkdown.SMILES.loc[dfmarkdown.DTXSID.str.len()>5] + ']'+  \
    '(https://comptox.epa.gov/dashboard/chemical/details/'+  \
    dfmarkdown.DTXSID.loc[dfmarkdown.DTXSID.str.len()>5]+')'
dfmarkdown=dfmarkdown.drop(['DTXSID'],axis=1)
headerline = ' <sub>Species</sub> | <sub>Description</sub> | <sub>Phase</sub> | <sub>Molecular Weight (g/mol)</sub> | <sub>Explicit/ Lumped</sub> | <sub>Representative Structure</sub> | <sub>SMILES</sub> '
firstmarkdownline = "Gas (G) and particle (P) species from the namelists. SMILES link to representative structures in the EPA Chemicals Dashboard (if available)."
secondmarkdownline = "Note that for each particulate species in CMAQ, a letter will be appended to the name to designate the size, or mode, of the aerosol being represented: I = Aitken mode, J = Accumulation mode, K = Coarse mode. Prepending of a species with a V or A in CMAQ or the chemical mechanism files indicates the species resides in the gas or particulate phase. "
dfmarkdown['Representative']=dfgc.Representative.str.replace(";",",")
dfmarkdown['Description']=dfmarkdown.Description.str.replace(';',',')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('ug/m3','&#956;g m<sup>-3</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('log10C','log<sub>10</sub>C')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('kOH','k<sub>OH</sub>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('cm3','cm<sup>3</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('s-1','s<sup>-1</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-10','10<sup>-10</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-11','10<sup>-11</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-12','10<sup>-12</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-13','10<sup>-13</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-14','10<sup>-14</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-2','10<sup>-2</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10-1','10<sup>-1</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+1','10<sup>+1</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+2','10<sup>+2</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+3','10<sup>+3</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+4','10<sup>+4</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+5','10<sup>+5</sup>')
dfmarkdown['Description']=dfmarkdown.Description.str.replace('10\+6','10<sup>+6</sup>')
outputfiledir = os.path.join(os.getcwd(), '..', 'output')
mdfile = mech+'_species_table.md'
filename = os.path.join( outputfiledir, mdfile)
mdfile= open(filename,'w')
mdfile.write(firstmarkdownline)
mdfile.write('\n')
mdfile.write('\n')
mdfile.write(secondmarkdownline)
mdfile.write('\n')
mdfile.write('\n')
mdfile.write(headerline)
mdfile.write('\n')
mdfile.write(' ----- | ----- | ----- | ----- | ----- | ----- | ----- ')
mdfile.write('\n')
mdfile.close()
dfmarkdown.to_csv(filename,index=False,header=False,sep='|',mode='a')
mdfile= open(filename,'a')
mdfile.write('\n')
#mdfile.write(lastmarkdownline)
mdfile.close()

############# Metadata CSV
dfmetadata=dfgc[['Species','Description','Phase','Stable','Molecular Weight (g/mol)',
                 'Explicit/Lumped','Representative','SMILES','henryMatm',
                 'henryenthalpyK','aerodensity','aerokappa','oacstar','oaenthalpy',
                 'oaomoc']].copy()
dfmetadata.aerokappa[dfmetadata.aerokappa<=0]='NA'
dfmetadata=dfmetadata.rename(columns={'henryMatm':'H Law (M/atm)'})
dfmetadata=dfmetadata.rename(columns={'henryenthalpyK':'Enthalpy of solution (K)'})
dfmetadata=dfmetadata.rename(columns={'aerodensity':'Aerosol density (kg/m3)'})
dfmetadata=dfmetadata.rename(columns={'aerokappa':'Kappa_org'})
dfmetadata=dfmetadata.rename(columns={'oacstar':'C* (microg/m3)'})
dfmetadata=dfmetadata.rename(columns={'oaenthalpy':'Enthalpy of vaporization (J/mol)'})
dfmetadata=dfmetadata.rename(columns={'oaomoc':'OM to OC (g/g)'})

dfmetadata=dfmetadata.fillna('NA')

metafile = mech+'_metadata.csv'
filename = os.path.join( outputfiledir, metafile)
#metafile= open(filename,'w')
dfmetadata.to_csv(filename,index=False,header=True,sep=',',mode='w')
#mdfile.close()