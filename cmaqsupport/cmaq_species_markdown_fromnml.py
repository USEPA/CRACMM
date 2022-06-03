# -*- coding: utf-8 -*-
"""
Created on Mon Mar  7 09:10:34 2022

@author: phavala
"""

# Creates CRACMM species markdown files for CMAQ on github
import os
import pandas as pd

# Set current working directory where this file resides 
# This python code expects *.nml and species description files from CMAQ to be present in ../input and will output in ../output
codedir = r'C:\Users\phavala\OneDrive - Environmental Protection Agency (EPA)\Documents\2021_cracmm\python\code'
filepath = os.path.normpath(codedir)
os.chdir(filepath)
inputfiledir = os.path.join(os.getcwd(), '..', 'input') # Must contain: GC*.nml, AE*.nml, NR*.nml, cracmm1_speciesdescription.csv

# SELECT MECHANISM--there are only two options and they must be CRACMM-based
#mech = 'cracmm1_aq'
mech = 'cracmm1amore_aq'

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
dfgc=dfgc.drop(['GC2AESURR','GC2AQSURR','IC','IC_FAC','BC','BC_FAC','FAC','CONC','WDEP','DDEP'],axis=1)  # these won't match other nml

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

# Prep GC ROC species to match AE 
dfgc['Species']=dfgc.Species.str.replace('VROC','ROC')

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
dfae['Species']=dfae['Species'].str.strip().str[0:-1] # remove trailing I,J,K
dfae['Species']=dfae.Species.str.replace('AROC','ROC') # match these with gas
dfae['Species']=dfae.Species.str.replace('AHOM','HOM')  # match with gas
dfae['Species']=dfae.Species.str.replace('AELHOM','ELHOM') # match with gas
dfae['Species']=dfae.Species.str.replace('AOP3','OP3') # match with gas
# Add back last letter if not I,J,K
dfae['Species']=dfae.Species.str.replace('ACOR','ACORS') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('ASOI','ASOIL') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('ASEACA','ASEACAT') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('NUMATK','NUMATKN') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('NUMAC','NUMACC') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('NUMCO','NUMCOR') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('SRFATK','SRFATKN') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('SRFAC','SRFACC') # put trailing letter back on
dfae['Species']=dfae.Species.str.replace('SRFCO','SRFCOR') # put trailing letter back on
# drop duplicate species
dfae=dfae.drop_duplicates(subset=["Species"]) # drop duplicate species that occur in more than 1 mode

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

###########################################
# Write out Markdown for CMAQ github
###########################################
dfmarkdown = dfgc[['Species','Description','Phase','Molecular Weight (g/mol)','Explicit/Lumped','Representative','DTXSID']].copy()
dfmarkdown['DTXSID']=dfmarkdown['DTXSID'].str.replace('NA','')
dfmarkdown['DTXSID']='['+ dfmarkdown['DTXSID'].astype(str) + '](https://comptox.epa.gov/dashboard/chemical/details/' + dfmarkdown['DTXSID'].astype(str) + ')'
headerline = ' Species | Description | Phase | Molecular Weight (g/mol) | Explicit/Lumped | Representative Structure | DTXSID '
firstmarkdownline = "Gas (G) and particle (P) species from the namelists. DTXSIDs link to representative structures in the EPA Chemicals Dashboard (if available)."
lastmarkdownline = "Note that for each aerosol mass species, a letter will be appended to the name to designate the size, or mode, of the aerosol being represented: I = Aitken mode, J = Accumulation mode, K = Coarse mode. "
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
mdfile.write(headerline)
mdfile.write('\n')
mdfile.write(' ----- | ----- | ----- | ----- | ----- | ----- | ----- ')
mdfile.write('\n')
mdfile.close()
dfmarkdown.to_csv(filename,index=False,header=False,sep='|',mode='a')
mdfile= open(filename,'a')
mdfile.write('\n')
mdfile.write(lastmarkdownline)
mdfile.close()