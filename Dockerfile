# We use the iqsharp-base image, as that includes
# the .NET Core SDK, IQ#, and Jupyter Notebook already
# installed for us.
FROM mcr.microsoft.com/quantum/iqsharp-base:0.12.20100504

# Add metadata indicating that this image is used for the katas.
ENV IQSHARP_HOSTING_ENV=ieee-quantum-week-2020-workshop-binder

# Make sure the contents of our repo are in ${HOME}
# Required for mybinder.org
COPY . ${HOME}

USER root

RUN chown -R ${USER} ${HOME}

USER ${USER}

# Set the working directory to $HOME (/home/jovyan/)
WORKDIR ${HOME}

# Set default command when running a Docker container instance
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
