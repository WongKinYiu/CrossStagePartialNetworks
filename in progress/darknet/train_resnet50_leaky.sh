mkdir -p ./resnet50-leaky
CUDA_VISIBLE_DEVICES=4 ./darknet classifier train icfg/resnet50-leaky.data icfg/resnet50-leaky.cfg -gpus 0 -dont_show
