#!/bin/bash

# Define the directory name
dirname="imgs"
upload_token="sp=xxxxxxxxxxxxxxx"
read_token="sp=xxxxxxxxxxxxxxx"
storage_account="emailassets1"
container_name="mailimages"

storage_url="https://$storage_account.blob.core.windows.net/$container_name?$upload_token"

./azcopy copy ./"$dirname"/ "$storage_url" --recursive

echo "CDN URLs for uploaded files:"
for file in ./"$dirname"/*; do
    filename=$(basename "$file")
    cdn_url="https://cyethackassets.azureedge.net/$container_name/$dirname/$filename?$read_token"
    echo "URL for $filename is: $cdn_url"
done
