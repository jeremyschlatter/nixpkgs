# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options.
HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable solarized color support of ls (on Linux), exa, and fd
# generated by running `dircolors -b dircolors.ansi-light`,
# where dircolors.ansi-light is a theme file from:
#     https://github.com/seebi/dircolors-solarized
#     (also copied to https://github.com/jeremyschlatter/dircolors-solarized)
export LS_COLORS='no=00:fi=00:di=36:ow=34;47:ln=35:pi=30;44:so=35;44:do=35;44:bd=33;44:cd=37;44:or=05;37;41:mi=05;37;41:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.bat=01;31:*.reg=01;31:*.app=01;31:*.txt=32:*.org=32:*.md=32:*.mkd=32:*.h=32:*.hpp=32:*.c=32:*.C=32:*.cc=32:*.cpp=32:*.cxx=32:*.objc=32:*.cl=32:*.sh=32:*.bash=32:*.csh=32:*.zsh=32:*.el=32:*.vim=32:*.java=32:*.pl=32:*.pm=32:*.py=32:*.rb=32:*.hs=32:*.php=32:*.htm=32:*.html=32:*.shtml=32:*.erb=32:*.haml=32:*.xml=32:*.rdf=32:*.css=32:*.sass=32:*.scss=32:*.less=32:*.js=32:*.coffee=32:*.man=32:*.0=32:*.1=32:*.2=32:*.3=32:*.4=32:*.5=32:*.6=32:*.7=32:*.8=32:*.9=32:*.l=32:*.n=32:*.p=32:*.pod=32:*.tex=32:*.go=32:*.sql=32:*.csv=32:*.sv=32:*.svh=32:*.v=32:*.vh=32:*.vhd=32:*.bmp=33:*.cgm=33:*.dl=33:*.dvi=33:*.emf=33:*.eps=33:*.gif=33:*.jpeg=33:*.jpg=33:*.JPG=33:*.mng=33:*.pbm=33:*.pcx=33:*.pdf=33:*.pgm=33:*.png=33:*.PNG=33:*.ppm=33:*.pps=33:*.ppsx=33:*.ps=33:*.svg=33:*.svgz=33:*.tga=33:*.tif=33:*.tiff=33:*.xbm=33:*.xcf=33:*.xpm=33:*.xwd=33:*.xwd=33:*.yuv=33:*.aac=33:*.au=33:*.flac=33:*.m4a=33:*.mid=33:*.midi=33:*.mka=33:*.mp3=33:*.mpa=33:*.mpeg=33:*.mpg=33:*.ogg=33:*.opus=33:*.ra=33:*.wav=33:*.anx=33:*.asf=33:*.avi=33:*.axv=33:*.flc=33:*.fli=33:*.flv=33:*.gl=33:*.m2v=33:*.m4v=33:*.mkv=33:*.mov=33:*.MOV=33:*.mp4=33:*.mp4v=33:*.mpeg=33:*.mpg=33:*.nuv=33:*.ogm=33:*.ogv=33:*.ogx=33:*.qt=33:*.rm=33:*.rmvb=33:*.swf=33:*.vob=33:*.webm=33:*.wmv=33:*.doc=31:*.docx=31:*.rtf=31:*.odt=31:*.dot=31:*.dotx=31:*.ott=31:*.xls=31:*.xlsx=31:*.ods=31:*.ots=31:*.ppt=31:*.pptx=31:*.odp=31:*.otp=31:*.fla=31:*.psd=31:*.7z=1;35:*.apk=1;35:*.arj=1;35:*.bin=1;35:*.bz=1;35:*.bz2=1;35:*.cab=1;35:*.deb=1;35:*.dmg=1;35:*.gem=1;35:*.gz=1;35:*.iso=1;35:*.jar=1;35:*.msi=1;35:*.rar=1;35:*.rpm=1;35:*.tar=1;35:*.tbz=1;35:*.tbz2=1;35:*.tgz=1;35:*.tx=1;35:*.war=1;35:*.xpi=1;35:*.xz=1;35:*.z=1;35:*.Z=1;35:*.zip=1;35:*.ANSI-30-black=30:*.ANSI-01;30-brblack=01;30:*.ANSI-31-red=31:*.ANSI-01;31-brred=01;31:*.ANSI-32-green=32:*.ANSI-01;32-brgreen=01;32:*.ANSI-33-yellow=33:*.ANSI-01;33-bryellow=01;33:*.ANSI-34-blue=34:*.ANSI-01;34-brblue=01;34:*.ANSI-35-magenta=35:*.ANSI-01;35-brmagenta=01;35:*.ANSI-36-cyan=36:*.ANSI-01;36-brcyan=01;36:*.ANSI-37-white=37:*.ANSI-01;37-brwhite=01;37:*.log=01;34:*~=01;34:*#=01;34:*.bak=01;36:*.BAK=01;36:*.old=01;36:*.OLD=01;36:*.org_archive=01;36:*.off=01;36:*.OFF=01;36:*.dist=01;36:*.DIST=01;36:*.orig=01;36:*.ORIG=01;36:*.swp=01;36:*.swo=01;36:*,v=01;36:*.gpg=34:*.gpg=34:*.pgp=34:*.asc=34:*.3des=34:*.aes=34:*.enc=34:*.sqlite=34:';

# Configure prompt
reset='\[$(tput sgr0)\]'

bold='\[$(tput bold)\]'

