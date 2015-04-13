PROJECT=docker-flyway
PS1="\`if [ \$? = 0 ]; then echo \[\e[32m\]${PROJECT}\[\e[0m\]; else echo \[\e[31m\]${PROJECT}\[\e[0m\]; fi\`:\w$ "

flyway () {
  sudo docker run -it --rm --net host -v `pwd`:/wd -w /wd shouldbee/flyway $@
}

cd /vagrant
