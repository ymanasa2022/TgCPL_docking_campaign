#!/bin/sh
#SBATCH --job-name=blastermaster_covalent
#SBATCH --mail-user=ymanasa@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --account=maom0
#SBATCH --partition=standard
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000m
#SBATCH --time=50:00
#SBATCH --output=working/blastermaster_covalent.out
#SBATCH --error=working/blastermaster_covalent.err

export DOCKBASE=/home/ymanasa/turbo/opt/DOCK-dev/ucsfdock
export PATH="/home/ymanasa/turbo/opt/DOCK-dev/ucsfdock/bin:/home/ymanasa/miniconda3/envs/docking/bin:/home/ymanasa/miniconda3/condabin:/opt/TurboVNC/bin:/sw/pkgs/arc/usertools/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/lpp/mmfs/bin:/opt/ddn/ime/bin:/home/ymanasa/.local/bin:/home/ymanasa/bin:/home/ymanasa/turbo/opt/DOCK-dev/ucsfdock/bin"

/home/ymanasa/turbo/opt/DOCK-dev/ucsfdock/proteins/blastermaster/blastermaster.py 	  --useThinSphEleflag 	  --useThinSphLdsflag 	  --covalentResNum 31 	  --covalentResName CYS 	  --covalentResAtoms HG 	  -v

        mv INDOCK dockfiles/
        source /home/ymanasa/opt/dock_campaign_template/scripts/dock_visualize_setup.sh

