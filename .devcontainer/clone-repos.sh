#!/usr/bin/bash
whoami
id
set -x
# shellcheck disable=SC2016
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' | tee -a /home/"${USERNAME}"/.zprofile /home/"${USERNAME}"/.provile
echo "machine dev.azure.com login pat password ${AZ_READ_TOKEN}" > ~/.netrc

gpg --import /home/developer/gpg-key.asc
git config --global commit.gpgsign true

keyid=$(gpg --import-options show-only --import /home/developer/gpg-key.asc | head -n-3 | tail -n-1 | tr -d '[:blank:]')
git config --global user.signingkey "${keyid}"


cd "$(dirname "${LOCAL_WORKSPACE_FOLDER}")" || exit

sudo chown "${USERNAME}":"${USERNAME}" -R /home/"${USERNAME}"

git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-bgz "./havdb-bgz"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/eplf-einnahmeplattform-tests "./eplf-einnahmeplattform-tests"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-bgz-openshift "./havdb-bgz-openshift"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-einnahmeplattform-openshift "./havdb-einnahmeplattform-openshift"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-datum "./havdb-commons-go-datum"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-kafka "./havdb-commons-go-kafka"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-commons-go-tx "./havdb-commons-go-tx"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/havdb-tx-io-box "./havdb-tx-io-box"
git clone git@ssh.dev.azure.com:v3/havdb-labor/havdb/eplf-deployments "./eplf-deployments"
