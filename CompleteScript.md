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
Make a new directory
```
mkdir PCA
```
Copy *Final.recode.vcf* file generated in dDocent
```
cp /home/jpita/Final_assignment/ddocent/Final.recode.vcf .
```
Transfer *vcfbiallelic* to KITT, which only keep biallelic markers
```
scp -P 2292 vcfbiallelic jpita@kitt.uri.edu:/home/jpita/Final_assignment/PCA/
```
Run *vcfbiallelic*
```
./vcfbiallelic < Final.recode.vcf > Final.recode.biallelic.vcf
```
Keep variants successfully genotypes in 90% of individuals (completed in previous step with dDocent), a minimum quality score of 30, and a minor allele frequency 5%
```
vcftools --vcf Final.recode.biallelic.vcf --maf 0.05  --minQ 30 --recode --recode-INFO-all --out ba.maf5mq30
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf Final.recode.biallelic.vcf
	--recode-INFO-all
	--maf 0.05
	--minQ 30
	--out ba.maf5mq30
	--recode

After filtering, kept 40 out of 40 Individuals
Outputting VCF file...
After filtering, kept 181060 out of a possible 453873 Sites
Run Time = 40.00 seconds
```
The next filter is a minimum depth for a genotype call and a minimum mean depth. This command will recode genotypes that have less than 3 reads
```
vcftools --vcf ba.maf5mq30.recode.vcf --minDP 3 --recode --recode-INFO-all --out ba.maf5mq30dp3 
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf ba.maf5mq30.recode.vcf
	--recode-INFO-all
	--minDP 3
	--out ba.maf5mq30dp3
	--recode

After filtering, kept 40 out of 40 Individuals
Outputting VCF file...
After filtering, kept 181060 out of a possible 181060 Sites
Run Time = 36.00 seconds
```
Verify potential errors
```
curl -L -O https://github.com/jpuritz/dDocent/raw/master/scripts/ErrorCount.sh
chmod +x ErrorCount.sh 
./ErrorCount.sh ba.maf5mq30dp3.recode.vcf 
```
Output
```
This script counts the number of potential genotyping errors due to low read depth
It report a low range, based on a 50% binomial probability of observing the second allele in a heterozygote and a high range based on a 25% probability.
Potential genotyping errors from genotypes from only 1 read range from 0.0 to 0.0
Potential genotyping errors from genotypes from only 2 reads range from 0.0 to 0.0
Potential genotyping errors from genotypes from only 3 reads range from 19812.25 to 66569.16
Potential genotyping errors from genotypes from only 4 reads range from 9990.5 to 50511.968
Potential genotyping errors from genotypes from only 5 reads range from 4857.1875 to 36836
40 number of individuals and 181060 equals 7242400 total genotypes
Total genotypes not counting missing data 7242290
Total potential error rate is between 0.004785770453820545 and 0.021252549676966815
SCORCHED EARTH SCENARIO
WHAT IF ALL LOW DEPTH HOMOZYGOTE GENOTYPES ARE ERRORS?????
The total SCORCHED EARTH error rate is 0.06541798243373298
```
Remove individuals that did not sequence well by assessing individual levels of missing data
```
vcftools --vcf ba.maf5mq30dp3.recode.vcf --missing-indv
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf ba.maf5mq30dp3.recode.vcf
	--missing-indv

After filtering, kept 40 out of 40 Individuals
Outputting Individual Missingness
After filtering, kept 181060 out of a possible 181060 Sites
Run Time = 2.00 seconds
```
Examine output
```
cat out.imiss
```
```
INDV	N_DATA	N_GENOTYPES_FILTERED	N_MISS	F_MISS
CAB_2918	181060	0	16040	0.0885894
CAB_2919	181060	0	15631	0.0863305
CAB_2920	181060	0	20698	0.114316
CAB_2921	181060	0	14901	0.0822987
CAB_2922	181060	0	18323	0.101198
CAB_2923	181060	0	15845	0.0875124
CAB_2924	181060	0	14632	0.080813
CAB_2925	181060	0	18722	0.103402
CAB_2927	181060	0	17732	0.0979344
CAB_2931	181060	0	22238	0.122821
ESM_2880	181060	0	2696	0.0148901
ESM_2882	181060	0	11732	0.0647962
ESM_2883	181060	0	11888	0.0656578
ESM_2886	181060	0	17450	0.0963769
ESM_2887	181060	0	11851	0.0654534
ESM_2888	181060	0	12712	0.0702088
ESM_2893	181060	0	14883	0.0821993
ESM_2895	181060	0	10807	0.0596874
ESM_2896	181060	0	13214	0.0729813
ESM_2897	181060	0	15117	0.0834917
MAR_2971	181060	0	11127	0.0614548
MAR_2972	181060	0	13474	0.0744173
MAR_2973	181060	0	10724	0.059229
MAR_2974	181060	0	75898	0.419187
MAR_2975	181060	0	8310	0.0458964
MAR_2977	181060	0	18726	0.103424
MAR_2979	181060	0	7369	0.0406992
MAR_2980	181060	0	16225	0.0896112
MAR_2981	181060	0	9147	0.0505192
MAR_2990	181060	0	11732	0.0647962
SOR_3003	181060	0	31448	0.173688
SOR_3005	181060	0	9447	0.0521761
SOR_3006	181060	0	9789	0.054065
SOR_3007	181060	0	6297	0.0347785
SOR_3011	181060	0	14034	0.0775102
SOR_3012	181060	0	10389	0.0573788
SOR_3013	181060	0	8888	0.0490887
SOR_3017	181060	0	17338	0.0957583
SOR_3020	181060	0	14727	0.0813377
SOR_3021	181060	0	14502	0.080095
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

  10 ++----------+-------***--+-----------+-----------+------------+-----------+-----------+------------+----------++
     +           +       * *  +           +           +        'totalmissing' using (bin($1,binwidth)):(1.0) ****** +
     |                   * *                                                                                        |
   9 ++                  * *                                                                                       ++
     |                   * *                                                                                        |
   8 ++                  * *                                                                                       ++
     |                   * *                                                                                        |
     |                   * *                                                                                        |
   7 ++                  * *                                                                                       ++
     |                   * *                                                                                        |
   6 ++          ****    * *                                                                                       ++
     |           *  *    * *                                                                                        |
     |           *  *    * *                                                                                        |
   5 ++          *  ***  * *                                                                                       ++
     |           *  * *  * *                                                                                        |
   4 ++          *  * **** *                                                                                       ++
     |           *  * *  * *                                                                                        |
     |           *  * *  * *                                                                                        |
   3 ++        ***  * *  * ******                                                                                  ++
     |         * *  * *  * *  * *                                                                                   |
   2 ++        * *  * *  * *  * *                                                                                  ++
     |         * *  * *  * *  * *                                                                                   |
     +         * *  * *  * *  * *         +           +            +           +           +            +           +
   1 ++--------******************---------+-----------+------------+-----------+-----------+------------+----------++
     0          0.05         0.1         0.15        0.2          0.25        0.3         0.35         0.4         0.45
                                                    % of missing data

```
Most of the individuals have less than 0.1 missing data <br> <br>
Create a list of individuals with more than 30% missing data
```
mawk '$5 > 0.3' out.imiss | cut -f1 > lowDP.indv
```
Remove individuals with more than 30% of missing data
```
vcftools --vcf ba.maf5mq30dp3.recode.vcf --remove lowDP.indv --recode --recode-INFO-all --out ba.maf5mq30dp3ldp
```
Output
```
VCFtools - 0.1.14
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--vcf ba.maf5mq30dp3.recode.vcf
	--exclude lowDP.indv
	--recode-INFO-all
	--out ba.maf5mq30dp3ldp
	--recode

Excluding individuals in 'exclude' list
After filtering, kept 39 out of 40 Individuals
Outputting VCF file...
After filtering, kept 181060 out of a possible 181060 Sites
Run Time = 35.00 seconds
```
Only one individual out of 40 was removed

To keep only SNPs (remove INDEL polymorphisms) use *vcffilter* 
```
vcffilter -f "TYPE = snp" ba.maf5mq30dp3ldp.recode.vcf > ba.maf5mq30dp3ldp.recode.snps.vcf
grep -v "#" ba.maf5mq30dp3ldp.recode.snps.vcf | wc -l   #Output: 169375
```
## Principal Component Analyses (PCA)
Change format vcf -> adegenet with [*vcf_to_adegenet.sh*](https://github.com/jessicapita/sagrei-cuba/blob/master/vcf_to_adegenet.sh)
```
bash vcf_to_adegenet.sh
```
Run [*PCA_script.R*](https://github.com/jessicapita/sagrei-cuba/blob/master/PCA_script.R) in R Studio (http://kitt.uri.edu:8787)
<br>
<br>
**Sample localities (Cuba)** <br>
![](https://github.com/jessicapita/sagrei-cuba/blob/master/CubaSites_sagrei.png?raw=true)
<br>
**PCA-plot Output** <br> <br>
![](https://github.com/jessicapita/sagrei-cuba/blob/master/PCA-Rplot.png?raw=true)
