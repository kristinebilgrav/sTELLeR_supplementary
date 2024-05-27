# Commands used to generate a truthset from HPRC de novo assemblies HG002 and HG01071

# Align assembly
awk '/^S/{print ">"$2;print $3}' $1 > $2.fa
minimap2 -ax asm5 <reference> <fasta> | samtools view -Sbh - | samtools sort -m 4G -@16 - > <out.bam>
samtools index <out.bam>

# Run SVIM-asm
svim-asm diploid $home/ <hap1> <hap2> <reference> --sample <ID>

# Extract insertions from SVIM
grep -v '#' <SVIM.vcf> | grep INS | awk  ' {print ">", $1,":", $2,":", $3, "\n", $5 }' > <INSfasta>

# Repeatmask insertions
RepeatMasker -pa 16 -qq -gff -species human <INSfasta> -dir .

# create bed file from RM output
grep <TE> <fasta.out> | awk 'OFS="\t" {print $5, $6, $7, $10, $11, $2}' > <SVIM.INS.Alu.out>

