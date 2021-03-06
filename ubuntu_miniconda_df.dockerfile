# Download the ubuntu image
FROM ubuntu

# Install wget
RUN apt update
RUN apt install -y wget

# Download and install miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b

# Add miniconda to PATH
ENV PATH="/root/miniconda3/bin:$PATH"

# Initialize the conda shell
RUN conda init bash