branch=master
git clone -b $branch https://github.com/TheTepthon/music /root/music
cp music/.env /root/TheTepthon/.env
cd /root/TheTepthon
docker build . --rm --force-rm --compress --pull --file Dockerfile -t music
docker run --privileged --env-file .env --rm -i music
