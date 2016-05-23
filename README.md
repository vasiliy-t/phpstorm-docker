### PHPStorm 9 in docker

### Usage

There is newer version of phpstorm to be available soon.

```bash
docker run -v /etc/passwd:/etc/passwd \
           -v /etc/group:/etc/group \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v $HOME:$HOME \
           -e DISPLAY=$DISPLAY \
           -u $(whoami) \
           leanlabs/phpstorm
```
