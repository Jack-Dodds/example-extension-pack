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

Once you have this project in your environment you will need to build the docker file and publish it to your docker registry. Then you will need to update the kodexa.yml to refer to this location.

```yaml
source:
  type: docker
  location: docker.io/kodexa/example-extension:latest
```

## Deploying Extension Pack

Once the image has been built in Docker you will be able to deploy this to your Kodexa instance. In order to do this you will need to perform the following steps

```bash
kodexa package
```

This will create a dist folder that contains the "enriched" metadata from your kodexa.yml.

You will then need to push this dist folder to GitHub (note in a production environment you would typically push to AWS S3).

Once you have pushed the dist folder you will need to get the raw URL.

For example: 

https://raw.githubusercontent.com/kodexa-ai/example-extension-pack/main/dist/example-extension-1.0.0.json

You can then go to your Kodexa server UI, choose the Components / Extension Packs and deploy using the URL above. 



