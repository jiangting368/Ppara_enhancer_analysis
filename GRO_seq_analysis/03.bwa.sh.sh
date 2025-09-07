

sample_alias=SRX1630255
mm10_fa=/Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/${sample_alias}
#bwa软件比对基因组
bwa aln -n 2 -l 32 -t 4 ${mm10_fa}  ${sample_alias}.noPolyA.noAdapt.fastq.gz > ./${sample_alias}.alignedFile.sai
# A maximum of two mismatches (-n) and a subsequence seed length of 32 bp (-l) are used as parameters for alignment in this step.

bwa samse ${mm10_fa} ./${sample_alias}.alignedFile.sai ./${sample_alias}.noPolyA.noAdapt.fastq.gz > ${sample_alias}.alignedFile.sam


sample_alias=SRX1630253
mm10_fa=/Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/${sample_alias}
#bwa软件比对基因组
bwa aln -n 2 -l 32 -t 4 ${mm10_fa}  ${sample_alias}.noPolyA.noAdapt.fastq.gz > ./${sample_alias}.alignedFile.sai
# A maximum of two mismatches (-n) and a subsequence seed length of 32 bp (-l) are used as parameters for alignment in this step.

bwa samse ${mm10_fa} ./${sample_alias}.alignedFile.sai ./${sample_alias}.noPolyA.noAdapt.fastq.gz > ${sample_alias}.alignedFile.sam

