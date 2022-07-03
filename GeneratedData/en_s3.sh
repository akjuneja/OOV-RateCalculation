rnnpath=/home/snlp-project-21/rnnlm
rnnmodel=/home/snlp-project-21/Desktop/SNLP-Project/models/rnnlm/en_s3_model_rnnlm
temp=/home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s3/ 

echo "Generating data for en s3..."

for i in {1,2,3,4,5,6,7}; do
 data_size=$((10**i))
 $rnnpath/rnnlm -rnnlm $rnnmodel -gen $data_size -debug 0 > $temp/$data_size.txt
done   
