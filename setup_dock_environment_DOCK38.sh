#!/bin/bash

# run this by
#
#    cd <dock_campaign>
#    source setup_dock_environment.sh

# activate conda env <docking> manually


# supported cluster types:
# LOCAL, SGE, SLURM
export CLUSTER_TYPE=SLURM
export USE_SLURM=true

export SLURM_ACCOUNT=maom0
export SLURM_MAIL_USER=ymanasa@umich.edu
export SLURM_MAIL_TYPE=BEGIN,END
export SLURM_PARTITION=standard
export SLURM_MEM=1GB
export SLURM_TIME=00:60:00

export SCRATCH_DIR=/scratch/maom_root/maom0/ymanasa

export DOCK_TEMPLATE=/home/ymanasa/opt/dock_campaign_template

#export DOCKBASE=${HOME}/turbo/opt/DOCK37

# DOCK3.8 used for preparing structure
export DOCKBASE=${HOME}/turbo/opt/DOCK-dev/ucsfdock
export PATH="${PATH}:${DOCKBASE}/bin"

export OMEGA_ENERGY_WINDOW=12
export OMEGA_MAX_CONFS=600

export OE_LICENSE=~/turbo/opt/OpenEye/oe_license.txt

