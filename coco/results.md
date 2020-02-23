# MSCOCO

## CSPResNeXt-50 optimal

| Scale | Mosaic | IoU Threshold | Genetic | Label Smoothing | Anchor | AP | AP50 | AP75 | cfg | weight |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|  |  |  |  |  |  |  |  |  | - | - |
| :heavy_check_mark: |  |  |  |  |  | 37.7 | 59.9 | 40.5 | - | - |
|  | :heavy_check_mark: |  |  |  |  | 39.1 | 61.8 | 42.0 | - | - |
|  |  | :heavy_check_mark: |  |  |  | 36.9 | 59.7 | 39.4 | - | - |
|  |  |  | :heavy_check_mark: |  |  | 38.9 | 61.7 | 41.9 | - | - |
|  |  |  |  | :heavy_check_mark: |  | 37.2 | 59.4 | 39.9 | - | - |
| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |  | :heavy_check_mark: | 42.4 | 64.4 | 45.9 | - | - |

| Model | Size | *fps* |  AP  | AP50 | AP75 | APS | APM | APL | cfg | weight |
| :---- | :--: | :----------: | :--: | :--: | :--: | :-: | :-: | :-: | :-: | :----: |
| **PANet-(SPP, CIoU)** | 512×512 | 44 | 42.4 | 64.4 | 45.9 | 23.2 | 45.5 | 55.3 | - | - |
| **PANet-(SPP, CIoU)** | 608×608 | 35 | 43.2 | 65.4 | 47.0 | 25.7 | 46.7 | 53.3 | - | - |
| **PANet-(SPP, GIoU)** | 512×512 | - | 42.4 | 64.4 | 45.9 | 23.3 | 45.9 | 55.0 | - | - |
| **PANet-(SPP, GIoU)** | 608×608 | - | 43.1 | 65.4 | 47.0 | 26.0 | 46.9 | 52.8 | - | - |
| **PANet-(SPP, MSE)** | 512×512 | - | 40.3 | 64.0 | 43.1 | 20.9 | 43.7 | 53.7 | - | - |
| **PANet-(SPP, MSE)** | 608×608 | - | 41.2 | 65.0 | 44.4 | 23.4 | 44.8 | 52.0 | - | - |
| **PANet-(SPP, SAM, CIoU)** | 512×512 | - | 42.7 | 64.6 | 46.3 | 23.7 | 46.1 | 55.3 | - | - |
| **PANet-(SPP, SAM, CIoU)** | 608×608 | - | 43.2 | 65.4 | 47.1 | 26.1 | 46.7 | 53.2 | - | - |
| **PANet-(SPP, RFB, CIoU)** | 512×512 | - | 41.8 | 62.7 | 45.1 | 22.7 | 44.3 | 55.0 | - | - |
| **PANet-(SPP, RFB, CIoU)** | 608×608 | - | 42.7 | 63.8 | 46.4 | 24.8 | 45.4 | 53.7 | - | - |
| **PANet-(SPP, RFBN, CIoU)** | 512×512 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, RFBN, CIoU)** | 608×608 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, RFBN, ASFF, CIoU)** | 512×512 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, RFBN, ASFF, CIoU)** | 608×608 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, BiFPN, CIoU)** | 512×512 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, BiFPN, CIoU)** | 608×608 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, SAM, G, CIoU)** | 512×512 | - | - | - | - | - | - | - | - | - |
| **PANet-(SPP, SAM, G, CIoU)** | 608×608 | - | - | - | - | - | - | - | - | - |
