import pandas as pd

# Read the tab-separated files into pandas dataframes

df_comps = pd.read_csv('martin_all_09132023.ism', sep='\t', header=None, names=['SMILES','Compound_ID'])
df_output = pd.read_csv('output.ism', sep=' ', header=None, names=['SMILES','Compound_ID'])

# Find the differences between the two columns
differences = df_comps[~df_comps['Compound_ID'].isin(df_output['Compound_ID'])]

# Display the differences
print(differences)