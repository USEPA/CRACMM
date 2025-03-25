# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import sys
sys.path.insert(1, '/work/MOD3DEV/mpye/cracmm_sphinx')


# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'CRACMM'
copyright = 'CRACMM does not have copyright'
author = 'U.S. Environmental Protection Agency'
release = '2.0'


# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ['myst_nb', 'sphinx_new_tab_link']

myst_enable_extensions = ['dollarmath']    #allows LaTeX code to format correctly when the HTML is produced
myst_heading_anchors = 4    #resolves warnings regarding myst not finding target ID when linking to markdown heading. Links still work without this however.
new_tab_link_show_external_link_icon = True    #adds icon to tell the user that the link they are about to click on will open in a new tab

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
html_css_files = ["custom.css"]
html_logo = 'logos/CRACMM_1.png'
html_show_copyright = False
