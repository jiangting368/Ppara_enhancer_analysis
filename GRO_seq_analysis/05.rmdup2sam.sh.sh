# sample_alias=SRR1233872
# mm10_fai=Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa.fai

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2014.Genes_Development/HOMER.analysis

samtools view -S SRX1630255.stated.sor.rmdup.bam -o SRX1630255.stated.sor.rmdup.sam

samtools view -S SRX1630253.stated.sor.rmdup.bam -o SRX1630253.stated.sor.rmdup.sam