black='\[$(tput setaf 0)\]'
red='\[$(tput setaf 1)\]'
green='\[$(tput setaf 2)\]'
yellow='\[$(tput setaf 3)\]'
blue='\[$(tput setaf 4)\]'
magenta='\[$(tput setaf 5)\]'
cyan='\[$(tput setaf 6)\]'
white='\[$(tput setaf 7)\]'

purple='\[\033[1;35m\]'
brown='\[\033[0;33m\]'
light_gray='\[\033[0;37m\]'

if [ -a ~/.local_bashrc ]; then
    source ~/.local_bashrc
fi

git_ps1 ()
{
    # Return if not git repo.
    git status &> /dev/null || return

    # Return if no branches
    [ `git branch | wc -l` -eq 0 ] && return

    # Print current branch name.
    echo -n " `git rev-parse --abbrev-ref HEAD`"

    # Print asterisk if dirty.
    [ -z "`git status -s`" ] || echo "*"
}
MY_HOSTNAME="$(hostname)"
if [[ $MY_HOSTNAME == "jeremy-mbp.lan" ]]; then
    prompt_base=$bold$red"\t "$cyan"\W$yellow\$(git_ps1)$cyan $ "$reset
elif [[ $MY_HOSTNAME == "Jeremy-MBP.local" ]]; then
    prompt_base=$bold$red"\t "$cyan"\W$yellow\$(git_ps1)$cyan $ "$reset
elif [[ $MY_HOSTNAME == "Jeremy-MBP" ]]; then
    prompt_base=$bold$red"\t "$cyan"\W$yellow\$(git_ps1)$cyan $ "$reset
else
    prompt_base=$cyan"$MY_HOSTNAME "$bold$red"\t "$cyan"\W$yellow\$(git_ps1)$cyan 🖥  "$reset
fi
PS1="$prompt_base"

# TODO: Remove the check for 130 if possible. I want it there for cases where I
# change my mind while typing a command, press ^C, and don't want my next prompt
# to be defiled with a bad return code just because of that. But maybe other
# programs will exit 130 without knowing the convention, and it might be useful
# to have the reminder when I ^C a long-running program.
prompt() {
    #status=`RET=$?; if [[ $RET != 0 ]] && [[ $RET != 130 ]]; then  echo -n "$RET "; fi`
    history -a
    history -n
    # https://www.jefftk.com/p/you-should-be-logging-shell-history
    echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" \
      >> ~/.full_history
}
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} prompt"

# https://www.jefftk.com/p/you-should-be-logging-shell-history
function histgrep {
  local n_lines=10
  if [[ "$1" =~ ^[0-9]*$ ]]; then
    n_lines="$1"
    shift
  fi
  grep "$@" ~/.full_history | tail -n "$n_lines"
}


# history nicities -- don't overwrite history, share history across tabs,
# longer history, store multi-line commands as a single command.
# From http://dancingpenguinsoflight.com/2008/11/bash-history-tips-and-tricks/
shopt -s histappend
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s cmdhist

# don't filter duplicates or commands with leading whitespace from history
export HISTCONTROL=

set -o vi  # Use vi-mode editing on the command line.

NIX_PROFILE=~/.nix-profile

export XDG_DATA_DIRS=$NIX_PROFILE/share
source $NIX_PROFILE/etc/profile.d/bash_completion.sh

# source bash completions
for completion in $NIX_PROFILE/etc/bash_completion.d/*; do
    . $completion
done

# git tab completion with 'g' alias
source $NIX_PROFILE/share/bash-completion/completions/git
__git_complete g __git_main

# Add timestamps to bash history.
export HISTTIMEFORMAT="%F %T "

# Use vim for editing.
export SVN_EDITOR=vim
export EDITOR=vim

# Make git diff, and anything else that pipes through less,
# display utf-8 characters properly.
# Credit to http://stackoverflow.com/a/19436421
export LESSCHARSET=UTF-8

# Workaround for issue with nix's Go package on macOS:
#   https://github.com/NixOS/nixpkgs/issues/56348#issuecomment-482930309
if [ `uname` == "Darwin" ]; then
  export CC=clang
fi

# Some aliases
. $NIX_PROFILE/config/bash/aliases.sh

# Set color-related env variables according to the current color scheme
eval "$(restore_colors)"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bind -x '"\C-p": vim $(fzf);'

# http://owen.cymru/sf-a-quick-way-to-search-for-some-thing-in-bash-and-edit-it-with-vim-2/#ampshare=http://owen.cymru/sf-a-quick-way-to-search-for-some-thing-in-bash-and-edit-it-with-vim-2/
sf() {
  if [ "$#" -lt 1 ]; then echo "Supply string to search for!"; return 1; fi
  printf -v search "%q" "$*"
  include="yml,js,json,php,md,styl,pug,jade,html,config,py,cpp,c,go,hs,rb,conf,fa,lst"
  exclude=".config,.git,node_modules,vendor,build,yarn.lock,*.sty,*.bst,*.coffee,dist"
  rg_command='rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always" -g "*.{'$include'}" -g "!{'$exclude'}/*"'
  files=`eval $rg_command $search | fzf --ansi --multi --reverse | awk -F ':' '{print $1":"$2":"$3}'`
  [[ -n "$files" ]] && ${EDITOR:-vim} $files
}

export PATH=$HOME/go/bin:$PATH
