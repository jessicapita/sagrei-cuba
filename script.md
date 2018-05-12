# Double Digest RADseq: Geographic Structure in the Cuban Brown Anole (<i>Anolis sagrei</i>)
## Author: Jessica N. Pita Aquino<br>
### Last updated: May 11, 2018

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
## <i>De novo</i> alignment
Since *Anolis sagrei*'s reference genome is not published, I did a *De novo* Assembly using **dDocent** (http://ddocent.com) 
<br>
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
mv CAB2918_R1_.fastq.gz CAB_2918.F.fq.gz
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
## SNP filtering with VCFtools
Following a script by J. Puritz (https://github.com/jpuritz/dDocent/blob/master/tutorials/Filtering%20Tutorial.md)
```
conda install vcftools
```
Since VCF files (dDocent output from previous step) have a lot of erroneous variant calls and variants that are only present in one individual, we need to filter these SNPs <br>
Copy and look at the data
```
mkdir SNPfiltering
cp /home/jpita/Final_assignment/ddocent/raw.vcf/*vcf .
cp /home/jpita/Final_assignment/ddocent/Final.recode.vcf .
ll
```
Output
```
total 4651180
-rw-r--r--+ 1 jpita bio594 1691961277 May 11 06:47 Final.recode.vcf
-rw-r--r--+ 1 jpita bio594   88125681 May 10 11:52 raw.01.vcf
-rw-r--r--+ 1 jpita bio594   85515047 May 10 11:52 raw.02.vcf
-rw-r--r--+ 1 jpita bio594   70722796 May 10 11:52 raw.03.vcf
-rw-r--r--+ 1 jpita bio594   69333739 May 10 11:52 raw.04.vcf
-rw-r--r--+ 1 jpita bio594   61812899 May 10 11:52 raw.05.vcf
-rw-r--r--+ 1 jpita bio594   64658418 May 10 11:52 raw.06.vcf
-rw-r--r--+ 1 jpita bio594   64315319 May 10 11:52 raw.07.vcf
-rw-r--r--+ 1 jpita bio594   66461267 May 10 11:52 raw.08.vcf
-rw-r--r--+ 1 jpita bio594   66454283 May 10 11:52 raw.09.vcf
-rw-r--r--+ 1 jpita bio594   67738346 May 10 11:52 raw.10.vcf
-rw-r--r--+ 1 jpita bio594   68231772 May 10 11:52 raw.11.vcf
-rw-r--r--+ 1 jpita bio594   67673550 May 10 11:52 raw.12.vcf
-rw-r--r--+ 1 jpita bio594   70335860 May 10 11:52 raw.13.vcf
-rw-r--r--+ 1 jpita bio594   72051911 May 10 11:52 raw.14.vcf
-rw-r--r--+ 1 jpita bio594   80778681 May 10 11:52 raw.15.vcf
-rw-r--r--+ 1 jpita bio594   76046223 May 10 11:52 raw.16.vcf
-rw-r--r--+ 1 jpita bio594   78084094 May 10 11:52 raw.17.vcf
-rw-r--r--+ 1 jpita bio594   85363363 May 10 11:52 raw.18.vcf
-rw-r--r--+ 1 jpita bio594   88208751 May 10 11:52 raw.19.vcf
-rw-r--r--+ 1 jpita bio594   91197436 May 10 11:52 raw.20.vcf
-rw-r--r--+ 1 jpita bio594   95409646 May 10 11:52 raw.21.vcf
-rw-r--r--+ 1 jpita bio594   93721374 May 10 11:52 raw.22.vcf
-rw-r--r--+ 1 jpita bio594  103638713 May 10 11:52 raw.23.vcf
-rw-r--r--+ 1 jpita bio594  108482553 May 10 11:52 raw.24.vcf
-rw-r--r--+ 1 jpita bio594  112221869 May 10 11:52 raw.25.vcf
-rw-r--r--+ 1 jpita bio594  126576497 May 10 11:52 raw.26.vcf
-rw-r--r--+ 1 jpita bio594  131839436 May 10 11:52 raw.27.vcf
-rw-r--r--+ 1 jpita bio594  143322770 May 10 11:52 raw.28.vcf
-rw-r--r--+ 1 jpita bio594  157319711 May 10 11:52 raw.29.vcf
-rw-r--r--+ 1 jpita bio594  166116271 May 10 11:52 raw.30.vcf
-rw-r--r--+ 1 jpita bio594  171316366 May 10 11:52 raw.31.vcf
-rw-r--r--+ 1 jpita bio594  177711865 May 10 11:52 raw.32.vcf
```
To determine the raw number of SNP calls
```
cat Final.recode.vcf | grep -v "#" | wc -l
```
Output
```
581573
```
Apply a three step filter <br>
Keep variants successfully genotypes in 90% of individuals (completed in previous step with dDocent), a minimum quality score of 30, and a minor allele frequency 5%
```
vcftools --vcf Final.recode.vcf --maf 0.05  --minQ 30 --recode --recode-INFO-all --out raw.maf5mq30
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf Final.recode.vcf
	--recode-INFO-all
	--maf 0.05
	--minQ 30
	--out raw.maf5mq30
	--recode

After filtering, kept 40 out of 40 Individuals
Outputting VCF file...
After filtering, kept 201327 out of a possible 581573 Sites
Run Time = 47.00 seconds
```
The next filter is a minimum depth for a genotype call and a minimum mean depth. This command will recode genotypes that have less than 3 reads
```
vcftools --vcf raw.maf5mq30.recode.vcf --minDP 3 --recode --recode-INFO-all --out raw.maf5mq30dp3 
```
Output
```
VCFtools - 0.1.15
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf raw.maf5mq30.recode.vcf
	--recode-INFO-all
	--minDP 3
	--out raw.maf5mq30dp3
	--recode

After filtering, kept 40 out of 40 Individuals
Outputting VCF file...
After filtering, kept 201327 out of a possible 201327 Sites
Run Time = 30.00 seconds
```
Verify potential errors
```
curl -L -O https://github.com/jpuritz/dDocent/raw/master/scripts/ErrorCount.sh
chmod +x ErrorCount.sh 
./ErrorCount.sh raw.maf5mq30dp3.recode.vcf 
```
Output
```
This script counts the number of potential genotyping errors due to low read depth
It report a low range, based on a 50% binomial probability of observing the second allele in a heterozygote and a high range based on a 25% probability.
Potential genotyping errors from genotypes from only 1 read range from 0.0 to 0.0
Potential genotyping errors from genotypes from only 2 reads range from 0.0 to 0.0
Potential genotyping errors from genotypes from only 3 reads range from 21713.875 to 72958.62
Potential genotyping errors from genotypes from only 4 reads range from 10902.6875 to 55123.988
Potential genotyping errors from genotypes from only 5 reads range from 5292.53125 to 40138
40 number of individuals and 201327 equals 8053080 total genotypes
Total genotypes not counting missing data 8052965
Total potential error rate is between 0.004707470323042507 and 0.020889275937496316
SCORCHED EARTH SCENARIO
WHAT IF ALL LOW DEPTH HOMOZYGOTE GENOTYPES ARE ERRORS?????
The total SCORCHED EARTH error rate is 0.06426390776564905.
```
Remove individuals that did not sequence well by assessing individual levels of missing data
```
vcftools --vcf raw.maf5mq30dp3.recode.vcf --missing-indv
```
Output
```
VCFtools - 0.1.15
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf raw.maf5mq30dp3.recode.vcf
	--missing-indv

After filtering, kept 40 out of 40 Individuals
Outputting Individual Missingness
After filtering, kept 201327 out of a possible 201327 Sites
Run Time = 3.00 seconds
```
Examine output
```
cat out.imiss
```
```
INDV	N_DATA	N_GENOTYPES_FILTERED	N_MISS	F_MISS
CAB_2918	201327	0	18332	0.0910558
CAB_2919	201327	0	17923	0.0890243
CAB_2920	201327	0	23516	0.116805
CAB_2921	201327	0	16956	0.0842212
CAB_2922	201327	0	20853	0.103578
CAB_2923	201327	0	17960	0.0892081
CAB_2924	201327	0	16577	0.0823387
CAB_2925	201327	0	21267	0.105634
CAB_2927	201327	0	20232	0.100493
CAB_2931	201327	0	25252	0.125428
ESM_2880	201327	0	3096	0.015378
ESM_2882	201327	0	13480	0.0669557
ESM_2883	201327	0	13504	0.067075
ESM_2886	201327	0	19786	0.0982779
ESM_2887	201327	0	13566	0.0673829
ESM_2888	201327	0	14418	0.0716148
ESM_2893	201327	0	16956	0.0842212
ESM_2895	201327	0	12326	0.0612238
ESM_2896	201327	0	15002	0.0745156
ESM_2897	201327	0	17199	0.0854282
MAR_2971	201327	0	12781	0.0634838
MAR_2972	201327	0	15386	0.0764229
MAR_2973	201327	0	12336	0.0612735
MAR_2974	201327	0	84741	0.420912
MAR_2975	201327	0	9595	0.0476588
MAR_2977	201327	0	21328	0.105937
MAR_2979	201327	0	8502	0.0422298
MAR_2980	201327	0	18478	0.091781
MAR_2981	201327	0	10479	0.0520497
MAR_2990	201327	0	13499	0.0670501
SOR_3003	201327	0	35341	0.17554
SOR_3005	201327	0	10764	0.0534653
SOR_3006	201327	0	11280	0.0560283
SOR_3007	201327	0	7201	0.0357677
SOR_3011	201327	0	15800	0.0784793
SOR_3012	201327	0	11686	0.0580449
SOR_3013	201327	0	10058	0.0499585
SOR_3017	201327	0	19745	0.0980743
SOR_3020	201327	0	16653	0.0827162
SOR_3021	201327	0	16489	0.0819016
```
Let's view it as a histogram
```
mawk '!/IN/' out.imiss | cut -f5 > totalmissing
gnuplot << \EOF 
set terminal dumb size 120, 30
set autoscale 
unset label
set title "Histogram of % missing data per individual"
set ylabel "Number of Occurrences"
set xlabel "% of missing data"
#set yr [0:100000]
binwidth=0.01
bin(x,width)=width*floor(x/width) + binwidth/2.0
plot 'totalmissing' using (bin($1,binwidth)):(1.0) smooth freq with boxes
pause -1
EOF
```
Output
```
                                       Histogram of % missing data per individual

  8 ++----------+-------***--+-----------+------------+-----------+------------+-----------+------------+----------++
    +           +       * *  +           +            +        'totalmissing' using (bin($1,binwidth)):(1.0) ****** +
    |                   * *                                                                                         |
  7 ++             ***  * *                                                                                        ++
    |              * *  * *                                                                                         |
    |              * *  * *                                                                                         |
    |              * *  * *                                                                                         |
  6 ++             * *  * *                                                                                        ++
    |              * *  * *                                                                                         |
    |              * *  * *                                                                                         |
  5 ++             * *  * *                                                                                        ++
    |              * *  * *                                                                                         |
    |              * *  * *                                                                                         |
  4 ++          **** **** ******                                                                                   ++
    |           *  * *  * *  * *                                                                                    |
    |           *  * *  * *  * *                                                                                    |
  3 ++        ***  * *  * *  * *                                                                                   ++
    |         * *  * *  * *  * *                                                                                    |
    |         * *  * *  * *  * *                                                                                    |
    |         * *  * *  * *  * *                                                                                    |
  2 ++        * *  * *  * *  * *                                                                                   ++
    |         * *  * *  * *  * *                                                                                    |
    +         * *  * *  * *  * *         +            +           +            +           +            +           +
  1 ++--------******************---------+------------+-----------+------------+-----------+------------+----------++
    0          0.05         0.1         0.15         0.2         0.25         0.3         0.35         0.4         0.45
                                                    % of missing data

```
Most of the individuals have less than 0.1 missing data <br> <br>
Create a list of individuals with more than 30% missing data
```
mawk '$5 > 0.3' out.imiss | cut -f1 > lowDP.indv
```
Remove individuals with more than 30% of missing data
```
vcftools --vcf raw.maf5mq30dp3.recode.vcf --remove lowDP.indv --recode --recode-INFO-all --out raw.maf5mq30dp3ldp
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf raw.maf5mq30dp3.recode.vcf
	--exclude lowDP.indv
	--recode-INFO-all
	--out raw.maf5mq30dp3ldp
	--recode

Excluding individuals in 'exclude' list
After filtering, kept 39 out of 40 Individuals
Outputting VCF file...
After filtering, kept 201327 out of a possible 201327 Sites
Run Time = 42.00 seconds
```
Only one individual out of 40 was removed

## Calculate pairwise Fst
*Analyses were done in R
Load all the required R packages
```
> library("adegenet")
> library(vcfR)
> library("hierfstat")
```
Import samples_population.txt and VCF file
```
> popinfo <- read.table("samples_population.txt", header=TRUE)
> popinfo_df <- data.frame(popinfo)
> my_vcf <- read.vcfR("raw.maf5mq30dp3ldp.recode.vcf")
Scanning file to determine attributes.
File attributes:
  meta lines: 60
  header_line: 61
  variant count: 201327
  column count: 48
Meta line 60 read in.
All meta lines processed.
gt matrix initialized.
Character matrix gt created.
  Character matrix gt rows: 201327
  Character matrix gt cols: 48
  skip: 0
  nrows: 201327
  row_num: 0
Processed variant: 201327
All variants processed
```
Change format
```
> my_genind <- vcfR2genind(my_vcf)
```
```
> my_genind
```
Output
```

```
```
> popinfo(my_genind) <- popinfo_df
```
Assign populations to this data
```
> setPop(my_genind) <- ~Pop
> fstat(my_genind)
```
Output
```
```

```
> matFst <- pairwise.fst(my_genind)
```

### Generate PCA (individual variation)
### DAPC (individual variation and possible number of clusters)
