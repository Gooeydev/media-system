FROM gitpod/workspace-full
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/


RUN sudo apt-get update && sudo apt-get upgrade -y
RUN sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN echo $(lsb_release -cs)
RUN ["sudo", "add-apt-repository", "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"]
