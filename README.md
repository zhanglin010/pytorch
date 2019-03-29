# pytorch
This repository is a template for customizing pytorch image. It includes a Dockerfile and a Singularity recipe for building Docker images and Singularity images.


### Docker
Base image is nvcr.io/nvidia/pytorch, and two packages needed for the project were installed.

	opt/conda/bin/conda install -y matplotlib seaborn

To build you own Docker image using this Dockerfile.

	docker build -t name_of_image .


### Singularity
Base image is docker://tensorflow/tensorflow, and you can also install other packages by modifying this line of the Singularity recipe.

	pip install --no-cache-dir xxx

Build your own Singularity images: use Singularity Hub.

Run your program with GPU.

	singularity exec --nv IMAGE[:TAG] [COMMAND]
	# for example:
	# singularity exec --nv xxx.simg python xxx.py