aws s3 cp ./public/ s3://seanburlington --recursive
aws cloudfront create-invalidation --distribution-id EY7NM35CR9EM5 --paths '/ /* /*/*' --profile burlington
