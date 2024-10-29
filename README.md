# sTELLeR_supplementary
Contains supplementary scripts and files used to benchmark sTELLeR (https://github.com/kristinebilgrav/sTELLeR)

Also containes a small simulated bam file containing TE insertions and a reference file that can be used for testing. A txt file with correct TE positions is provided.

Example run of https://github.com/kristinebilgrav/sTELLeR using test data:

Download all files in repository and run: 

    python steller/steller.py --ref HG38_masked_noNN_chr22.fa --TE_fasta fasta/TEfastasequences.fa --bam testdata.bam --sr 4 --style pb -o testdata_res -mr 80
    
Results will be given in testdata_res_repeats.vcf and correct results can be verified by comparing to the provided file testbamTRUTH.txt - a total of 7 variants should be identified.
