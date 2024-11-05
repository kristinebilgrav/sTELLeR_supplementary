# sTELLeR_supplementary
Contains supplementary scripts and files used to benchmark and test sTELLeR (https://github.com/kristinebilgrav/sTELLeR)

The files include fasta sequences (TEsequences.fa) of several L1s (L1HS, L1preTa, L1PA2, L1PA6, L1) and Alus (AluJb, AluY, AluJr, AluSp, AluSq, AluJo, AluYb8, AluYa5, AluSx) which can be used in running sTELLeR as well as another fasta file (TEsequences_SVA_HERV_ALU_L1.fasta) also containing HERV and SVA sequences. 
It containes a small simulated bam file containing TE insertions and its reference file (masked chr22 with removed masked parts - zip file. Need to use this for correct reference base. Unzip with tar -xvzf to use) that can be used for testing. A txt file with correct TE positions is provided.
The TruthSet folder and containing files are scripts used to generate the truthset. 

Example run of https://github.com/kristinebilgrav/sTELLeR using the above test data:

Download all files in repository and run: 

    python steller/steller.py --ref HG38_chr22.fa --TE_fasta fasta/TEfastasequences.fa --bam testdata.bam --sr 4 --style pb -o testdata_res -mr 80
    
Results will be given in testdata_res_repeats.vcf and correct results can be verified by comparing to the provided file testbamTRUTH.txt - a total of 7 variants should be identified.
