简单的文件上传服务器

服务端：nginx + django后续处理


### Requires

1. nginx + nginx_upload_module
2. uwsgi
3. django

### deploy

./install.sh

### Run

# should run in the uwsgi.ini directory
uwsgi -i uwsgi.ini
