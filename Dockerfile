FROM python:3.8

WORKDIR /usr/src/app

COPY fine_tune_bert .

RUN pip install -q opencv-python

RUN pip install -q -U "tensorflow-text==2.9.*"

RUN pip install -q tf-models-official

RUN pip install -U tfds-nightly

CMD [ "python" "./.ipynb" ]