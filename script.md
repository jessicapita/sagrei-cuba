# <i>Anolis sagrei</i> ddRADseq Analysis
## Author: Jessica N. Pita Aquino<br>
### Last updated: May 2, 2018

*Data was uploaded and analyzed on KITT.*
<br>
Working directory: jpita@kitt.uri.edu:/home/jpita/Final_assignment

### Uploading data to KITT
```
mkdir data
scp -P 2292 *.fastq.gz jpita@kitt.uri.edu:/home/jpita/Final_assignment/data
```

### Verify integrity of the files using cksum v8.22
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
mkdir cksum_original
```
Copy output file from original source to KITT
```
scp -P 2292 sagrei_cuba_cksum1.md5 jpita@kitt.uri.edu:/home/jpita/Final_assignment/cksum_original
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
Check MD5 checksums
```
md5sum -c sagrei_cuba_cksum2.md5
```
Output
```
CAB2918_R1_.fastq.gz: OK
CAB2918_R2_.fastq.gz: OK
CAB2919_R1_.fastq.gz: OK
CAB2919_R2_.fastq.gz: OK
CAB2920_R1_.fastq.gz: OK
CAB2920_R2_.fastq.gz: OK
CAB2921_R1_.fastq.gz: OK
CAB2921_R2_.fastq.gz: OK
CAB2922_R1_.fastq.gz: OK
CAB2922_R2_.fastq.gz: OK
CAB2923_R1_.fastq.gz: OK
CAB2923_R2_.fastq.gz: OK
CAB2924_R1_.fastq.gz: OK
CAB2924_R2_.fastq.gz: OK
CAB2925_R1_.fastq.gz: OK
CAB2925_R2_.fastq.gz: OK
CAB2927_R1_.fastq.gz: OK
CAB2927_R2_.fastq.gz: OK
CAB2931_R1_.fastq.gz: OK
CAB2931_R2_.fastq.gz: OK
ESM2880_R1_.fastq.gz: OK
ESM2880_R2_.fastq.gz: OK
ESM2882_R1_.fastq.gz: OK
ESM2882_R2_.fastq.gz: OK
ESM2883_R1_.fastq.gz: OK
ESM2883_R2_.fastq.gz: OK
ESM2886_R1_.fastq.gz: OK
ESM2886_R2_.fastq.gz: OK
ESM2887_R1_.fastq.gz: OK
ESM2887_R2_.fastq.gz: OK
ESM2888_R1_.fastq.gz: OK
ESM2888_R2_.fastq.gz: OK
ESM2893_R1_.fastq.gz: OK
ESM2893_R2_.fastq.gz: OK
ESM2895_R1_.fastq.gz: OK
ESM2895_R2_.fastq.gz: OK
ESM2896_R1_.fastq.gz: OK
ESM2896_R2_.fastq.gz: OK
ESM2897_R1_.fastq.gz: OK
ESM2897_R2_.fastq.gz: OK
MAR2971_R1_.fastq.gz: OK
MAR2971_R2_.fastq.gz: OK
MAR2972_R1_.fastq.gz: OK
MAR2972_R2_.fastq.gz: OK
MAR2973_R1_.fastq.gz: OK
MAR2973_R2_.fastq.gz: OK
MAR2974_R1_.fastq.gz: OK
MAR2974_R2_.fastq.gz: OK
MAR2975_R1_.fastq.gz: OK
MAR2975_R2_.fastq.gz: OK
MAR2977_R1_.fastq.gz: OK
MAR2977_R2_.fastq.gz: OK
MAR2979_R1_.fastq.gz: OK
MAR2979_R2_.fastq.gz: OK
MAR2980_R1_.fastq.gz: OK
MAR2980_R2_.fastq.gz: OK
MAR2981_R1_.fastq.gz: OK
MAR2981_R2_.fastq.gz: OK
MAR2990_R1_.fastq.gz: OK
MAR2990_R2_.fastq.gz: OK
SOR3003_R1_.fastq.gz: OK
SOR3003_R2_.fastq.gz: OK
SOR3005_R1_.fastq.gz: OK
SOR3005_R2_.fastq.gz: OK
SOR3006_R1_.fastq.gz: OK
SOR3006_R2_.fastq.gz: OK
SOR3007_R1_.fastq.gz: OK
SOR3007_R2_.fastq.gz: OK
SOR3011_R1_.fastq.gz: OK
SOR3011_R2_.fastq.gz: OK
SOR3012_R1_.fastq.gz: OK
SOR3012_R2_.fastq.gz: OK
SOR3013_R1_.fastq.gz: OK
SOR3013_R2_.fastq.gz: OK
SOR3017_R1_.fastq.gz: OK
SOR3017_R2_.fastq.gz: OK
SOR3020_R1_.fastq.gz: OK
SOR3020_R2_.fastq.gz: OK
SOR3021_R1_.fastq.gz: OK
SOR3021_R2_.fastq.gz: OK
```
### Count number of reads
```
grep -c "@E" *.fastq
```
Output
```
CAB2918_R1_.fastq:1789072
CAB2918_R2_.fastq:1789072
CAB2919_R1_.fastq:1916238
CAB2919_R2_.fastq:1916238
CAB2920_R1_.fastq:1507516
CAB2920_R2_.fastq:1507516
CAB2921_R1_.fastq:1747494
CAB2921_R2_.fastq:1747494
CAB2922_R1_.fastq:1640327
CAB2922_R2_.fastq:1640327
CAB2923_R1_.fastq:1540557
CAB2923_R2_.fastq:1540557
CAB2924_R1_.fastq:1452751
CAB2924_R2_.fastq:1452751
CAB2925_R1_.fastq:1463410
CAB2925_R2_.fastq:1463410
CAB2927_R1_.fastq:1746868
CAB2927_R2_.fastq:1746868
CAB2931_R1_.fastq:1594334
CAB2931_R2_.fastq:1594334
ESM2880_R1_.fastq:3027424
ESM2880_R2_.fastq:3027424
ESM2882_R1_.fastq:4143177
ESM2882_R2_.fastq:4143177
ESM2883_R1_.fastq:3072671
ESM2883_R2_.fastq:3072671
ESM2886_R1_.fastq:2340994
ESM2886_R2_.fastq:2340994
ESM2887_R1_.fastq:2828012
ESM2887_R2_.fastq:2828012
ESM2888_R1_.fastq:1893539
ESM2888_R2_.fastq:1893539
ESM2893_R1_.fastq:2873592
ESM2893_R2_.fastq:2873592
ESM2895_R1_.fastq:2503720
ESM2895_R2_.fastq:2503720
ESM2896_R1_.fastq:2281056
ESM2896_R2_.fastq:2281056
ESM2897_R1_.fastq:2041152
ESM2897_R2_.fastq:2041152
MAR2971_R1_.fastq:2815906
MAR2971_R2_.fastq:2815906
MAR2972_R1_.fastq:2076946
MAR2972_R2_.fastq:2076946
MAR2973_R1_.fastq:2879284
MAR2973_R2_.fastq:2879284
MAR2974_R1_.fastq:1747486
MAR2974_R2_.fastq:1747486
MAR2975_R1_.fastq:3915677
MAR2975_R2_.fastq:3915677
MAR2977_R1_.fastq:1567950
MAR2977_R2_.fastq:1567950
MAR2979_R1_.fastq:3681984
MAR2979_R2_.fastq:3681984
MAR2980_R1_.fastq:1846271
MAR2980_R2_.fastq:1846271
MAR2981_R1_.fastq:2843959
MAR2981_R2_.fastq:2843959
MAR2990_R1_.fastq:2795765
MAR2990_R2_.fastq:2795765
SOR3003_R1_.fastq:4125270
SOR3003_R2_.fastq:4125270
SOR3005_R1_.fastq:3147030
SOR3005_R2_.fastq:3147030
SOR3006_R1_.fastq:3545789
SOR3006_R2_.fastq:3545789
SOR3007_R1_.fastq:4395339
SOR3007_R2_.fastq:4395339
SOR3011_R1_.fastq:2005886
SOR3011_R2_.fastq:2005886
SOR3012_R1_.fastq:2794793
SOR3012_R2_.fastq:2794793
SOR3013_R1_.fastq:3068654
SOR3013_R2_.fastq:3068654
SOR3017_R1_.fastq:2095695
SOR3017_R2_.fastq:2095695
SOR3020_R1_.fastq:2564327
SOR3020_R2_.fastq:2564327
SOR3021_R1_.fastq:3362598
SOR3021_R2_.fastq:3362598
```


## Data Analyses
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

### Determine data quality using FastQC
<i> https://www.bioinformatics.babraham.ac.uk/projects/fastqc/ </i>
### <br>Non-interactive FastQC </br>
<br> To download FastQC v0.11.7 I used the following command line </br>
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

### Summarize FastQC results using Multiqc
https://github.com/ewels/MultiQC
```
pip install multiqc
conda install -c bioconda multiqc
multiqc .
```

### Trim adapters and low quality reads
Install Trimmomatic using conda
```
conda install trimmomatic
```
Make a new directory and link fastq files
```
mkdir trim
ln -s /home/jpita/Final_assignment/data/*.fastq .


```
```
java -jar trimmomatic-0.36.jar PE -phred33 *_R1_.fastq *_R2_.fastq *_R1_paired.fastq *_R1_unpaired.fastq *_R2_paired.fastq *_R2_unpaired.fastq ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:20 MINLEN:36 
```








### Put process into the background using
```
^Z
bg
disown -a
```
