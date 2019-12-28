mkdir -p ./resnet50-swish
CUDA_VISIBLE_DEVICES=7 ./darknet classifier train icfg/resnet50-swish.data icfg/resnet50-swish.cfg -gpus 0 -dont_show
