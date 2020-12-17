
cudaVersions="10.2 11.1"
for val in $cudaVersions; do
  docker build --tag shap$val -f Dockerfile.gpu $(pwd)  --build-arg CUDA_VERSION_ARG=$val
  docker run --runtime=nvidia --rm -it -w /tmp -u 0 shap$val:latest bash test.sh $1 $2
done
