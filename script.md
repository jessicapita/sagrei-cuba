# <i>Anolis sagrei</i> ddRADseq Analysis
## Author: Jessica N. Pita Aquino<br>
### Last updated: May 1, 2018

*Data was uploaded and analyzed on KITT.*
<br>
Working directory: jpita@kitt.uri.edu:/home/jpita/Final_assignment

### Uploading raw data to KITT
```
mkdir rawdata
scp -P 2292 *.fastq.gz jpita@kitt.uri.edu:/home/jpita/Final_assignment/rawdata
```

### Verify transferred files
To verify the integrity of the files...
<br>
<br>
Original source (pwd:/Volumes/Seagate-Drive_PITA/Academics/URI/BIO594-NGS/Final_assignment/data)
```
md5 *.fastq.gz > sagrei_cuba_cksum1.md5
```
Make a new directory in KITT
```
cd /home/jpita/Final_assignment/
mkdir cksum
cd cksum
mv /home/jpita/Final_assignment/rawdata/sagrei_cuba_cksum2.md5 .
```
Copy output file from original source to KITT
```
scp -P 2292 sagrei_cuba_cksum1.md5 jpita@kitt.uri.edu:/home/jpita/Final_assignment/cksum
```
Transfered data @ KITT
```
md5sum *.fastq.gz > sagrei_cuba_cksum2.md5 <br>
```
Compare
```
cksum sagrei_cuba_cksum1.md5 sagrei_cuba_cksum2.md5
```
Output (reason for this difference?)
```
3386362216 4960 sagrei_cuba_cksum1.md5
2813630852 4400 sagrei_cuba_cksum2.md5
```
### Create a environment with conda
```
conda create -n sagrei
```
To activate this environment, use:
```
source activate sagrei
```
To deactivate an active environment, use:
```
source deactivate
```
## Data Analyses
### Determine data quality using FastQC
<i> https://www.bioinformatics.babraham.ac.uk/projects/fastqc/ </i>
<b> Non-interactive FastQC </b>
To download FastQC v0.11.7 I used the following command line
```
conda install fastqc
```
Data files were uncompressed
```
gunzip *.gz
```

FastQC Analysis for each sample
```
fastqc *.fastq -o /home/jpita/Final_assignment/FastQC/
```

### Trim adaoters and low quality reads
Install Trimmomatic using conda
```
conda install trimmomatic
```
