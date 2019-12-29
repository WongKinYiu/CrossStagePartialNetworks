# Cross Stage Partial Networks
This is the implementation of "[CSPNet: A New Backbone that can Enhance Learning Capability of CNN](https://arxiv.org/abs/1911.11929)" using Pytorch framwork.

For installing Pytorch YOLOv3, you can refer to [YOLOv3(ultralytics)](https://github.com/ultralytics/yolov3).

This branch shows the results train **CSPNet** from scratch using Pytorch.

# MS COCO

| Model | Size | Pretrain | NMS | 1080ti *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :------: | :-: | :----------: | :--: | :--: | :--: | :-: | :----: |
| **YOLOv3-SPP (baseline)** | 512×512 | No | 0.5 | 50 | 39.7 | 60.5 | 42.2 | - | - |
| **CSPResNet50c-PANet-SPP** | 512×512 | No | 0.5 | 56 | 38.4 | 58.5 | 41.0 | - | - |
|  |  |  |  |  |  |  |  |  |  |
| **YOLOv3-SPP (baseline)** | 608×608 | No | 0.5 | 35 | 40.1 | 60.9 | 42.8 | - | - |
| **CSPResNet50c-PANet-SPP** | 608×608 | No | 0.5 | 40 | 38.9 | 59.2 | 41.6 | - | - |
|  |  |  |  |  |  |  |  |  |  |

| Model | Size | Pretrain | NMS | 1080ti *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :------: | :-: | :----------: | :--: | :--: | :--: | :-: | :----: |
| **YOLOv3-tiny (baseline)** | 416×416 | No | 0.5 | 330 | 16.6 | 33.0 | 14.9 | - | - |
| **CSPNet-PANet-SPP** | 416×416 | No | 0.5 | 238 | 26.5 | 44.8 | 27.0 | - | - |
| **CSPNet-YOLOv3-SPP** | 416×416 | No | 0.5 | 220 | 24.9 | 43.6 | 24.9 | - | - |
|  |  |  |  |  |  |  |  |  |  |

※ the current fps is a rough estimation, while i am training other models when testing it. 

# Acknowledgements
[https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet)

[https://github.com/ultralytics/yolov3](https://github.com/ultralytics/yolov3)
