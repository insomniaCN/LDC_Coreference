#!/usr/bin/env bash

# This demo is based on LDC V1, see test_conversion for commands for V2

#change this line to the LDC annotation data folder
# NOTE: these two directory can be different in reality
ldc_text_dir=data/conversion_demo/ere/
ldc_ann_dir=data/conversion_demo/ere/

#change the following lines to your desired output folder
brat_output_dir=data/conversion_demo/ann
token_table_dir=data/conversion_demo/tkn
output_tbf_basename=data/conversion_demo/gold

echo "Running XML to Brat Converter..."
java -jar bin/converter-1.0.3-jar-with-dependencies.jar -t "$ldc_text_dir" -te "txt" -a "$ldc_ann_dir" -ae "event_nugget.xml" -o "$brat_output_dir"
echo "Running tokenizer..."
java -jar bin/token-file-maker-1.0.4-jar-with-dependencies.jar -a "$brat_output_dir" -t "$brat_output_dir" -e txt -o "$token_table_dir"
echo "Converting to TBF format"
python ./brat2tbf.py -t "$token_table_dir" -d "$brat_output_dir" -o "$output_tbf_basename" -w
