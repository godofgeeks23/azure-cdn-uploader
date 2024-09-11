# Azure CDN Uploader

A simple shell script to upload files to Azure Blob Storage and generate its CDN enabled URL.

NOTE: CDN URL is generated only if the Azure CDN is enabled for the Azure Blob Storage account.
```
To enable Azure CDN for Azure Blob Storage, refer to the [Official Documentation](https://learn.microsoft.com/en-us/azure/cdn/cdn-create-a-storage-account-with-cdn).
```

## Installation and Usage instructions

1. Clone this github repository

```
git clone https://github.com/godofgeeks23/azure-cdn-uploader.git
```

2. Install the AzCopy-CLI tool

Download the latest version of Azcopy CLI tool from the [Official Microsoft Azure website](https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10#download-azcopy). Extract the downloaded tarball and copy the binary to `/usr/local/bin/`.

```
wget https://azcopyvnext.azureedge.net/releases/release-10.24.0-20240326/azcopy_linux_amd64_10.24.0.tar.gz

tar -xvf azcopy_linux_amd64_10.24.0.tar.gz

sudo cp azcopy_linux_amd64_10.24.0/azcopy /usr/local/bin/

azcopy --version
```

3. Initialize the environment variables - rename `sample.env` to `.env` and fill in the values in the file

```
mv sample.env .env
```

4. Finally, run the script

```
bash uploader.sh
```

The script will upload the files to Azure Blob Storage and generate the Azure CDN URL.

For more details on how to setup Azure Blob Storage and Azure CDN, refer to the official documentation.
