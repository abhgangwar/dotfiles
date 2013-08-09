# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# User specific environment and startup programs
export PATH=/usr/java/default/bin:/usr/local/heroku/bin:${PATH}:~/.local/bin:/home/nj/.npm/bower/0.10.0/package/bin

# college proxy settings
export http_proxy=http://pacifier:3128
export https_proxy=http://pacifier:3128
export ftp_proxy=http://pacifier:3128
export HTTP_PROXY=http://pacifier:3128
export HTTPS_PROXY=http://pacifier:3128
export FTP_PROXY=http://pacifier:3128




[[ -s /home/nj/.nvm/nvm.sh ]] && . /home/nj/.nvm/nvm.sh # This loads NVM
