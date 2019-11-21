# Cross Stage Partial Networks
This is the implementation of "???" using Darknet framwork.

For installing Darknet framework, you can refer to [darknet(AlexeyAB)](https://github.com/AlexeyAB/darknet).

# ImageNet

## Big Models

| Model | #Parameter | BFLOPs | Top-1 | Top-5 | cfg | weight |
| :---- | :--------: | :----: | :---: | :---: | :-: | :----: |
|  |  |  |  |  |
| DarkNet53 [[1]](https://arxiv.org/abs/1804.02767) | 41.57M | 18.57 | 77.2 | 93.8 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/darknet53.cfg) | [weight](https://pjreddie.com/media/files/darknet53.weights) |
| **CSPDarkNet53** | 27.61M **(-34%)** | 13.07 **(-30%)** | 77.2 **(=)** | 93.6 **(-0.2)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csdarknet53.cfg) | [weight](https://drive.google.com/open?id=1dZJIxngmFpQJvsa6y7XADfSxkXCjJTzp) |
|  |  |  |  |  |
| ResNet-50 [[2]](https://arxiv.org/abs/1512.03385) | 22.73M | 9.74 | 75.8 | 92.9 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnet50.cfg) | [weight](https://pjreddie.com/media/files/resnet50.weights) |
| **CSPResNet-50** | 21.57M **(-5%)** | 8.97 **(-8%)** | 76.6 **(+0.8)** | 93.3 **(+0.4)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnet50.cfg) | [weight](https://drive.google.com/open?id=1pNU6DctLlf3mnJI-opZL6kCx_hSNsEKj) |
|  |  |  |  |  |
| ResNeXt-50 [[3]](https://arxiv.org/abs/1611.05431) | 22.19M | 10.11 | 77.8 | 94.2 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnext50.cfg) | [weight](https://pjreddie.com/media/files/resnext50.weights) |
| **CSPResNeXt-50** | 20.50M **(-8%)** | 7.930 **(-22%)** | 77.9 **(+0.1)** | 94.0 **(-0.2)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50.cfg) | [weight](https://drive.google.com/open?id=1IxKu5lAYCo4UpzAl5pOBIDAvC843vjn1) |
| HarDNet-138s [[4]](https://arxiv.org/abs/1909.00948) | 35.5M | 13.4 | 77.8 | - | - | - |
| DenseNet-264-32 [[5]](https://arxiv.org/abs/1608.06993) | 27.21M | 11.03 | 77.8 | 93.9 | - | - |
| ResNet-152 [[2]](https://arxiv.org/abs/1512.03385) | 60.2M | 22.6 | 77.8 | 93.6 | - | - |
|  |  |  |  |  |
| DenseNet-201-Elastic [[6]](https://arxiv.org/abs/1812.05262) | 19.48M | 8.77 | 77.9 | 94.0 | - | - |
| **CSPDenseNet-201-Elastic** | 20.17M **(+4%)** | 7.13 **(-19%)** | 77.9 **(=)** | 94.0 **(=)** | - | - |
|  |  |  |  |  |



## Small Models

| Model | #Parameter | BFLOPs | Top-1 | Top-5 | cfg | weight |
| :---- | :--------: | :----: | :---: | :---: | :-: | :----: |
|  |  |  |  |  |
| PeleeNet [[7]](https://arxiv.org/abs/1804.06882) | 2.79M | 1.017 | 70.7 | 90.0 | - | - |
| PeleeNet-swish | 2.79M | 1.017 | 71.5 | 90.7 | - | - |
| PeleeNet-swish-SE | 2.81M | 1.017 | 72.1 | 91.0 | - | - |
| **CSPPeleeNet** | 2.83M **(+1%)** | 0.888 **(-13%)** | 70.9 **(+0.2)** | 90.2 **(+0.2)** | - | - |
| **CSPPeleeNet-swish** | 2.83M **(+1%)** | 0.888 **(-13%)** | 71.7 **(+0.2)** | 90.8 **(+0.1)** | - | - |
| **CSPPeleeNet-swish-SE** | 2.85M **(+1%)** | 0.888 **(-13%)** | 72.4 **(+0.3)** | 91.0 **(=)** | - | - |
| SparsePeleeNet [[8]](https://arxiv.org/abs/1801.05895) | 2.39M | 0.904 | 69.6 | 89.3 | - | - |
|  |  |  |  |  |
| EfficientNet-B0* [[9]](https://arxiv.org/abs/1905.11946) | 4.81M | 0.915 | 71.3 | 90.4 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/enetb0.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/enetb0_final.weights) |
| EfficientNet-B0 (official) [[9]](https://arxiv.org/abs/1905.11946) | - | - | 70.0 | 88.9 | - | - |
|  |  |  |  |  |
| MobileNet-v2 [[10]](https://arxiv.org/abs/1801.04381) | 3.47M | 0.858 | 67.0 | 87.7 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/mobilenet-v2.cfg) | [weight](https://drive.google.com/file/d/1lW87XQtZIYKIqu8DHvJwBUupJBh4Zpdl/view?usp=sharing) |
| **CSPMobileNet-v2** | 2.51M **(-28%)** | 0.764 **(-11%)** | 67.7 **(+0.7)** | 88.3 **(+0.6)** | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csmobilenet-v2.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/csmobilenet-v2_final.weights) |
|  |  |  |  |  |
| Darknet Ref. [[11]](https://pjreddie.com/darknet/tiny-darknet/) | 7.31M | 0.96 | 61.1 | 83.0 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/darknet.cfg) | [weight](https://pjreddie.com/media/files/darknet.weights) |
| **CSPDenseNet Ref.** | 3.48M **(-52%)** | 0.886 **(-8%)** | 65.7 **(+4.6)** | 86.6 **(+3.6)** | - | - |
| **CSPPeleeNet Ref.** | 4.10M **(-44%)** | 1.103 **(+15%)** | 68.9 **(+7.8)** | 88.7 **(+5.7)** | - | - |
| **CSPDenseNetb Ref.** | 1.38M **(-81%)** | 0.631 **(-34%)** | 64.2 **(+3.1)** | 85.5 **(+2.5)** | - | - |
| **CSPPeleeNetb Ref.** | 2.01M **(-73%)** | 0.897 **(-7%)** | 67.8 **(+6.7)** | 88.1 **(+5.1)** | - | - |
|  |  |  |  |  |
| ResNet-10 [[2]](https://arxiv.org/abs/1512.03385) | 5.24M | 2.273 | 63.5 | 85.0 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/resnet10.cfg) | [weight](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/weight/resnet10_final.weights) |
| **CSPResNet-10** | 2.73M **(-48%)** | 1.905 **(-16%)** | 65.3 **(+1.8)** | 86.5 **(+1.5)** | - | - |
|  |  |  |  |  |

※EfficientNet* is implemented by Darknet framework.

※EfficientNet(official) is trained by [official code](https://github.com/tensorflow/tpu/tree/master/models/official/efficientnet) with batch size equals to 256.

※Swish activation function is presented by [[12]](https://arxiv.org/abs/1710.05941).

※Squeeze-and-excitation (SE) network is presented by [[13]](https://arxiv.org/abs/1709.01507).

# MS COCO

## GPU Real-time Models

| Model | Size | 1080ti *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | :-: | :----: |
| **CSPResNeXt50-PANet-SPP** | 512×512 | 44 | 38.0 | 60.0 | 40.8 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1Y6vJQf-Vu9O0tB10IUYNttktA-DLp5T1) |
| **CSPResNeXt50-PANet-SPP-GIoU** | 512×512 | 44 | 39.4 | 59.4 | 42.5 | [cfg](https://github.com/WongKinYiu/CrossStagePartialNetworks/blob/master/cfg/csresnext50-panet-spp.cfg) | [weight](https://drive.google.com/open?id=1idBDUSLbP7v4lc9ivkvlnxYk96PdS5hr) |

※PANet is presented by [[14]](https://arxiv.org/abs/1803.01534).

※SPP is presented by [[15]](https://arxiv.org/abs/1406.4729).

※GIoU is presented by [[16]](https://arxiv.org/abs/1902.09630).

## CPU Real-time Models

| Model | Size | 9900K *fps* |  AP  | AP50 | AP75 | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | - | - |
| YOLOv3-tiny [[1]](https://arxiv.org/abs/1804.02767) | 320×320 | 54 | - | 33.1 | - | [cfg](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/cfg/yolov3-tiny.cfg) | [weight](https://pjreddie.com/media/files/yolov3-tiny.weights) |
| YOLOv3-tiny-PRN [[17]](http://openaccess.thecvf.com/content_ICCVW_2019/papers/LPCV/Wang_Enriching_Variety_of_Layer-Wise_Learning_Information_by_Gradient_Combination_ICCVW_2019_paper.pdf) | 320×320 | 71 | - | 33.1 | - | [cfg](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/cfg/yolov3-tiny-prn.cfg) | [weight](https://github.com/WongKinYiu/PartialResidualNetworks/blob/master/model/yolov3-tiny-prn.weights) |
| SNet49-ThunderNet* [[18]](https://arxiv.org/abs/1903.11752) | 320×320 | 47 | 19.1 | 33.7 | 19.6 | - | - |
| **Ours** | 320×320 | 102 | 15.3 | 34.2 | 12.0 | - | - |
|  |  |  |  |  |  |  |  |
| SNet146-ThunderNet* [[18]](https://arxiv.org/abs/1903.11752) | 320×320 | 32 | 23.6 | 40.2 | 24.5 | - | - |
| **Ours** | 320×320 | 52 | 19.4 | 40.0 | 17.0 | - | - |
|  |  |  |  |  |  |  |  |
| Pelee** [[7]](https://arxiv.org/abs/1804.06882) | 304×304 | 7 | 22.4 | 38.3 | 22.9 | - | - | 
| RefineDetLite** [[19]](https://arxiv.org/abs/1911.08855) | 320×320 | 8 | 26.8 | 46.6 | 27.4 | - | - |

※SNet49-ThunderNet* and SNet146-ThunderNet* are test on Xeon E5-2682v4.

※Pelee** and RefineDetLite** are test on i7-6700.

# Reference

[[1] YOLOv3: An Incremental Improvement](https://arxiv.org/abs/1804.02767)

[[2] Deep Residual Learning for Image Recognition](https://arxiv.org/abs/1512.03385) (CVPR 2016)

[[3] Aggregated Residual Transformations for Deep Neural Networks](https://arxiv.org/abs/1611.05431) (CVPR 2017)

[[4] HarDNet: A Low Memory Traffic Network](https://arxiv.org/abs/1909.00948) (ICCV 2019)

[[5] Densely Connected Convolutional Networks](https://arxiv.org/abs/1608.06993) (CVPR 2017)

[[6] ELASTIC: Improving CNNs with Dynamic Scaling Policies](https://arxiv.org/abs/1812.05262) (CVPR 2019)

[[7] Pelee: A Real-Time Object Detection System on Mobile Devices](https://arxiv.org/abs/1804.06882) (NeurIPS 2018)

[[8] Sparsely Aggregated Convolutional Networks](https://arxiv.org/abs/1801.05895) (ECCV 2018)

[[9] EfficientNet: Rethinking Model Scaling for Convolutional Neural Networks](https://arxiv.org/abs/1905.11946) (ICML 2019)

[[10] MobileNetV2: Inverted Residuals and Linear Bottlenecks](https://arxiv.org/abs/1801.04381) (CVPR 2018)

[[11] https://pjreddie.com/darknet/tiny-darknet/](https://pjreddie.com/darknet/tiny-darknet/)

[[12] Searching for Activation Functions](https://arxiv.org/abs/1710.05941)

[[13] Squeeze-and-Excitation Networks](https://arxiv.org/abs/1709.01507) (CVPR 2018)

[[14] Path Aggregation Network for Instance Segmentation](https://arxiv.org/abs/1803.01534) (CVPR 2018)

[[15] Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](https://arxiv.org/abs/1406.4729) (TPAMI 2015)

[[16] Generalized Intersection over Union: A Metric and A Loss for Bounding Box Regression](https://arxiv.org/abs/1902.09630) (CVPR 2019)

[[17] Enriching Variety of Layer-wise Learning Information by Gradient Combination](http://openaccess.thecvf.com/content_ICCVW_2019/papers/LPCV/Wang_Enriching_Variety_of_Layer-Wise_Learning_Information_by_Gradient_Combination_ICCVW_2019_paper.pdf) (ICCVW 2019)

[[18] ThunderNet: Towards Real-time Generic Object Detection](https://arxiv.org/abs/1903.11752) (ICCV 2019)

[[19] RefineDetLite: A Lightweight One-stage Object Detection Framework for CPU-only Devices](https://arxiv.org/abs/1911.08855)
