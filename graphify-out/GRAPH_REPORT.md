# Graph Report - object-detection  (2026-06-19)

## Corpus Check
- 75 files · ~131,924 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 1395 nodes · 5018 edges · 27 communities detected
- Extraction: 34% EXTRACTED · 66% INFERRED · 0% AMBIGUOUS · INFERRED: 3314 edges (avg confidence: 0.56)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 0|Community 0]]
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 2|Community 2]]
- [[_COMMUNITY_Community 3|Community 3]]
- [[_COMMUNITY_Community 4|Community 4]]
- [[_COMMUNITY_Community 5|Community 5]]
- [[_COMMUNITY_Community 6|Community 6]]
- [[_COMMUNITY_Community 7|Community 7]]
- [[_COMMUNITY_Community 8|Community 8]]
- [[_COMMUNITY_Community 9|Community 9]]
- [[_COMMUNITY_Community 10|Community 10]]
- [[_COMMUNITY_Community 16|Community 16]]
- [[_COMMUNITY_Community 26|Community 26]]
- [[_COMMUNITY_Community 27|Community 27]]
- [[_COMMUNITY_Community 28|Community 28]]
- [[_COMMUNITY_Community 29|Community 29]]
- [[_COMMUNITY_Community 30|Community 30]]
- [[_COMMUNITY_Community 31|Community 31]]
- [[_COMMUNITY_Community 32|Community 32]]
- [[_COMMUNITY_Community 33|Community 33]]
- [[_COMMUNITY_Community 40|Community 40]]
- [[_COMMUNITY_Community 41|Community 41]]
- [[_COMMUNITY_Community 42|Community 42]]
- [[_COMMUNITY_Community 43|Community 43]]
- [[_COMMUNITY_Community 44|Community 44]]
- [[_COMMUNITY_Community 45|Community 45]]
- [[_COMMUNITY_Community 46|Community 46]]

## God Nodes (most connected - your core abstractions)
1. `DetectMultiBackend` - 148 edges
2. `Profile` - 128 edges
3. `Detect` - 127 edges
4. `Conv` - 126 edges
5. `Concat` - 113 edges
6. `C3` - 107 edges
7. `Bottleneck` - 105 edges
8. `DWConv` - 104 edges
9. `CrossConv` - 104 edges
10. `SPP` - 104 edges

## Surprising Connections (you probably didn't know these)
- `Parses command-line arguments for YOLOv5 model inference configuration.` --uses--> `SegmentationModel`  [INFERRED]
  yolov5\benchmarks.py → yolov5\models\yolo.py
- `Executes a test run if `opt.test` is True, otherwise starts training or inferenc` --uses--> `SegmentationModel`  [INFERRED]
  yolov5\benchmarks.py → yolov5\models\yolo.py
- `Classify` --uses--> `Context manager ensuring ordered operations in distributed training by making al`  [INFERRED]
  yolov5\models\common.py → yolov5\utils\torch_utils.py
- `Classify` --uses--> `Selects computing device (CPU, CUDA GPU, MPS) for YOLOv5 model deployment, loggi`  [INFERRED]
  yolov5\models\common.py → yolov5\utils\torch_utils.py
- `Classify` --uses--> `Fuses Conv2d and BatchNorm2d layers into a single Conv2d layer.      See https`  [INFERRED]
  yolov5\models\common.py → yolov5\utils\torch_utils.py

## Communities

### Community 0 - "Community 0"
Cohesion: 0.02
Nodes (120): ClientApp, predictLive(), predictRoute(), trainRoute(), DataIngestionArtifact, DataValidationArtifact, ModelPusherArtifacts, ModelTrainerArtifact (+112 more)

### Community 1 - "Community 1"
Cohesion: 0.12
Nodes (121): SiLU, Bottleneck, BottleneckCSP, C3, C3Ghost, C3SPP, C3TR, C3x (+113 more)

### Community 2 - "Community 2"
Cohesion: 0.02
Nodes (120): Albumentations, augment_hsv(), box_candidates(), CenterCrop, classify_albumentations(), classify_transforms(), copy_paste(), cutout() (+112 more)

