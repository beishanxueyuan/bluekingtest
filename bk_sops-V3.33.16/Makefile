BaseImage := "hub.bktencent.com/blueking/slug-app:v1.1.0-beta.27"

usage:
	@echo "使用说明"
	@echo ""
	@echo "- make api		构建模块 'api'"
	@echo "- make callback		构建模块 'callback'"
	@echo "- make default		构建模块 'default'"
	@echo "- make pipeline		构建模块 'pipeline'"
	
api:
	@echo "正在生成 Dockerfile api"
	@echo "ARG BaseImage=hub.bktencent.com/blueking/slug-app:v1.1.0-beta.27" > Dockerfile
	@echo "FROM ${BaseImage}" >> Dockerfile
	@echo "ADD bk_sops/./src/layer.tar.gz /" >> Dockerfile
	@echo "ADD bk_sops/./src/api.Procfile.tar.gz /" >> Dockerfile
	@echo "WORKDIR /app" >> Dockerfile
	@echo 'ENTRYPOINT ["tini", "--"]' >> Dockerfile
	@echo 'CMD ["/runner/init"]' >> Dockerfile

	@echo "正在构建模块 api"
	docker build . -t bk_sops/api --build-arg BaseImage=${BaseImage} --no-cache

callback:
	@echo "正在生成 Dockerfile callback"
	@echo "ARG BaseImage=hub.bktencent.com/blueking/slug-app:v1.1.0-beta.27" > Dockerfile
	@echo "FROM ${BaseImage}" >> Dockerfile
	@echo "ADD bk_sops/./src/layer.tar.gz /" >> Dockerfile
	@echo "ADD bk_sops/./src/callback.Procfile.tar.gz /" >> Dockerfile
	@echo "WORKDIR /app" >> Dockerfile
	@echo 'ENTRYPOINT ["tini", "--"]' >> Dockerfile
	@echo 'CMD ["/runner/init"]' >> Dockerfile

	@echo "正在构建模块 callback"
	docker build . -t bk_sops/callback --build-arg BaseImage=${BaseImage} --no-cache

default:
	@echo "正在生成 Dockerfile default"
	@echo "ARG BaseImage=hub.bktencent.com/blueking/slug-app:v1.1.0-beta.27" > Dockerfile
	@echo "FROM ${BaseImage}" >> Dockerfile
	@echo "ADD bk_sops/./src/layer.tar.gz /" >> Dockerfile
	@echo "ADD bk_sops/./src/default.Procfile.tar.gz /" >> Dockerfile
	@echo "WORKDIR /app" >> Dockerfile
	@echo 'ENTRYPOINT ["tini", "--"]' >> Dockerfile
	@echo 'CMD ["/runner/init"]' >> Dockerfile

	@echo "正在构建模块 default"
	docker build . -t bk_sops/default --build-arg BaseImage=${BaseImage} --no-cache

pipeline:
	@echo "正在生成 Dockerfile pipeline"
	@echo "ARG BaseImage=hub.bktencent.com/blueking/slug-app:v1.1.0-beta.27" > Dockerfile
	@echo "FROM ${BaseImage}" >> Dockerfile
	@echo "ADD bk_sops/./src/layer.tar.gz /" >> Dockerfile
	@echo "ADD bk_sops/./src/pipeline.Procfile.tar.gz /" >> Dockerfile
	@echo "WORKDIR /app" >> Dockerfile
	@echo 'ENTRYPOINT ["tini", "--"]' >> Dockerfile
	@echo 'CMD ["/runner/init"]' >> Dockerfile

	@echo "正在构建模块 pipeline"
	docker build . -t bk_sops/pipeline --build-arg BaseImage=${BaseImage} --no-cache

