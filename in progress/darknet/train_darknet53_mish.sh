mkdir -p ./darknet53-mish
CUDA_VISIBLE_DEVICES=1 ./darknet classifier train icfg/darknet53-mish.data icfg/darknet53-mish.cfg -gpus 0 -dont_show
