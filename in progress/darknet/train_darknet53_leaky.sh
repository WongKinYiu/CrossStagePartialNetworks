mkdir -p ./darknet53-leaky
CUDA_VISIBLE_DEVICES=0 ./darknet classifier train icfg/darknet53-leaky.data icfg/darknet53-leaky.cfg -gpus 0 -dont_show
