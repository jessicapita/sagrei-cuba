# Double Digest RADseq: Geographic Structure in the Cuban Brown Anole (<i>Anolis sagrei</i>)
## Author: Jessica N. Pita Aquino<br>
### Last updated: May 9, 2018

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


## Quality Control and Trimming
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
source deactivate sagrei
```

### Determine data quality using FastQC
https://www.bioinformatics.babraham.ac.uk/projects/fastqc/
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

### Summarize FastQC results using MultiQC
https://github.com/ewels/MultiQC
```
pip install multiqc
conda install -c bioconda multiqc
multiqc -p . #the -p/--export command line flag allows you to save the generated plots
```
Export MultiQC files to 
system
```
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC/multiqc_plots/pdf/mqc_* .
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC/multiqc_report.html .
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC/multiqc_data/* .
```

### Trim adapters and low quality reads
Make a new directory and link fastq files
```
mkdir trim
ln -s /home/jpita/Final_assignment/data/*.fastq .
```
Trimmomatic Version 0.36 was downloaded as binary and transfered from local computer to KITT
```
scp -rp -P 2292 trimmomatic-0.36 jpita@kitt.uri.edu:/home/jpita/Final_assignment/trim 
ln -s /home/jpita/Final_assignment/trim/trimmomatic-0.36/trimmomatic-0.36.jar .
ln -s /home/jpita/Final_assignment/trim/trimmomatic-0.36/adapters/* .
```
Trim adapters (TrueSeq3-PE-2) and low quality reads (quality threshold: 20) for each sample (e.g. MAR2990)
```
java -jar trimmomatic-0.36.jar PE -threads 20 -phred33 -trimlog MAR2990.trimlog MAR2990_R1_.fastq.gz MAR2990_R2_.fastq.gz MAR2990_trim_R1_.fastq.gz MAR2990_unpaired_R1_.fastq.gz MAR2990_trim_R2_.fastq.gz MAR2990_unpaired_R2_.fastq.gz ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:3:15 MINLEN:36 > MAR2990.trimSTDOUT
```

### Rerun FastQC/MultiQC for trimmed reads
```
fastqc *_trim_R*_.fastq.gz -o /home/jpita/Final_assignment/FastQC_trim/
multiqc -p .
```
Export MultiQC files to local system
```
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC_trim/multiqc_plots/pdf/mqc_* .
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC_trim/multiqc_report.html .
scp -P 2292 jpita@kitt.uri.edu:/home/jpita/Final_assignment/FastQC_trim/multiqc_data/* .
```
Pre- and post-trimming via MultiQC (**include images**)

## <i>De novo</i> alignment
Since *Anolis sagrei*'s reference genome is not published, I did a *De novo* Assembly using **dDocent** (http://ddocent.com). 
Install dDocent in conda environment (i.e. sagrei)
```
conda install ddocent
```
Make a new directory for assembly and import raw gzipped FASTQ files
```
mkdir ddocent
scp -P 2292 *.fastq.gz jpita@kitt.uri.edu:/home/jpita/Final_assignment/ddocent
```
Rename raw reads to a specific convention. Files **must** contain a locality/population ID, as well as an individual ID, these separated by a single _ <br>
For example: Pop1_Sample1.F.fq.gz Pop1_Sample1.R.fq.gz -> CAB_2918.F.fq.gz CAB_2918.R.fq.gz
```
mv mv CAB2918_R1_.fastq.gz CAB_2918.F.fq.gz
mv CAB2918_R2_.fastq.gz CAB_2918.R.fq.gz
```
Run dDocent and specify parameters for analyses
```
dDocent
dDocent 2.2.25 

Contact jpuritz@gmail.com with any problems 

 
Checking for required software

All required software is installed!

dDocent run started Wed May 9 10:32:00 EDT 2018 

40 individuals are detected. Is this correct? Enter yes or no and press [ENTER]
yes
Proceeding with 40 individuals
dDocent detects 80 processors available on this system.
Please enter the maximum number of processors to use for this analysis.
32
dDocent detects 503G maximum memory available on this system.
Please enter the maximum memory to use for this analysis. The size can be postfixed with 
K, M, G, T, P, k, m, g, t, or p which would multiply the size with 1024, 1048576, 1073741824, 
1099511627776, 1125899906842624, 1000, 1000000, 1000000000, 1000000000000, or 1000000000000000 respectively.
For example, to limit dDocent to ten gigabytes, enter 10G or 10g
0

Do you want to quality trim your reads?
Type yes or no and press [ENTER]?
yes

Do you want to perform an assembly?
Type yes or no and press [ENTER].
yes
What type of assembly would you like to perform?  Enter SE for single end, PE for paired-end, RPE for paired-end sequencing for RAD protocols with random shearing, or OL for paired-end sequencing that has substantial overlap.
Then press [ENTER]
PE
Reads will be assembled with Rainbow
CD-HIT will cluster reference sequences by similarity. The -c parameter (% similarity to cluster) may need to be changed for your taxa.
Would you like to enter a new c parameter now? Type yes or no and press [ENTER]
no
Proceeding with default 0.9 value.
Do you want to map reads?  Type yes or no and press [ENTER]
yes
BWA will be used to map reads.  You may need to adjust -A -B and -O parameters for your taxa.
Would you like to enter a new parameters now? Type yes or no and press [ENTER]
no
Proceeding with default values for BWA read mapping.
Do you want to use FreeBayes to call SNPs?  Please type yes or no and press [ENTER]
yes

Please enter your email address.  dDocent will email you when it is finished running.
Don't worry; dDocent has no financial need to sell your email address to spammers.
jessicapita@uri.edu


dDocent will require input during the assembly stage.  Please wait until prompt says it is safe to move program to the background.
Trimming reads and simultaneously assembling reference sequences


                       Number of Unique Sequences with More than X Coverage (Counted within individuals)

  5.5e+06 ++----------+-----------+----------+-----------+-----------+-----------+----------+-----------+----------++
          *           +           +          +           +           +           +          +           +           +
    5e+06 +*                                                                                                       ++
          |*                                                                                                        |
          | *                                                                                                       |
  4.5e+06 ++ *                                                                                                     ++
          |  *                                                                                                      |
    4e+06 ++  *                                                                                                    ++
          |    *                                                                                                    |
  3.5e+06 ++   *                                                                                                   ++
          |     ***                                                                                                 |
    3e+06 ++       *                                                                                               ++
          |         **                                                                                              |
          |                                                                                                         |
  2.5e+06 ++          ***                                                                                          ++
          |              **                                                                                         |
    2e+06 ++               *                                                                                       ++
          |                 ******                                                                                  |
  1.5e+06 ++                      *****                                                                            ++
          |                            ************                                                                 |
          |                                        ************                                                     |
    1e+06 ++                                                   ************************                            ++
          +           +           +          +           +           +           +     ******************************
   500000 ++----------+-----------+----------+-----------+-----------+-----------+----------+-----------+----------++
          2           4           6          8           10          12          14         16          18          20
                                                           Coverage

Please choose data cutoff.  In essence, you are picking a minimum (within individual) coverage level for a read (allele) to be used in the reference assembly
2
 

                                Number of Unique Sequences present in more than X Individuals

  600000 ++----------+-----------+-----------+-----------+----------+-----------+-----------+-----------+----------++
         *           +           +           +           +          +           +           +           +           +
         |*                                                                                                         |
         |*                                                                                                         |
  500000 ++*                                                                                                       ++
         |  *                                                                                                       |
         |  *                                                                                                       |
         |   *                                                                                                      |
  400000 ++   *                                                                                                    ++
         |    *                                                                                                     |
         |     **                                                                                                   |
  300000 ++      *                                                                                                 ++
         |        **                                                                                                |
         |          *                                                                                               |
         |                                                                                                          |
  200000 ++          *****                                                                                         ++
         |                *                                                                                         |
         |                 *****                                                                                    |
         |                      *                                                                                   |
  100000 ++                      ******                                                                            ++
         |                             ******                                                                       |
         |                                   ************                                                           |
         +           +           +           +           *****************************      +           +           +
       0 ++----------+-----------+-----------+-----------+----------+-----------+-----*******************************
         2           4           6           8           10         12          14          16          18          20
                                                    Number of Individuals

Please choose data cutoff.  Pick point right before the assymptote. A good starting cutoff might be 10% of the total number of individuals
2
At this point, all configuration information has been entered and dDocent may take several hours to run.
It is recommended that you move this script to a background operation and disable terminal input and output.
All data and logfiles will still be recorded.
```
Put process to a background using
```
^Z
bg
disown -h
```
## Filtering VCF files with dDocent
http://ddocent.com

## Calculate pairwise Fst

## R packages (pcadapt, adegenet) and STRUCTURE
### Generate PCA (individual variation)
### DAPC (individual variation and possible number of clusters)
### STRUCTURE plots (allele frequencies to generate clusters)
