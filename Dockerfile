FROM continuumio/miniconda3:4.7.12

RUN apt-get update -y && \
    apt-get install -y build-essential curl swig && \
    curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt | xargs -n 1 -L 1 pip install && \
    conda install -y h2o jupyter && \
    pip install auto-sklearn \
                h2o 


