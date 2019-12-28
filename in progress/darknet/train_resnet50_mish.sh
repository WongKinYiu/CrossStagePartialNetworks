mkdir -p ./resnet50-mish
CUDA_VISIBLE_DEVICES=5 ./darknet classifier train icfg/resnet50-mish.data icfg/resnet50-mish.cfg -gpus 0 -dont_show
