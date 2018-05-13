#!/bin/bash
biallelic='vcfbiallelic'
filter='vcffilter'
fixup='vcffixup'
keepgeno='vcfkeepgeno'
keepinfo='vcfkeepinfo'
keepsamples='vcfkeepsamples'
mnp_snp='vcfallelicprimitives'
removesamples='vcfremovesamples'
vcfuniq='vcfuniq'
names='vcfsamplenames'
input='ba.maf5mq30dp3ldp.recode.snps'

#$mnp_snp $input.vcf | $vcfuniq > snp.$input.vcf
#sed -i 's/|/\//g' snp.$input.vcf

#make position vector (use line numbers)
#    grep -v "#" snp.$input.vcf > snp.$input.txt
#    awk '{print NR}' snp.$input.txt > position
#    sed -i ':a;N;$!ba;s/\n/ /g' position
    
#make allele vector
#    awk '{print $4,$5}' snp.$input.txt > allele
#    sed  -i 's/\s/\//g' allele
#    sed -i 's/A/a/g' allele
#    sed -i 's/T/t/g' allele
#    sed -i 's/C/c/g' allele
#    sed -i 's/G/g/g' allele
#    sed -i ':a;N;$!ba;s/\n/ /g' allele
    
#make population vector (use species ID)
#    $names snp.$input.vcf > sample_names.txt
#    sed -i ':a;N;$!ba;s/ /\n/g' sample_names.txt
#    awk '{print "sagrei"}' sample_names.txt > population
#    sed -i ':a;N;$!ba;s/\n/ /g' population
    
#make ploidy vector
#    awk '{print "2"}' sample_names.txt > ploidy
#    sed -i ':a;N;$!ba;s/\n/ /g' ploidy
#    rm sample_names.txt

#make genotypes vector
#    $keepgeno snp.$input.vcf GT | grep -v "#" | cut -f 10- > snp.$input.geno
#    sed -i 's/0\/0/0/g' snp.$input.geno
#    sed -i 's/0\/1/1/g' snp.$input.geno
#    sed -i 's/1\/1/2/g' snp.$input.geno
#    sed -i 's/\.\/\./-/g' snp.$input.geno
    END=39
    for ((i=1;i<=END;i++)); do
    cut -f $i snp.$input.geno | paste -s -d ' ' > geno.$i
    done
    cat $(ls -rt geno.*) >  $input.transposed.txt
    rm geno.* *.geno
    $names snp.$input.vcf > sample_names.temp
    awk '{print ">",$0}' sample_names.temp > sample_names.txt
    paste -d '\n' sample_names.txt $input.transposed.txt > genotypes
    sed -i 's/\s//g' genotypes
    sed -i 's/>/> /g' genotypes
cat position allele population genotypes > Anolis.snp

    


