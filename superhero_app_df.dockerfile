FROM ubuntu_miniconda_df

RUN conda install -y flask waitress


COPY ./superheros /superheros

WORKDIR /superheros

CMD ["waitress-serve","--host=0.0.0.0","--port=5050","super_app:app"]