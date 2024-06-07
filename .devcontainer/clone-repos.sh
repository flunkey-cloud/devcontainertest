#!/usr/bin/bash

# shellcheck disable=SC2016
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/"${USERNAME}"/.zshrc

cd "$(dirname "${LOCAL_WORKSPACE_FOLDER}")" || exit

git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-bgz
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/eplf-einnahmeplattform-tests
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-bgz-openshift
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-einnahmeplattform-openshift
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-datum
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-kafka
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-tx
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-tx-io-box
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/eplf-deployments