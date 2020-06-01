#!/bin/bash

hugo
aws --profile burlington s3 cp ./public/ s3://seanburlington --recursive
aws --profile burlington cloudfront create-invalidation --distribution-id EY7NM35CR9EM5 --paths '/'
aws --profile burlington cloudfront create-invalidation --distribution-id EY7NM35CR9EM5 --paths '/*'
aws --profile burlington cloudfront create-invalidation --distribution-id EY7NM35CR9EM5 --paths '/*/*'
