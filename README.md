### PHPStorm 9 in docker

### Usage

```bash
docker run -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group -v /tmp/.X11-unix:/tmp/.X11-unix \
           -u $(whoami) -v $HOME:$HOME -e DISPLAY=$DISPLAY leanlabs/phpstorm
```
