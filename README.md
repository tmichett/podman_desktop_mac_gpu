# GPU Container Access for MacOS

https://podman-desktop.io/docs/podman/gpu

Created containerfile for testing GPU

podman run --rm -it --device /dev/dri --name gpu-info quay.io/slopezpa/fedora-vgpu vulkaninfo | grep "GPU"


		GPU id = 0 (Virtio-GPU Venus (Apple M3 Max))
		GPU id = 1 (llvmpipe (LLVM 17.0.6, 128 bits))
GPU0:
	deviceType        = PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU
	deviceName        = Virtio-GPU Venus (Apple M3 Max)
GPU1:

 podman run --rm -it --device /dev/dri --name gpu-info quay.io/tmichett/mac-podman-gpu vulkaninfo | grep "GPU"


		GPU id = 0 (llvmpipe (LLVM 19.1.0, 128 bits))
GPU0:
