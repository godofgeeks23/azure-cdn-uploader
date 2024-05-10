#!/bin/bash

source ./.env
dirname="files"

storage_url="https://$STORAGE_ACCOUNT.blob.core.windows.net/$STORAGE_CONTAINER?$UPLOAD_SAS_TOKEN"

azcopy copy ./"$dirname"/ "$storage_url" --recursive

echo "CDN URLs for uploaded files:"
for file in ./"$dirname"/*; do
    filename=$(basename "$file")
    cdn_url="https://$AZURE_CDN_ENDPOINT/$STORAGE_CONTAINER/$dirname/$filename?$READ_SAS_TOKEN"
    echo "URL for $filename is: $cdn_url"
    echo
done
