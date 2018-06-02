wget http://download.asperasoft.com/download/sw/connect/3.7.4/aspera-connect-3.7.4.147727-linux-64.tar.gz

tar zxvf aspera-connect-3.7.4.147727-linux-64.tar.gz

# install
bash aspera-connect-3.7.4.147727-linux-64.sh

# check the .aspera directory
cd # go to root directory
ls -a # if you could see .aspera, the installation is OK

# add environment variable
echo 'export PATH=~/.aspera/connect/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# check help file
ascp --help

# download from SRA database
ascp -v -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh -k 1 -T -l200m anonftp@ftp-private.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/SRR/SRR949/SRR949627/SRR949627.sra ~/biostar/aspera/

# download from ENA database
ascp -QT -l 300m -P33001 -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR949/SRR949627/SRR949627_1.fastq.gz ~/biostar/aspera/