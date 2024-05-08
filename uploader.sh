#!/bin/bash

# Define the directory name
dirname="imgs"
upload_token="sp=xxxxxxxxxxxxxxx"
read_token="sp=xxxxxxxxxxxxxxx"

storage_url="https://emailassets1.blob.core.windows.net/mailimages?$upload_token"

./azcopy copy ./"$dirname"/ "$storage_url" --recursive

echo "CDN URLs for uploaded files:"
for file in ./"$dirname"/*; do
    filename=$(basename "$file")
    cdn_url="https://cyethackassets.azureedge.net/mailimages/$dirname/$filename?$read_token"
    echo "URL for $filename is: $cdn_url"
done
