#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex19
#SBATCH --output=example_19.log
#
rm -rf example_19
rm errors.png
time Rscript example_19.R
zip -r pirouette_example_19.zip example_19 example_19.R scripts errors.png

