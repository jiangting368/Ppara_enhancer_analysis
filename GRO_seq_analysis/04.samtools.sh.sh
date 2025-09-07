


sample_alias=SRX1630255
mm10_fai=Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa.fai

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2014.Genes_Development/${sample_alias}
#bwa软件比对基因组

samtools view -b -t ${mm10_fai} -S ${sample_alias}.alignedFile.sam > ./${sample_alias}.unsorted.bam

samtools sort ./${sample_alias}.unsorted.bam -o ${sample_alias}.sorted.bam

samtools index ${sample_alias}.sorted.bam

sample_alias=SRX1630253
mm10_fai=Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa.fai

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2014.Genes_Development/${sample_alias}
#bwa软件比对基因组

samtools view -b -t ${mm10_fai} -S ${sample_alias}.alignedFile.sam > ./${sample_alias}.unsorted.bam

samtools sort ./${sample_alias}.unsorted.bam -o ${sample_alias}.sorted.bam

samtools index ${sample_alias}.sorted.bam