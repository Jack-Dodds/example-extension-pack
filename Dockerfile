FROM continuumio/miniconda3:latest

RUN mkdir /opt/kodexa
RUN mkdir /opt/extension-pack
WORKDIR /opt/extension-pack

ADD example_pack example_pack
COPY environment.yml .
COPY requirements.txt .
COPY kodexa.yml .

RUN apt update \
    && conda env update -f environment.yml -n base && pip install -r requirements.txt && kodexa package

# Make RUN commands use the new environment:
SHELL ["/opt/conda/bin/conda", "run", "-n", "base", "/bin/bash", "-c"]

# We need to make sure our Conda env is correct before we start the bridge
CMD ["/bin/sh","-c","/opt/conda/bin/conda run --no-capture-output -n base && wget -O - http://kodexa-dharma/extension_pack_bridge.py | python3 -"]