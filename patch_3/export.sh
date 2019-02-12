#!/bin/bash

dockercompose_file_path="/home/corey/abUC/api/docker-compose.yml"
output_path="/tmp/export.tar"

echo "##### Start output #####"
for img in $(docker-compose -f $dockercompose_file_path config | awk '{if ($1 == "image:") print $2;}'); do
  echo "Image name: $img"
  images="$images $img"
done

echo "##### Export image #####"
docker save -o $output_path $images