# Use the ubuntu_miniconda_df as the base image
FROM ubuntu_miniconda_df

# Install flask and waitress
RUN conda install -y flask waitress

# Copy the flask app from host to container
COPY ./hello_flask_app /hello_flask_app

# Change directory to the hello_flask_app folder
WORKDIR /hello_flask_app

# Run the waitress-serve command
CMD [ "waitress-serve", "--host=0.0.0.0","--port=5050","hello_flask:app" ]

