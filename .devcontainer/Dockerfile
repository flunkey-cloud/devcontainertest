FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ARG USERNAME=${USERNAME:-developer}
ARG USERUID=${USERUID:-1000}
ARG USERGID=${USERGID:-1000}
ARG CONFIGUREZSHASDEFAULTSHELL=${CONFIGUREZSHASDEFAULTSHELL:-true}
ARG NONFREEPACKAGES=${NONFREEPACKAGES:-true}

USER root
RUN apt update &&\
    apt install --no-install-recommends -y \
    build-essential \
    curl \
    wget \
    git \
    locales \
    nano \
    python3 \
    python3-pip \
    gnupg2 \
    curl \
    unzip \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    libfreetype6 \
    procps &&\
    apt clean

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"

WORKDIR /tmp
RUN userdel -r ubuntu && \
    git clone https://github.com/devcontainers/features.git && \
    cd features/src/common-utils && \
    bash install.sh
#    groupadd --gid $USER_GID $USERNAME &&\
#    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME &&\
#    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME &&\
#    chmod 0440 /etc/sudoers.d/$USERNAME

ARG MOBY=false
ARG VERSION=latest
ARG ENABLE_NONROOT_DOCKER=true
ARG INSTALLDOCKERBUILDX=true
RUN cd features/src/docker-outside-of-docker && \
    bash install.sh

#RUN git clone https://github.com/meaningful-ooo/devcontainer-features.git && \
#    cd devcontainer-features/src/homebrew && \
#    bash install.sh
#
USER ${USERNAME}
WORKDIR /home/${USERNAME}
RUN brew install gcc just go-task go azure-cli argocd helm kubernetes-cli kube-linter kubectx bpytop openshift-cli

ENV CGO_ENABLED=0 \
   GO111MODULE=on \
   GOPATH=/home/${USERNAME}/go

RUN --mount=type=cache,id=gobuild,target=/${USERNAME}/.cache/go-build \
   --mount=type=cache,id=gopkg,target=/go/pkg/mod/ \
   go install github.com/mgechev/revive@latest && \
   go install golang.org/x/vuln/cmd/govulncheck@latest && \
   go install github.com/securego/gosec/v2/cmd/gosec@latest && \
   go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2 && \
   go install github.com/go-delve/delve/cmd/dlv@latest && \
   go install github.com/google/wire/cmd/wire@v0.6.0 && \
   go install github.com/vektra/mockery/v2@latest && \
   go install golang.org/x/tools/cmd/stringer@latest && \
   go install github.com/CycloneDX/cyclonedx-gomod/cmd/cyclonedx-gomod@v1.4.0 && \
   go install golang.org/x/tools/cmd/cover@latest && \
   go install github.com/axw/gocov/gocov@latest && \
   go install github.com/AlekSi/gocov-xml@latest && \
   go install github.com/jstemmer/go-junit-report/v2@latest && \
   go install github.com/alexec/junit2html@latest && \
   go install github.com/matm/gocov-html/cmd/gocov-html@latest && \
   go install oss.terrastruct.com/d2@latest