### Community 3 - "Community 3"
Cohesion: 0.03
Nodes (134): AutoShape, DetectMultiBackend, LoadImages, YOLOv5 image/video dataloader, i.e. `python detect.py --source image.jpg/vid.mp4, Initializes iterator by resetting count and returns the iterator object itself., Rotates a cv2 image based on its orientation; supports 0, 90, and 180 degrees ro, Returns the number of files in the dataset., iOSModel (+126 more)

### Community 4 - "Community 4"
Cohesion: 0.03
Nodes (116): home(), LoadScreenshots, LoadStreams, Initializes a screenshot dataloader for YOLOv5 with specified source region, ima, Iterates over itself, enabling use in loops and iterable contexts., Initializes a stream loader for processing video streams with YOLOv5, supporting, Returns the number of sources in the dataset, supporting up to 32 streams at 30, main() (+108 more)

### Community 5 - "Community 5"
Cohesion: 0.03
Nodes (102): autobatch(), check_train_batch_size(), Checks and computes optimal training batch size for YOLOv5 model, given image si, Estimates optimal YOLOv5 batch size using `fraction` of CUDA memory., Callbacks, Initializes a Callbacks object to manage registered YOLOv5 training event hooks., Register a new action to a callback hook.          Args:             hook: Th, Returns all the registered actions by callback hook.          Args: (+94 more)

### Community 6 - "Community 6"
Cohesion: 0.03
Nodes (77): autopad(), Detections, _load_metadata(), Logs the string representation of the current object's state via the LOGGER., Returns the number of results stored, overrides the default len(results)., Returns a string representation of the model's results, suitable for printing, o, Returns a string representation of the YOLOv5 object, including its class and fo, Initializes YOLOv5 Proto module for segmentation with input, proto, and mask cha (+69 more)

### Community 7 - "Community 7"
Cohesion: 0.02
Nodes (72): Weighted sum of 2 or more layers https://arxiv.org/abs/1911.09070., Initializes a module to sum outputs of layers with number of inputs `n` and opti, Processes input through a customizable weighted sum of `n` inputs, optionally ap, Initializes MixConv2d with mixed depth-wise convolutional layers, taking input a, Initializes an ensemble of models to be used for aggregated predictions., Sum, crop_mask(), labels_to_class_weights() (+64 more)

### Community 8 - "Community 8"
Cohesion: 0.04
Nodes (55): Initializes Albumentations class for optional data augmentation in YOLOv5 with s, ClearmlLogger, construct_dataset(), Main Logger class for ClearML experiment tracking., Log scalars/metrics to ClearML.          arguments:         metrics (dict) Me, Log model weights to ClearML.          arguments:         model_path (PosixPa, Log final metrics to a summary table.          arguments:         metrics (di, Log image as plot in the plot section of ClearML.          arguments: (+47 more)

### Community 9 - "Community 9"
Cohesion: 0.05
Nodes (30): download(), CometLogger, Returns a new or existing Comet.ml experiment based on mode and optional experim, Logs metrics to the current experiment, accepting a dictionary of metric names a, Logs parameters to the current experiment, accepting a dictionary of parameter n, Logs a file or directory as an asset to the current experiment., Logs in-memory data as an asset to the current experiment, with optional kwargs., Logs an image to the current experiment with optional kwargs. (+22 more)

### Community 10 - "Community 10"
Cohesion: 0.08
Nodes (19): AconC, backward(), F, FReLU, Hardswish, MemoryEfficientMish, MetaAconC, Mish (+11 more)

### Community 16 - "Community 16"
Cohesion: 1.0
Nodes (1): Method Name :   read_object          Description :   This method reads the obj

### Community 26 - "Community 26"
Cohesion: 1.0
Nodes (1): Applies the Sigmoid-weighted Linear Unit (SiLU) activation function.

### Community 27 - "Community 27"
Cohesion: 1.0
Nodes (1): Applies the Hardswish activation function, compatible with TorchScript, CoreML,

### Community 28 - "Community 28"
Cohesion: 1.0
Nodes (1): Applies the Mish activation function, a smooth alternative to ReLU.

### Community 29 - "Community 29"
Cohesion: 1.0
Nodes (1): Applies the Mish activation function, a smooth ReLU alternative, to the input te

### Community 30 - "Community 30"
Cohesion: 1.0
Nodes (1): Computes the gradient of the Mish activation function with respect to input `x`.

### Community 31 - "Community 31"
Cohesion: 1.0
Nodes (1): Plots confusion matrix using seaborn, optional normalization; can save plot to s

### Community 32 - "Community 32"
Cohesion: 1.0
Nodes (1): Converts hexadecimal color `h` to an RGB tuple (PIL-compatible) with order (R, G

### Community 33 - "Community 33"
Cohesion: 1.0
Nodes (1): Returns the model runtime.

### Community 40 - "Community 40"
Cohesion: 1.0
Nodes (1): AP@0.5 of all classes.          Return:             (nc, ) or [].

### Community 41 - "Community 41"
Cohesion: 1.0
Nodes (1): AP@0.5:0.95         Return:             (nc, ) or [].

### Community 42 - "Community 42"
Cohesion: 1.0
Nodes (1): Mean precision of all classes.          Return:             float.

### Community 43 - "Community 43"
Cohesion: 1.0
Nodes (1): Mean recall of all classes.          Return:             float.

### Community 44 - "Community 44"
Cohesion: 1.0
Nodes (1): Mean AP@0.5 of all classes.          Return:             float.

### Community 45 - "Community 45"
Cohesion: 1.0
Nodes (1): Mean AP@0.5:0.95 of all classes.          Return:             float.

### Community 46 - "Community 46"
Cohesion: 1.0
Nodes (1): Returns the class index for average precision, shared by both box and mask metri

## Knowledge Gaps
- **206 isolated node(s):** `Method Name :   read_object          Description :   This method reads the obj`, `Method Name :   get_bucket          Description :   This method gets the bucke`, `Method Name :   is_model_present          Description :   This method validate`, `Method Name :   get_file_object          Description :   This method gets the`, `Method Name :   load_model          Description :   This method loads the mode` (+201 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **Thin community `Community 16`** (1 nodes): `Method Name :   read_object          Description :   This method reads the obj`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 26`** (1 nodes): `Applies the Sigmoid-weighted Linear Unit (SiLU) activation function.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 27`** (1 nodes): `Applies the Hardswish activation function, compatible with TorchScript, CoreML,`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 28`** (1 nodes): `Applies the Mish activation function, a smooth alternative to ReLU.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 29`** (1 nodes): `Applies the Mish activation function, a smooth ReLU alternative, to the input te`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 30`** (1 nodes): `Computes the gradient of the Mish activation function with respect to input `x`.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 31`** (1 nodes): `Plots confusion matrix using seaborn, optional normalization; can save plot to s`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 32`** (1 nodes): `Converts hexadecimal color `h` to an RGB tuple (PIL-compatible) with order (R, G`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 33`** (1 nodes): `Returns the model runtime.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 40`** (1 nodes): `AP@0.5 of all classes.          Return:             (nc, ) or [].`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 41`** (1 nodes): `AP@0.5:0.95         Return:             (nc, ) or [].`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 42`** (1 nodes): `Mean precision of all classes.          Return:             float.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 43`** (1 nodes): `Mean recall of all classes.          Return:             float.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 44`** (1 nodes): `Mean AP@0.5 of all classes.          Return:             float.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 45`** (1 nodes): `Mean AP@0.5:0.95 of all classes.          Return:             float.`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 46`** (1 nodes): `Returns the class index for average precision, shared by both box and mask metri`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `DetectMultiBackend` connect `Community 3` to `Community 1`, `Community 2`, `Community 4`, `Community 5`, `Community 6`?**
  _High betweenness centrality (0.129) - this node is a cross-community bridge._
- **Why does `train()` connect `Community 5` to `Community 0`, `Community 2`, `Community 3`, `Community 4`, `Community 7`, `Community 8`, `Community 9`, `Community 10`?**
  _High betweenness centrality (0.121) - this node is a cross-community bridge._
- **Why does `Profile` connect `Community 6` to `Community 0`, `Community 1`, `Community 3`, `Community 4`, `Community 5`?**
  _High betweenness centrality (0.105) - this node is a cross-community bridge._
- **Are the 143 inferred relationships involving `DetectMultiBackend` (e.g. with `Parses command-line arguments for YOLOv5 detection, setting inference options an` and `Executes YOLOv5 model inference with given options, checking requirements before`) actually correct?**
  _`DetectMultiBackend` has 143 INFERRED edges - model-reasoned connections that need verification._
- **Are the 123 inferred relationships involving `Profile` (e.g. with `Parses command-line arguments for YOLOv5 detection, setting inference options an` and `Executes YOLOv5 model inference with given options, checking requirements before`) actually correct?**
  _`Profile` has 123 INFERRED edges - model-reasoned connections that need verification._
- **Are the 121 inferred relationships involving `Detect` (e.g. with `iOSModel` and `Initializes an iOS compatible model with normalization based on image dimensions`) actually correct?**
  _`Detect` has 121 INFERRED edges - model-reasoned connections that need verification._
- **Are the 105 inferred relationships involving `Conv` (e.g. with `Profile` and `TritonRemoteModel`) actually correct?**
  _`Conv` has 105 INFERRED edges - model-reasoned connections that need verification._