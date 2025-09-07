

sample_alias=SRX1630255
cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue
mkdir -p ${sample_alias} && cd ${sample_alias}
mkdir qcOutdir  # 新建qcOutdir文件夹
/Lustre01/Lixiaokai/software/FastQC/fastqc -t 4 /Lustre03/data/Lixiaokai/12.GRO_seq/GRO.seq_data/2016_JBC_adiposetissue/${sample_alias}.fastq.gz  -o ./qcOutdir   
# -t 表示线程数，-o 表示输出路径，-f表示输入文件格式，支持bam，sam，fastq文件格式。


sample_alias=SRX1630253
cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue
mkdir -p ${sample_alias} && cd ${sample_alias}
mkdir qcOutdir  # 新建qcOutdir文件夹
/Lustre01/Lixiaokai/software/FastQC/fastqc -t 4 /Lustre03/data/Lixiaokai/12.GRO_seq/GRO.seq_data/2016_JBC_adiposetissue/${sample_alias}.fastq.gz  -o ./qcOutdir   
# -t 表示线程数，-o 表示输出路径，-f表示输入文件格式，支持bam，sam，fastq文件格式。

