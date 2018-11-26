for fasta in sporecoat??.fasta
do
	cat $fasta | sed -e '$a\' >> sporecoatMaster.fasta
done
/afs/nd.edu/user32/yluo3/muscle3.8.31_i86linux64 -in sporecoatMaster.fasta -out sporecoat.fasta.align
for fasta in transporter??.fasta
do
	cat $fasta | sed -e '$a\' >> transporterMaster.fasta
done
/afs/nd.edu/user32/yluo3/muscle3.8.31_i86linux64 -in transporterMaster.fasta -out transporter.fasta.align
#Usage: bash task1.sh
