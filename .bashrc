# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi





source ~/.git-completion.bash

#PS1="\[\e[1;33;40m\]\u@\H \[\e[1;34;40m\]\w \[\e[1;32;40m\]\$git_branch\[\e[1;31;40m\]\$\[\e[0m\] "
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\[\e[1;33;40m\]\u@\H \[\e[1;34;40m\]\w\[\e[1;32;40m\]$(__git_ps1 " (%s)")\[\e[1;31;40m\]\$\[\e[0m\] '

# for JAVA SDK
export JAVA_HOME=/opt/jdk1.6.0_33
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


# User specific aliases and functions
export PATH=/opt/lzma4.32/bin:/opt/buildroot-gcc342/bin:$PATH

# repo
export PATH=~/bin:$PATH

# SDCC
#export PATH=/opt/sdcc/bin:$PATH
export PATH=~/sdcc/bin:$PATH

###############################################
# Python for Android
export ANDROIDNDK=/opt/android-ndk-r8b
export ANDROIDSDK=/opt/android-sdk-linux
export ANDROIDNDKVER=r8b
export ANDROIDAPI=20
#export PATH=$ANDROIDNDK:$ANDROIDSDK/tools:$PATH
#export PATH=/opt/android-ndk-r8b/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86/bin:$PATH

# for android tools
export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabi-
#export PATH=/opt/arm-2010q1/bin:~/proj50/4AI.1.7/u-boot/tools:$PATH
export PATH=/opt/arm-2010q1/bin:$PATH
# for adb, fastboot
#export PATH=~/proj-t50/4AI.1.7/mydroid/out/host/linux-x86/bin:$PATH
export PATH=$PATH:~/proj-t50/4AI.1.7/mydroid/out/host/linux-x86/bin
# for mkimage
export PATH=$PATH:~/proj-t50/4AI.1.7/u-boot/tools

## [add.hehg.20110108]
find_git_branch() {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head = ref:\ refs/heads/* ]]; then
                ##git_branch="|${head#*/*/}"
                git_branch="${head#*/*/}"
            elif [[ $head != '' ]]; then
                git_branch="(detached)"
            else
                git_branch="(unknown)"
            fi  
            return
        fi  
        dir="../$dir"
    done
    git_branch=''
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"
#PS1="\[\e[1;33;40m\][\[\e[1;37;40m\u@\H\] \[\e[1;34;40m\]\w \[\e[1;32;40m\]\$git_branch\[\e[1;33;40m\]]\[\e[1;31;40m\]\$\[\e[0m\] "

######PS1="\[\e[1;33;40m\]\u@\H \[\e[1;34;40m\]\w \[\e[1;32;40m\]\$git_branch\[\e[1;31;40m\]\$\[\e[0m\] "

#PS1="[\34\u@\39\h:\w\$git_branch]\$ "
#PS1="\[ \033[0;32;40m\u@\h:\w\$ \033[0m \]" 
#PS1="\[\033[0;37;44m\u@\033[0;32;43m\h:\033[0;33;41m\w$\033[0m\]"
#PS1="\[\033[1;34;40m[\033[1;31;40m\u@\h:\w\033[1;34;40m]\033[1;37;40m $\033[0;37;0m\] "
#PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"

## [add.hehg.end]

