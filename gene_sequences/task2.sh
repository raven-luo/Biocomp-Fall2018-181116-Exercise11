/afs/nd.edu/user32/yluo3/local/bin/hmmbuild transporter_refs.hmm transporter.fasta.align
for fasta in /afs/nd.edu/user32/yluo3/exercise11/Biocomp-Fall2018-181116-Exercise11/proteomes/*.fasta
do
	/afs/nd.edu/user32/yluo3/local/bin/hmmsearch --tblout resultshmm.txt transporter_refs.hmm $fasta
	echo $fasta >> task2.txt
	cat resultshmm.txt | grep -v "#" | wc -l >> task2.txt
done
#Usage: bash task2.sh
