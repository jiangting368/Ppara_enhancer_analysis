# Ppara_GROseq_pipeline

This repository contains the full workflow for analyzing GRO-seq data, including pre-processing, alignment, and generating visualization tracks.

## Workflow Overview
1. **Step1:** FastQC quality control (`scripts/01.fastqc.sh`)
2. **Step2:** Adapter and polyA trimming (`scripts/02.cutadapt.sh`)
3. **Step3:** BWA alignment to mm10 (`scripts/03.bwa.sh`)
4. **Step4:** SAM → BAM → sorted BAM → index (`scripts/04.samtools.sh`)
5. **Step5:** Convert rmdup BAM to SAM for HOMER (`scripts/05.rmdup2sam.sh`)
6. **Step6:** HOMER `makeTagDirectory` (`scripts/06.homer_tagdir.sh`)
7. **Step7:** HOMER `makeUCSCfile` (`scripts/07.homer_ucsc.sh`)
8. **Step8:** Convert bedGraph to bigWig (`scripts/08.bedGraph2bw.sh`)

## Configuration
All sample names, paths, genome reference, and software paths are in `config/conf.yml`.

## Data Availability
- Raw GRO-seq data: [GSA: GSE79168](https://ngdc.cncb.ac.cn/gsa)



