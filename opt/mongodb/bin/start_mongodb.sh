docker run -d \
    --name mongodb \
    -p 27017:27017 \
	-p 28017:28017 \
	--httpinterface \
	--smallfiles \
    -e MONGODB_USERNAME=mongo \
    -e MONGODB_PASSWORD=password \
    -e MONGODB_DBNAME=main \
	-v /opt/mongodb/data:/data \
	-v /opt/mongodb/logs:/var/log/mongodb \
    frodenas/mongodb