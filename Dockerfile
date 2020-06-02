FROM jupyter/base-notebook:notebook-6.0.3
USER root
RUN apt-get update && \
    apt-get install --yes --no-install-recommends graphviz && \
    wget -O /tmp/gf_3.10-2_amd64.deb https://www.grammaticalframework.org/download/gf_3.10-2_amd64.deb && \
    sudo dpkg -i /tmp/gf_3.10-2_amd64.deb && \
    rm -f "/tmp/gf_3.10-2_amd64.deb" && \
    apt-get purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
USER jovyan
RUN pip install gf_kernel && \
    python -m gf_kernel.install
RUN mkdir tutorial
RUN wget -O ./tutorial/Tutorial.ipynb https://raw.githubusercontent.com/KWARC/gf_kernel/master/tutorial/Tutorial.ipynb
RUN wget -O ./tutorial/ExampleGer.gf https://raw.githubusercontent.com/KWARC/gf_kernel/master/tutorial/ExampleGer.gf
COPY notebooks /home/jovyan/notebooks