mkdir -p ./darknet53-swish
CUDA_VISIBLE_DEVICES=3 ./darknet classifier train icfg/darknet53-swish.data icfg/darknet53-swish.cfg -gpus 0 -dont_show
