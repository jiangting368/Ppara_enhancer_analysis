# sample_alias=SRR1233872
# mm10_fai=Lustre01/Lixiaokai/genome_database/mouse_mm10/bwa_index/bwa_idx_mm10_ucsc_husilu/mm10.fa.fai

cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/HOMER.analysis
/Lustre01/Lixiaokai/software/miniconda3/bin/makeUCSCfile 2016_JBC.SRX1630253/ -o 2016_JBC.SRX1630253+.ucsc.bedGraph -strand +
/Lustre01/Lixiaokai/software/miniconda3/bin/makeUCSCfile 2016_JBC.SRX1630253/ -o 2016_JBC.SRX1630253-.ucsc.bedGraph -strand -


cd /Lustre03/data/Lixiaokai/12.GRO_seq/2016_JBC_adiposetissue/HOMER.analysis
/Lustre01/Lixiaokai/software/miniconda3/bin/makeUCSCfile 2016_JBC.SRX1630255/ -o 2016_JBC.SRX1630255+.ucsc.bedGraph -strand +
/Lustre01/Lixiaokai/software/miniconda3/bin/makeUCSCfile 2016_JBC.SRX1630255/ -o 2016_JBC.SRX1630255-.ucsc.bedGraph -strand -

