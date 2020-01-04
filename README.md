# Cross Stage Partial Networks
This is the implementation of "[CSPNet: A New Backbone that can Enhance Learning Capability of CNN](https://arxiv.org/abs/1911.11929)" using Pytorch framwork.

For installing Pytorch YOLOv3, you can refer to [YOLOv3(ultralytics)](https://github.com/ultralytics/yolov3).

This branch shows the results train **CSPNet** from scratch using Pytorch.

# MS COCO

| Model | Size | NMS | 1080ti *fps* | BFLOPs | AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :-: | :----------: | :----: | :--: | :--: | :--: | :-: | :----: |
| **YOLOv3-SPP (baseline)** | 512×512 | 0.5 | 50 | 100.343 | 39.7 | 60.5 | 42.2 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/pytorch/cfg/yolov3-spp.cfg) | [weight](https://drive.google.com/open?id=1ijv8jWVKX9q7Qjfm_iQDHtGc39DaJJ6M) |
| **CSPResNeXt50c-YOLO-SPP** | 512×512 | 0.5 | 43 | 58.983 | 38.4 | 59.6 | 40.5 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/pytorch/cfg/csresnext50c-yolo-spp.cfg) | [weight](https://drive.google.com/open?id=1QWyghhT2NzYlmGtiem6dz3mB3OmvF6UV) |
| **CSPResNet50c-PANet-SPP** | 512×512 | 0.5 | 56 | 74.955 | 38.4 | 58.5 | 41.0 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/pytorch/cfg/csresnet50c-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1_slhW7CCUZQctwCpRsNiNCtZIuvexeA1) |
| **CSPDarknet53s-PANet-SPP** | 512×512 | 0.5 | 50 | 88.398 | 40.0 | 60.4 | 42.9 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/pytorch/cfg/csdarknet53s-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1wX1pe6qJpb_uSPjNQJbWzKnvVnF3PY9b) |
| **CSPDarknet53m-PANet-SPP** | 512×512 | 0.5 | 48 | 88.264 | 39.8 | 60.1 | 42.6 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/pytorch/cfg/csdarknet53m-panet-spp.cfg) | [weight](https://drive.google.com/open?id=10hWJHjcqSyBJca6uVpslvEm_-a_S9XNa) |
|  |  |  |  |  |  |  |  |  |
| **YOLOv3-SPP (baseline)** | 608×608 | 0.5 | 35 | 141.500 | 40.1 | 60.9 | 42.8 | - | - |
| **CSPResNeXt50c-YOLO-SPP** | 608×608 | 0.5 | 34 | 83.176 | 38.9 | 60.3 | 41.3 | - | - |
| **CSPResNet50c-PANet-SPP** | 608×608 | 0.5 | 40 | 105.699 | 38.9 | 59.2 | 41.6 | - | - |
| **CSPDarknet53s-PANet-SPP** | 608×608 | 0.5 | 38 | 124.655 | 40.2 | 60.6 | 43.3 | - | - |
| **CSPDarknet53m-PANet-SPP** | 608×608 | 0.5 | 36 | 124.466 | 40.1 | 60.6 | 43.1 | - | - |
|  |  |  |  |  |  |  |  |  |

| Model | Size | NMS | 1080ti *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :-: | :----------: | :--: | :--: | :--: | :-: | :----: |
| **CSPNet-PANet-SPP** | 320×320 | 0.5 | - | 23.8 | 40.5 | 24.2 | - | - |
| **CSPNet-YOLOv3-SPP** | 320×320 | 0.5 | - | 22.2 | 39.5 | 22.0 | - | - |
|  |  |  |  |  |  |  |  |  |
| **YOLOv3-tiny (baseline)** | 416×416 | 0.5 | 330 | 16.6 | 33.0 | 14.9 | - | - |
| **CSPNet-PANet-SPP** | 416×416 | 0.5 | 238 | 26.5 | 44.8 | 27.0 | - | - |
| **CSPNet-YOLOv3-SPP** | 416×416 | 0.5 | 220 | 24.9 | 43.6 | 24.9 | - | - |
|  |  |  |  |  |  |  |  |  |

※ the current fps is a rough estimation, while i am training other models when testing it.

# Acknowledgements
[https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet)

[https://github.com/ultralytics/yolov3](https://github.com/ultralytics/yolov3)
