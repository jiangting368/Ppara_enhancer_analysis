



sample_alias=SRX1630255
fq=/Lustre03/data/Lixiaokai/12.GRO_seq/GRO.seq_data/2016_JBC_adiposetissue/SRX1630255.fastq.gz

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/${sample_alias}
# GRO-seq去除adapter
/Lustre01/Lixiaokai/software/miniconda3/bin/cutadapt -a CGACAGGTTCAGAGTTCTACAGTCCGACGATC -z -e 0.10 --minimum-length=32 --output=${sample_alias}.noAdapt.fastq.gz ${fq} 2>&1 >> RunCutadapt.out

# GRO-seq去除polyA
/Lustre01/Lixiaokai/software/miniconda3/bin/cutadapt -a AAAAAAAAAAAAAAAAAAAA -z -e 0.10 --minimum-length=32 --output=${sample_alias}.noPolyA.noAdapt.fastq.gz ./${sample_alias}.noAdapt.fastq.gz 2>&1 >> RunCutadapt.PolyA.out


sample_alias=SRX1630253
fq=/Lustre03/data/Lixiaokai/12.GRO_seq/GRO.seq_data/2016_JBC_adiposetissue/SRX1630253.fastq.gz

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/${sample_alias}
# GRO-seq去除adapter
/Lustre01/Lixiaokai/software/miniconda3/bin/cutadapt -a CGACAGGTTCAGAGTTCTACAGTCCGACGATC -z -e 0.10 --minimum-length=32 --output=${sample_alias}.noAdapt.fastq.gz ${fq} 2>&1 >> RunCutadapt.out

# GRO-seq去除polyA
/Lustre01/Lixiaokai/software/miniconda3/bin/cutadapt -a AAAAAAAAAAAAAAAAAAAA -z -e 0.10 --minimum-length=32 --output=${sample_alias}.noPolyA.noAdapt.fastq.gz ./${sample_alias}.noAdapt.fastq.gz 2>&1 >> RunCutadapt.PolyA.out
