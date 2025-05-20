MODEL_NAME=xlm-roberta-large-ViT-H-14
PRETRAINED=frozen_laion5b_s13b_b90k

# for DATASET in 'deepfashion_inshop' 'deepfashion_multimodal' 'fashion200k' 'KAGL' 'atlas' 'polyvore' 'iMaterialist'
for DATASET in  'fashion200k' 
do
    python eval.py \
        --dataset-config ./configs/${DATASET}.json \
        --model-name ${MODEL_NAME} \
        --pretrained ${PRETRAINED} \
        --run-name  CLIP-ViT-H-14-frozen-xlm-roberta-large-laion5B-s13B-b90k
done