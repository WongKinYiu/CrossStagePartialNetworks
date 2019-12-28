mkdir -p ./resnet50-relu
CUDA_VISIBLE_DEVICES=6 ./darknet classifier train icfg/resnet50-relu.data icfg/resnet50-relu.cfg -gpus 0 -dont_show
