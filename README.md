# Cross Stage Partial Networks
This is the implementation of "[CSPNet: A New Backbone that can Enhance Learning Capability of CNN](https://arxiv.org/abs/1911.11929)" using Darknet framwork.

![](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/fig/cmp3.png)

For installing Darknet framework, you can refer to [darknet(AlexeyAB)](https://github.com/AlexeyAB/darknet).

Combining with [CIoU](https://github.com/AlexeyAB/darknet/issues/4360), [Scale Sensitivity](https://github.com/AlexeyAB/darknet/issues/3293), [IoU Threshold](https://github.com/AlexeyAB/darknet/issues/4451), [Greedy NMS](https://github.com/AlexeyAB/darknet/issues/4360), [Mosaic Augmentation](https://github.com/AlexeyAB/darknet/issues/4264), ...

CSPResNeXt-50-PANet-SPP acheives impressive results on test-dev set of MSCOCO object detection task:

| Model | Size | 1080ti *fps* |  AP  | AP50 | AP75 | APS | APM | APL | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | :-: | :-: | :-: | :-: | :----: |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 44 | 42.4 | 64.4 | 45.9 | 23.2 | 45.5 | 55.3 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-panet-spp-original-optimal.cfg) | [weight](https://drive.google.com/open?id=1CP1IGmo29TCVr6SxozRE16yqG67JXr2b) |
| **CSPResNeXt50-PANet-SPP** | 608×608 | 35 | 43.2 | 65.4 | 47.0 | 25.7 | 46.7 | 53.3 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-panet-spp-original-optimal.cfg) | [weight](https://drive.google.com/open?id=1CP1IGmo29TCVr6SxozRE16yqG67JXr2b) |

# ImageNet

## Big Models

| Model | #Parameter | BFLOPs | Top-1 | Top-5 | cfg | weight |
| :---- | :--------: | :----: | :---: | :---: | :-: | :----: |
|  |  |  |  |  |
| DarkNet-53 [[1]](https://arxiv.org/abs/1804.02767) | 41.57M | 18.57 | 77.2 | 93.8 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/darknet53.cfg) | [weight](https://pjreddie.com/media/files/darknet53.weights) |
| **CSPDarkNet-53** | 27.61M **(-34%)** | 13.07 **(-30%)** | 77.2 **(=)** | 93.6 **(-0.2)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csdarknet53.cfg) | [weight](https://drive.google.com/open?id=1dZJIxngmFpQJvsa6y7XADfSxkXCjJTzp) |
| **CSPDarkNet-53-Elastic** | - | 7.74 **(-58%)** | 76.1 **(-1.1)** | 93.3 **(-0.5)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csdarknet53-elastic.cfg) | [weight](https://drive.google.com/open?id=1XlHOBSvLHj1iCCBTgbwauekN_Kf6N-Qa) |
|  |  |  |  |  |
| ResNet-50 [[2]](https://arxiv.org/abs/1512.03385) | 22.73M | 9.74 | 75.8 | 92.9 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnet50.cfg) | [weight](https://pjreddie.com/media/files/resnet50.weights) |
| **CSPResNet-50** | 21.57M **(-5%)** | 8.97 **(-8%)** | 76.6 **(+0.8)** | 93.3 **(+0.4)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnet50.cfg) | [weight](https://drive.google.com/open?id=1pNU6DctLlf3mnJI-opZL6kCx_hSNsEKj) |
| **CSPResNet-50-Elastic** | - | 9.36 **(-4%)** | 76.8 **(+1.0)** | 93.5 **(+0.6)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnet50-elastic.cfg) | [weight](https://drive.google.com/open?id=1IOc96Y-qH-n5hkJ7mEynP5U_aKyE8oke) |
|  |  |  |  |  |
| ResNeXt-50 [[3]](https://arxiv.org/abs/1611.05431) | 22.19M | 10.11 | 77.8 | 94.2 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnext50.cfg) | [weight](https://pjreddie.com/media/files/resnext50.weights) |
| **CSPResNeXt-50** | 20.50M **(-8%)** | 7.93 **(-22%)** | 77.9 **(+0.1)** | 94.0 **(-0.2)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50.cfg) | [weight](https://drive.google.com/open?id=1IxKu5lAYCo4UpzAl5pOBIDAvC843vjn1) |
| **CSPResNeXt-50-Elastic** | - | 5.45 **(-46%)** | 77.2 **(-0.6)** | 93.8 **(-0.4)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-elastic.cfg) | [weight](https://drive.google.com/open?id=134irBbpEnfPGE7NzorRqjukCt59GxeQ2) |
| **CSPResNeXt-50+Elastic** | - | 7.82 **(-23%)** |  **()** |  **()** | - | - |
| HarDNet-138s [[4]](https://arxiv.org/abs/1909.00948) | 35.5M | 13.4 | 77.8 | - | - | - |
| DenseNet-264-32 [[5]](https://arxiv.org/abs/1608.06993) | 27.21M | 11.03 | 77.8 | 93.9 | - | - |
| ResNet-152 [[2]](https://arxiv.org/abs/1512.03385) | 60.2M | 22.6 | 77.8 | 93.6 | - | - |
|  |  |  |  |  |
| DenseNet-201+Elastic [[6]](https://arxiv.org/abs/1812.05262) | 19.48M | 8.77 | 77.9 | 94.0 | - | - |
| **CSPDenseNet-201+Elastic** | 20.17M **(+4%)** | 7.13 **(-19%)** | 77.9 **(=)** | 94.0 **(=)** | - | - |
|  |  |  |  |  |
| Res2NetLite-72 [[7]](https://arxiv.org/abs/1911.08855) | - | 5.19 | 74.7 | 92.1 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/res2netlite72.cfg) | [weight](https://drive.google.com/open?id=1ryxtvUjKRVXhZK05K7UK80iDS3yK5gbF) |
|  |  |  |  |  |



## Small Models

| Model | #Parameter | BFLOPs | Top-1 | Top-5 | cfg | weight |
| :---- | :--------: | :----: | :---: | :---: | :-: | :----: |
|  |  |  |  |  |
| PeleeNet [[8]](https://arxiv.org/abs/1804.06882) | 2.79M | 1.017 | 70.7 | 90.0 | - | - |
| PeleeNet-swish | 2.79M | 1.017 | 71.5 | 90.7 | - | - |
| PeleeNet-swish-SE | 2.81M | 1.017 | 72.1 | 91.0 | - | - |
| **CSPPeleeNet** | 2.83M **(+1%)** | 0.888 **(-13%)** | 70.9 **(+0.2)** | 90.2 **(+0.2)** | - | - |
| **CSPPeleeNet-swish** | 2.83M **(+1%)** | 0.888 **(-13%)** | 71.7 **(+0.2)** | 90.8 **(+0.1)** | - | - |
| **CSPPeleeNet-swish-SE** | 2.85M **(+1%)** | 0.888 **(-13%)** | 72.4 **(+0.3)** | 91.0 **(=)** | - | - |
| SparsePeleeNet [[9]](https://arxiv.org/abs/1801.05895) | 2.39M | 0.904 | 69.6 | 89.3 | - | - |
|  |  |  |  |  |
| EfficientNet-B0* [[10]](https://arxiv.org/abs/1905.11946) | 4.81M | 0.915 | 71.3 | 90.4 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/enetb0.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/enetb0_final.weights) |
| EfficientNet-B0 (official) [[10]](https://arxiv.org/abs/1905.11946) | - | - | 70.0 | 88.9 | - | - |
|  |  |  |  |  |
| MobileNet-v2 [[11]](https://arxiv.org/abs/1801.04381) | 3.47M | 0.858 | 67.0 | 87.7 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/mobilenet-v2.cfg) | [weight](https://drive.google.com/file/d/1lW87XQtZIYKIqu8DHvJwBUupJBh4Zpdl/view?usp=sharing) |
| **CSPMobileNet-v2** | 2.51M **(-28%)** | 0.764 **(-11%)** | 67.7 **(+0.7)** | 88.3 **(+0.6)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csmobilenet-v2.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/csmobilenet-v2_final.weights) |
|  |  |  |  |  |
| Darknet Ref. [[12]](https://pjreddie.com/darknet/tiny-darknet/) | 7.31M | 0.96 | 61.1 | 83.0 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/darknet.cfg) | [weight](https://pjreddie.com/media/files/darknet.weights) |
| **CSPDenseNet Ref.** | 3.48M **(-52%)** | 0.886 **(-8%)** | 65.7 **(+4.6)** | 86.6 **(+3.6)** | - | - |
| **CSPPeleeNet Ref.** | 4.10M **(-44%)** | 1.103 **(+15%)** | 68.9 **(+7.8)** | 88.7 **(+5.7)** | - | - |
| **CSPDenseNetb Ref.** | 1.38M **(-81%)** | 0.631 **(-34%)** | 64.2 **(+3.1)** | 85.5 **(+2.5)** | - | - |
| **CSPPeleeNetb Ref.** | 2.01M **(-73%)** | 0.897 **(-7%)** | 67.8 **(+6.7)** | 88.1 **(+5.1)** | - | - |
|  |  |  |  |  |
| ResNet-10 [[2]](https://arxiv.org/abs/1512.03385) | 5.24M | 2.273 | 63.5 | 85.0 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnet10.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/resnet10_final.weights) |
| **CSPResNet-10** | 2.73M **(-48%)** | 1.905 **(-16%)** | 65.3 **(+1.8)** | 86.5 **(+1.5)** | - | - |
|  |  |  |  |  |
| MixNet-M-GPU | - | 1.065 | 71.5 | 90.5 | - | - |
|  |  |  |  |  |

※EfficientNet* is implemented by Darknet framework.

※EfficientNet(official) is trained by [official code](https://github.com/tensorflow/tpu/tree/master/models/official/efficientnet) with batch size equals to 256.

※Swish activation function is presented by [[13]](https://arxiv.org/abs/1710.05941).

※Squeeze-and-excitation (SE) network is presented by [[14]](https://arxiv.org/abs/1709.01507).

※MixNet-M-GPU is modified from MixNet-M [[21]](https://arxiv.org/abs/1907.09595)

# Some tricks for improving Acc

1. Activation function

| Model | Activation | Top-1 | Top-5 |
| :---- | :--------: | :---: | :---: |
| PeleeNet | LReLU | 70.7 | 90.0 |
| PeleeNet | Swish | 71.5 **(+0.8)** | 90.7 **(+0.7)** |
| PeleeNet | Mish | 71.4 **(+0.7)** | 90.4 **(+0.4)** |
|  |  |  |  |
| **CSPPeleeNet** | LReLU | 70.9 | 90.2 |
| **CSPPeleeNet** | Swish | 71.7 **(+0.8)** | 90.8 **(+0.6)** |
| **CSPPeleeNet** | Mish | 71.2 **(+0.3)** | 90.3 **(+0.1)** |
|  |  |  |  |
| **CSPResNeXt-50** | LReLU | 77.9 | 94.0 |
| **CSPResNeXt-50** | Mish | 78.9 **(+1.0)** | 94.5 **(+0.5)** |
|  |  |  |  |
<!--
| **CSPResNeXt-50** | Swish | 64.5 **(-13.4)** | 86.0 **(-8.0)** |
-->
※Swish activation function is not suitable for ResNeXt-based models, details are shown in Mish paper [[22]](https://arxiv.org/abs/1908.08681).

2. Data augmentation

| Model | Augmentation | Top-1 | Top-5 |
| :---- | :--------: | :---: | :---: |
| **CSPResNeXt-50** | Normal | 77.9 | 94.0 |
| **CSPResNeXt-50** | Mixup | 77.2 | 94.0 |
| **CSPResNeXt-50** | Cutmix | 78.0 | 94.3 |
| **CSPResNeXt-50** | Cutmix+Mixup | 77.7 | 94.4 |
| **CSPResNeXt-50** | Mosaic | 78.1 | 94.5 |
| **CSPResNeXt-50** | Blur | 77.5 | 93.8 |
|  |  |  |  |

※Mixup is presented by [[23]](https://arxiv.org/abs/1710.09412) and used by [[24]](https://arxiv.org/abs/1902.04103).

※CutMix is presented by [[25]](https://arxiv.org/abs/1905.04899).

※~~Have to check the implementation of mixup and cutmix~~.

3. Other

| Model | Method | Top-1 | Top-5 |
| :---- | :--------: | :---: | :---: |
| **CSPResNeXt-50** | Normal | 77.9 | 94.0 |
| **CSPResNeXt-50** | Smooth | 78.1 | 94.4 |

※Smooth means label smoothing, which is presented by [[26]](https://arxiv.org/abs/1512.00567).

# MS COCO

## GPU Real-time Models

| Model | Size | 1080ti *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | :-: | :----: |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 44 | 38.0 | 60.0 | 40.8 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1Y6vJQf-Vu9O0tB10IUYNttktA-DLp5T1) |
| **CSPDarknet53-PANet-SPP** | 512×512 | 51 | 38.7 | 61.3 | 41.7 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csdarknet53-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1ezwtlTmQ1woHGZNtmKUdmyx-jqFElafA) |
| **CSPResNet50-PANet-SPP** | 512×512 | 55 | 38.0 | 60.5 | 40.7 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnet50-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1Ctfeejgi3iUVL37yLLZD-er0iBq-ZbU0) |

※PANet is presented by [[15]](https://arxiv.org/abs/1803.01534).

※SPP is presented by [[16]](https://arxiv.org/abs/1406.4729).

## CPU Real-time Models

| Model | Size | 9900K *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | - | - |
| YOLOv3-tiny [[1]](https://arxiv.org/abs/1804.02767) | 416×416 | 54 | - | 33.1 | - | [cfg](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/cfg/yolov3-tiny.cfg) | [weight](https://pjreddie.com/media/files/yolov3-tiny.weights) |
| YOLOv3-tiny-PRN [[18]](http://openaccess.thecvf.com/content_ICCVW_2019/papers/LPCV/Wang_Enriching_Variety_of_Layer-Wise_Learning_Information_by_Gradient_Combination_ICCVW_2019_paper.pdf) | 416×416 | 71 | - | 33.1 | - | [cfg](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/cfg/yolov3-tiny-prn.cfg) | [weight](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/model/yolov3-tiny-prn.weights) |
| SNet49-ThunderNet* [[19]](https://arxiv.org/abs/1903.11752) | 320×320 | 47 | 19.1 | 33.7 | 19.6 | - | - |
| **Ours** | 320×320 | 102 | 15.3 | 34.2 | 12.0 | - | - |
|  |  |  |  |  |  |  |  |
| SNet146-ThunderNet* [[19]](https://arxiv.org/abs/1903.11752) | 320×320 | 32 | 23.6 | 40.2 | 24.5 | - | - |
| **Ours** | 320×320 | 52 | 19.4 | 40.0 | 17.0 | - | - |
|  |  |  |  |  |  |  |  |
| Pelee** [[7]](https://arxiv.org/abs/1804.06882) | 304×304 | 7 | 22.4 | 38.3 | 22.9 | - | - | 
| RefineDetLite** [[20]](https://arxiv.org/abs/1911.08855) | 320×320 | 8 | 26.8 | 46.6 | 27.4 | - | - |

※SNet49-ThunderNet* and SNet146-ThunderNet* are test on Xeon E5-2682v4.

※Pelee** and RefineDetLite** are test on i7-6700.

# Some tricks for improving AP

1. NMS threshold

| Model | Size | Threshold |  AP  | AP50 | AP75 | APS | APM | APL |
| :---- | :--: | :-------: |:--: | :--: | :--: | :-: | :-: | :-: |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 0.45 | 38.0 | 60.0 | 40.8 | 19.7 | 41.4 | 49.9 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 0.50 | 38.2 | **60.2** | 41.1 | 19.8 | 41.6 | 50.1 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 0.55 | 38.4 | 60.1 | 41.3 | 20.0 | 41.7 | 50.3 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | **0.60** | 38.5 | 60.0 | 41.7 | **20.1** | **41.9** | **50.4** |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 0.65 | **38.6** | 59.7 | 42.1 | **20.1** | **41.9** | **50.4** |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 0.70 | 38.5 | 59.2 | **42.4** | **20.1** | **41.9** | **50.4** |
|  |  |  |  |  |  |  |  |  |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 0.45 | 39.4 | 59.4 | 42.5 | 20.4 | 42.6 | 51.4 |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 0.50 | 39.7 | **59.5** | 42.7 | 20.5 | 42.5 | 51.7 |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 0.55 | 39.8 | **59.5** | 43.0 | 20.7 | 43.1 | 51.9 |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | **0.60** | 40.0 | 59.3 | 43.4 | 20.8 | 43.2 | 52.0 |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 0.65 | **40.1** | 59.0 | 43.8 | **20.9** | **43.4** | **52.1** |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 0.70 | **40.1** | 58.6 | **44.2** | **20.9** | **43.4** | **52.1** |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | **aware** | 40.0 | **59.5** | 43.4 | 20.8 | 43.2 | 52.0 |

※GIoU is presented by [[17]](https://arxiv.org/abs/1902.09630).

2. Activation function

| Model | Size | Activation |  AP  | AP50 | AP75 | APS | APM | APL |
| :---- | :--: | :--------: | :--: | :--: | :--: | :-: | :-: | :-: |
| **CSPPeleeNet-PRN** | 416×416 | Leaky ReLU | 23.1 | 44.5 | 22.0 | 6.6 | 24.4 | 35.3 |
| **CSPPeleeNet-PRN** | 416×416 | Swish | 24.1 | 45.8 | 23.3 | 6.8 | 26.1 | 35.5 |

3. Loss function

| Model | Size | Loss |  AP  | AP50 | AP75 | APS | APM | APL |
| :---- | :--: | :--: | :--: | :--: | :--: | :-: | :-: | :-: |
| **CSPResNeXt50-PANet-SPP** | 512×512 | MSE | 38.0 | 60.0 | 40.8 | 19.7 | 41.4 | 49.9 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | GIoU | 39.4 | 59.4 | 42.5 | 20.4 | 42.6 | 51.4 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | DIoU | 39.1 | 58.8 | 42.1 | 20.1 | 42.4 | 50.7 |
| **CSPResNeXt50-PANet-SPP** | 512×512 | CIoU | 39.6 | 59.2 | 42.6 | 20.5 | 42.9 | 51.6 |

※DIoU and CIoU are presented by [[27]](https://arxiv.org/abs/1911.08287).

# Reference

[[1] YOLOv3: An Incremental Improvement](https://arxiv.org/abs/1804.02767)

[[2] Deep Residual Learning for Image Recognition](https://arxiv.org/abs/1512.03385) (CVPR 2016)

[[3] Aggregated Residual Transformations for Deep Neural Networks](https://arxiv.org/abs/1611.05431) (CVPR 2017)

[[4] HarDNet: A Low Memory Traffic Network](https://arxiv.org/abs/1909.00948) (ICCV 2019)

[[5] Densely Connected Convolutional Networks](https://arxiv.org/abs/1608.06993) (CVPR 2017)

[[6] ELASTIC: Improving CNNs with Dynamic Scaling Policies](https://arxiv.org/abs/1812.05262) (CVPR 2019)

[[7] RefineDetLite: A Lightweight One-stage Object Detection Framework for CPU-only Devices](https://arxiv.org/abs/1911.08855)

[[8] Pelee: A Real-Time Object Detection System on Mobile Devices](https://arxiv.org/abs/1804.06882) (NeurIPS 2018)

[[9] Sparsely Aggregated Convolutional Networks](https://arxiv.org/abs/1801.05895) (ECCV 2018)

[[10] EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](https://arxiv.org/abs/1905.11946) (ICML 2019)

[[11] MobileNetV2: Inverted Residuals and Linear Bottlenecks](https://arxiv.org/abs/1801.04381) (CVPR 2018)

[[12] https://pjreddie.com/darknet/tiny-darknet/](https://pjreddie.com/darknet/tiny-darknet/)

[[13] Searching for Activation Functions](https://arxiv.org/abs/1710.05941)

[[14] Squeeze-and-Excitation Networks](https://arxiv.org/abs/1709.01507) (CVPR 2018)

[[15] Path Aggregation Network for Instance Segmentation](https://arxiv.org/abs/1803.01534) (CVPR 2018)

[[16] Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](https://arxiv.org/abs/1406.4729) (TPAMI 2015)

[[17] Generalized Intersection over Union: A Metric and A Loss for Bounding Box Regression](https://arxiv.org/abs/1902.09630) (CVPR 2019)

[[18] Enriching Variety of Layer-wise Learning Information by Gradient Combination](http://openaccess.thecvf.com/content_ICCVW_2019/papers/LPCV/Wang_Enriching_Variety_of_Layer-Wise_Learning_Information_by_Gradient_Combination_ICCVW_2019_paper.pdf) (ICCVW 2019)

[[19] ThunderNet: Towards Real-time Generic Object Detection](https://arxiv.org/abs/1903.11752) (ICCV 2019)

[[20] RefineDetLite: A Lightweight One-stage Object Detection Framework for CPU-only Devices](https://arxiv.org/abs/1911.08855)

[[21] MixConv: Mixed Depthwise Convolutional Kernels](https://arxiv.org/abs/1907.09595)

[[22] Mish: A Self Regularized Non-Monotonic Neural Activation Function](https://arxiv.org/abs/1908.08681)

[[23] mixup: Beyond Empirical Risk Minimization](https://arxiv.org/abs/1710.09412) (ICLR 2018)

[[24] Bag of Freebies for Training Object Detection Neural Networks](https://arxiv.org/abs/1902.04103)

[[25] CutMix: Regularization Strategy to Train Strong Classifiers with Localizable Features](https://arxiv.org/abs/1905.04899) (ICCV 2019)

[[26] Rethinking the Inception Architecture for Computer Vision](https://arxiv.org/abs/1512.00567) (CVPR 2016)

[[27] Distance-IoU Loss: Faster and Better Learning for Bounding Box Regression](https://arxiv.org/abs/1911.08287) (AAAI 2020)

# Acknowledgements
[https://github.com/AlexeyAB/darknet](https://github.com/AlexeyAB/darknet)

[https://github.com/ultralytics/yolov3](https://github.com/ultralytics/yolov3)
