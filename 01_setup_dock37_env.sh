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

export DOCKBASE=${HOME}/turbo/opt/DOCK37

export DOCK_VERSION=3.7
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

