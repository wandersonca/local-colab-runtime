FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN pip install --upgrade jupyter_http_over_ws>=0.0.7 && \
  jupyter serverextension enable --py jupyter_http_over_ws

ENTRYPOINT [ "jupyter", "notebook", "--NotebookApp.allow_origin='https://colab.research.google.com'", "--port=8888", "--NotebookApp.port_retries=0", "--ip=0.0.0.0",  "--allow-root"]
