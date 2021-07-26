# Example Extension Pack

This is an example of an extension pack for Kodexa

## Getting Started

In order to get started with this example you should have Anaconda installed on your machine.

```bash
conda env create -f environment.yml
conda activate kodexa_example_extension
pip install -r requirements.txt
```
## Building Container

Once you have this project in your environment you will need to build the docker file and publish it to your docker registry. Then you will need to update the kodexa.yml to refer to this location

## Deploying Extension Pack

Once the image has been built in Docker you will be able to deploy this to your Kodexa instance. In order to do this you will need to perform the following steps
