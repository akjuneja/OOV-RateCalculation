echo 'Decoding data for all models..'
 
for i in {1,2,3,4,5,6,7}; do \

 s=$((10**i))

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/en_s1/en_s1_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s1/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s1/decoded/$s"_decoded".txt 

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/en_s2/en_s2_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s2/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s2/decoded/$s"_decoded".txt 

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/en_s3/en_s3_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s3/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/en_s3/decoded/$s"_decoded".txt 

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/bn_s1/bn_s1_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s1/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s1/decoded/$s"_decoded".txt 

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/bn_s2/bn_s2_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s2/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s2/decoded/$s"_decoded".txt 

 spm_decode \
  --model=/home/snlp-project-21/Desktop/SNLP-Project/spm/bn_s3/bn_s3_train_model_prefix.model \
  --input_format=piece \
  < /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s3/$s.txt \
  > /home/snlp-project-21/Desktop/SNLP-Project/GeneratedData/bn_s3/decoded/$s"_decoded".txt

done