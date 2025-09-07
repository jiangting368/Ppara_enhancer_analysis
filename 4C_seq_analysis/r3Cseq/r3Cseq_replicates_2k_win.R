args<-commandArgs(TRUE)
work_dir<-args[1]
organismName<-args[2] # organismName
vp_chr<-args[3]
f_primer<-args[4]
r_primer<-args[5]
restrictionEnzyme<-args[6]
exp_Bam1<-args[7]
exp_Bam2<-args[8]
ctr_Bam1<-args[9]
ctr_Bam2<-args[10]
exp_Label1<-args[11]
exp_Label2<-args[12]
ctr_Label1<-args[13]
ctr_Label2<-args[14]


# ## example in http://r3cseq.genereg.net/Site/index.html

library(r3Cseq)
library(Biostrings)
library(BSgenome.Mmusculus.UCSC.mm10)


# set project
myBatch_obj<-new("r3CseqInBatch",
                 organismName=organismName,
                 restrictionEnzyme=restrictionEnzyme,
                 isControlInvolved=T,
                 bamFilesDirectory=work_dir,
                 viewpoint_chromosome=vp_chr,
                 viewpoint_primer_forward=f_primer,
                 viewpoint_primer_reverse=r_primer,
                 BamExpFiles=c(exp_Bam1,exp_Bam2),
                 BamContrFiles=c(ctr_Bam1,ctr_Bam2), # if isControlInvolved=T, use this
                 expBatchLabel=c(exp_Label1,exp_Label2),
                 contrBatchLabel=c(ctr_Label1,ctr_Label2)
                 )



# load aligned reads from the BAM files
getBatchRawReads(myBatch_obj)


# read counting functions
# 1) counting the number of reads per restriction fragment
# getBatchReadCountPerRestrictionFragment(myBatch_obj)
# 2) counting the number of reads per non-overlapping window size
getBatchReadCountPerWindow(myBatch_obj, windowSize=2e3) # windowSize(20Kb~100Kb,default 20Kb)


# to calculate the reads per million per restriction fragment (RPM)
calculateBatchRPM(myBatch_obj)


# After normalization, the getBatchInteractions function can be used 
# to assign p and q-values (both for in cis and trans interactions) to 
# identify candidate interaction regions in both datasets. r3Cseq further 
# provides two ways of determine significant interactions among the biological replicates: 
  # 1) all identified interactions from the individual replicates are combined using the 
  # ¡°union¡± parameter as input method
# getBatchInteractions(myBatch_obj) # default parameter is ¡°union¡±
  # 2) only the identified interactions presented in all individual replicates are combined
  # using the ¡°intersection¡± parameter as input method.
getBatchInteractions(myBatch_obj,method="intersection")


# export all of the identified interactions to text file format
exportBatchInteractions2text(myBatch_obj)


# visualization of the identified interactions among replicates
pdf(file="BatchInteractionGenome.pdf",width=10,height=7)
plotOverviewInteractions(myBatch_obj)
dev.off()

pdf(file="BatchInteractionNearViewpoint.pdf",width=10,height=7)
plotInteractionsNearViewpoint(myBatch_obj) 
dev.off()
# mind for :
	# In min(x) : no non-missing arguments to min; returning Inf 
	# In max(x) : no non-missing arguments to max; returning -Inf

pdf(file=paste("Batch",vp_chr,"pdf",sep='.'),width=10,height=7)
plotInteractionsPerChromosome(myBatch_obj,vp_chr)
dev.off()


