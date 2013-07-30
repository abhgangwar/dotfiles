# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# User specific environment and startup programs


## Prompt 
#export PS1='[\[\e[0;31m\]\u@\[\e[0;31m\]\h\[\e[0;90m\] \W\[\e[0m\]]\[\e[0;32m\]\$\[\e[m\] '
#export PS1='(\[\e[0;33m\]\W\[\e[m\])\[\e[0;32m\] \$ \[\e[m\]'

export PATH=/usr/java/default/bin:/usr/local/heroku/bin:${PATH}:~/.local/bin:/home/nj/.npm/bower/0.10.0/package/bin

export http_proxy=http://pacifier:3128
export https_proxy=http://pacifier:3128
export ftp_proxy=http://pacifier:3128
export HTTP_PROXY=http://pacifier:3128
export HTTPS_PROXY=http://pacifier:3128
export FTP_PROXY=http://pacifier:3128




[[ -s /home/nj/.nvm/nvm.sh ]] && . /home/nj/.nvm/nvm.sh # This loads NVM
