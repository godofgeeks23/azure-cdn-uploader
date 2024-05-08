# Azure CDN Uploader

Simple Shell script to upload files to Azure Blob Storage and generate its CDN URL.

## Installation and Usage

1. Clone this repository

2. Install the Azcopy CLI

```
wget https://azcopyvnext.azureedge.net/releases/release-10.24.0-20240326/azcopy_linux_amd64_10.24.0.tar.gz
tar -xvf azcopy_linux_amd64_10.24.0.tar.gz
sudo cp azcopy_linux_amd64_10.24.0/azcopy /usr/local/bin/
azcopy --version
```

3. Initialize the environment variables - rename `sample.env` to `.env` and fill in the values

4. Run the script

```
bash uploader.sh
```
