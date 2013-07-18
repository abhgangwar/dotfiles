# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# starting tmux by default

[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

# User specific aliases and functions
#export PS1='[\[\e[0;31m\]\u@\[\e[0;31m\]\h\[\e[0;90m\] \W\[\e[0m\]]\[\e[0;32m\]\$\[\e[m\] '
export PS1='(\[\e[0;33m\]\W\[\e[m\])\[\e[0;32m\] \$ \[\e[m\]'

# Preven gnome-ssh-askpass from popping up
unset SSH_ASKPASS


#My aliases
alias devices='cd /run/media/nj';
alias myspace='cd /home/nj/Documents/learn'
alias rm='rm -i'
alias feh='feh -B black --geometry 1280x768  '
alias tm='tmux'
alias mv='mv -i'
alias cint='LD_LIBRARY_PATH=/home/nj/.local/lib cint'
				
# Functions
back()
{
	"$@" &>/dev/null &

}

sps() 
{
	
	if [ ${myps} = "small" ] 
	then
		. ~/.bashrc
		export myps=big
	else
		export PS1='(\[\e[0;37m\]\W\[\e[m\])\[\e[0;32m\] \$ \[\e[m\]'
		export myps=small
	fi

}

function kiddo()
{
    echo -e "`date` \n\t\n\n"| cat - ~/Dropbox/README > ~/Dropbox/README.bak
    mv  -f ~/Dropbox/README.bak ~/Dropbox/README
    vi -c "startinsert"  ~/Dropbox/README +2

}

connect()
{
	curr_dir=$(pwd);
	cd /home/nj/Documents/learn/scripts/bashScripts/coll_server
	
	if [ ! -f coll_server.tar.gz.gpg ] ; then
		echo "The main file doesn't exist. Exiting... "
		return 
	fi

	gpg -d coll_server.tar.gz.gpg > coll_server.tar.gz
	
	if [ $? != 0 ] ; then
		echo "Error decrypting the file..Exiting... "
		return 
	fi

	if [ ! -f coll_server.tar.gz ] ; then
		echo "The tar file doesn't exist. Exiting..."	
		return
	fi

	tar -xf coll_server.tar.gz
	rm coll_server.tar.gz
	cd coll_server
	./connectifly
	cd ..
	rm -rf coll_server/
	cd $curr_dir

}


start-tor()
{
	cur_dir=$(pwd)
	cd /home/nj/Downloads/DynamicApps/tor-browser_en-US
	./start-tor-browser 2>/dev/null >/dev/null &
	cd $cur_dir
	
}



## coloured manpages
#man() 
#{
#	env \
#		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#		LESS_TERMCAP_md=$(printf "\e[1;31m") \
#		LESS_TERMCAP_me=$(printf "\e[0m") \
#		LESS_TERMCAP_se=$(printf "\e[0m") \
#		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#		LESS_TERMCAP_ue=$(printf "\e[0m") \
#		LESS_TERMCAP_us=$(printf "\e[1;32m") \
#			man "$@"
#}


