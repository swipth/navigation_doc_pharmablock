docker build -f Dockerfile -t docs01 .

docker tag docs01 registry.cn-hangzhou.aliyuncs.com/swipth/docs_navigation:1.0.5

docker push registry.cn-hangzhou.aliyuncs.com/swipth/docs_navigation:1.0.5

docker rm -f docs01

docker run -itd -p 8286:3000 --restart always --name docs01 registry.cn-hangzhou.aliyuncs.com/swipth/docs_navigation:1.0.5
