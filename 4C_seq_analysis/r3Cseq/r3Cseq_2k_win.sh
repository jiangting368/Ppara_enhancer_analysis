dir=/Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara
org=mm10
chr=chr15
f=CCACAGGTATGAGGCTGATC
r=GAGGCTGCTTACGTAGATGC
enz=DpnII
exp_Bam1=/Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara/N_Ppara_B1.bam
exp_Bam2=/Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara/N_Ppara_B2.bam
ctr_Bam1=/Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara/Ppara_e1.bam
ctr_Bam2=/Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara/Ppara_e2.bam
exp_Labe2_1=N_Ppara_B1
exp_Labe2_2=N_Ppara_B2
ctr_Labe1_1=Ppara_e1
ctr_Labe1_2=Ppara_e2

cd /Lustre03/data/Lixiaokai/04.suduo/4C_seq/r3Cseq/window_2k_bin/Ppara
/Lustre01/Lixiaokai/software/miniconda3/bin/Rscript r3Cseq_replicates_2k_win.R $dir $org $chr $f $r $enz $exp_Bam1 $exp_Bam2 $ctr_Bam1 $ctr_Bam2 $exp_Labe2_1 $exp_Labe2_2 $ctr_Labe1_1 $ctr_Labe1_2
