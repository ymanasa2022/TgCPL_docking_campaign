#!/bin/bash

# run this by
#
#    cd <dock_campaign>
#    source setup_dock_environment.sh
#


# supported cluster types:
# LOCAL, SGE, SLURM
#export CLUSTER_TYPE=SLURM
export CLUSTER_TYPE=SLURM

# use these options for SLURM clusters
export USE_SLURM=true
export SLURM_ACCOUNT=tromeara0
export SLURM_MAIL_USER=ymanasa@umich.edu
export SLURM_MAIL_TYPE=BEGIN,END
export SLURM_PARTITION=standard
export SLURM_MEM=1GB
export SLURM_TIME=00:60:00

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/nfs/turbo/umms-maom/opt/lib
export SCRATCH_DIR=/scratch/maom_root/maom0/ymanasa
export DOCK_TEMPLATE=${HOME}/opt/dock_campaign_template

## use DOCK-debug when builing ligands from tldr
#export DOCKBASE=${HOME}/turbo/opt/DOCK-debug/ucsfdock
## use DOCK38 when docking
export DOCKBASE=${HOME}/turbo/opt/DOCK38/ucsfdock

export DOCK_VERSION=3.8
# the DOCKBASE folder should contain files and folders that look like this:
# analysis, bin, common, docking, install, ligand protein, files.py, util.py, __init__.py

export PATH="${PATH}:${DOCKBASE}/bin:${DOCK_TEMPLATE}/scripts"
export ZINC3D_PATH=${HOME}/turbo/ZINC_mirror/published/3D

# to build molecules for zinc (WIP)
#https://comp.chem.umn.edu/sds/amsol/amsol7.1.tar.xz
#with co-linear patch
export AMSOLEXE=${HOME}/opt/amsol/amsol7.1/amsol7.1.exe
export OBABELBASE=${HOME}/opt/build
export EMBED_PROTOMERS_3D_EXE=$DOCKBASE/ligand/3D/embed3d_corina.sh

export OMEGA_ENERGY_WINDOW=12
export OMEGA_MAX_CONFS=600

# Setup environment for BKSLab
#source /mnt/nfs/soft/dock/versions/dock37/DOCK-3.7-trunk/env.csh
#setenv AMSOLEXE /nfs/home/momeara/ex9/tools/amsol7.1-colinear-fix/amsol7.1
#setenv SOFT /mnt/nfs/soft
#source /mnt/nfs/soft/python/current/env.csh
#source /nfs/soft/jchem/current/env.csh
#setenv EMBED_PROTOMERS_3D_EXE $DOCKBASE/ligand/3D/embed3d_corina.sh
#setenv PATH ${PATH}:/nfs/soft/corina/current
#setenv PATH ${PATH}:/nfs/soft/openbabel/current/bin
#setenv TMPDIR /scratch/momeara

# path to zinc database

export OE_LICENSE=~/turbo/opt/OpenEye/oe_license.txt
