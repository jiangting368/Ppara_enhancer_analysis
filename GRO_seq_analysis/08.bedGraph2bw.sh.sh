# sample_alias=SRR1233872
mm10_fai=/Lustre01/Lixiaokai/genome_database/mouse_mm10/mm10.fa.fai


cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/HOMER.analysis
/Lustre01/Lixiaokai/software/miniconda3/bin/bedGraphToBigWig ./2016_JBC.SRX1630253-.ucsc.bedGraph ${mm10_fai} SRX1630253-.bw
/Lustre01/Lixiaokai/software/miniconda3/bin/bedGraphToBigWig ./2016_JBC.SRX1630253+.ucsc.bedGraph ${mm10_fai} SRX1630253+.bw


cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/HOMER.analysis
/Lustre01/Lixiaokai/software/miniconda3/bin/bedGraphToBigWig ./2016_JBC.SRX1630255-.ucsc.bedGraph ${mm10_fai} SRX1630255-.bw
/Lustre01/Lixiaokai/software/miniconda3/bin/bedGraphToBigWig ./2016_JBC.SRX1630255+.ucsc.bedGraph ${mm10_fai} SRX1630255+.bw

