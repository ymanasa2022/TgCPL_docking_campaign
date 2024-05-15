#!~/miniconda3/envs/docking/bin/python3

import os, string, sys
from openeye.oechem import *

try:
    ifs = oemolistream()
    ifs.open(sys.argv[1])
    ofs_1 = oemolostream()
    ofs_1.open('output.ism')
except IndexError:
    print('\nUsage: heterocyclic-nitrile.py file.ism\n')
    raise SystemExit

mol_si = OEGraphMol()
OEParseSmiles(mol_si, "[SiH3]")

libgen1 = OELibraryGen("[SiH3:1].[n:2][a:3][C:4]#[N:5]>>[n:2][a:3][C:4]([SiH3:1])=[N:5]")

libgen1.SetExplicitHydrogens(False)
libgen1.SetValenceCorrection(False)
print("starting products")
for mol in ifs.GetOEMols():
    print("doing reactions on mol")
    print(mol.GetTitle())

    libgen1.AddStartingMaterial(mol_si, 0)
    libgen1.AddStartingMaterial(mol, 1, False)
    mol.Clear()
    mol_si.Clear()

for products in libgen1.GetProducts():
    title=products.GetTitle()
    title=title[1:]
    products.SetTitle(title)
    OEWriteMolecule(ofs_1, products)

ofs_1.close()
ifs.close()
# Fc1ccc(CNC(=O)c2c(NCC3CCCCC3)nc(C#N)nc2N2CCOCC2)cc1 273565.0.N did not work
# c1cc(ccc1CNC(=O)c2c(nc(nc2N3CCOCC3)C(=[N])[SiH3])NCC4CCCCC4)F
# CC(N(CC1CCCCC1)c1nc(NC2COC2)nc(C#N)n1)c1ccc(F)cc1 270883.0.N
# CC(c1ccc(cc1)F)N(CC2CCCCC2)c3nc(nc(n3)NC4COC4)C(=[N])[SiH3]