docker rm sonarqube
docker build --tag=sonarqube-custom . && \
docker run --stop-timeout 3600 -p 9092:9092 -p 9009:9000 \
		-v sonardata:/opt/sonarqube/data \
		-v sonarlogs:/opt/sonarqube/logs \
		-v sonarextensions:/opt/sonarqube/extensions \
	--name sonarqube -ti sonarqube-custom 