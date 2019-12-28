mkdir -p ./darknet53-relu
CUDA_VISIBLE_DEVICES=2 ./darknet classifier train icfg/darknet53-relu.data icfg/darknet53-relu.cfg -gpus 0 -dont_show
