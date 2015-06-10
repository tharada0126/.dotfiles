export LANG=ja_JP.UTF-8
export KCODE=u
bindkey -e
#bindkey -v
setopt correct
setopt auto_menu
setopt NO_beep
alias gvim="open -a MacVim"
alias preview="open -a Preview"
alias excel="open -a Microsoft\\ Excel"
alias safari="open -a Safari"
alias word="open -a Microsoft\\ Word"
alias virtualpython="source $HOME/local/python/bin/activate"
alias keynote="open -a Keynote"
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

### Ls Color ###
# $B?'$N@_Dj(B
# export LSCOLORS=Exfxcxdxbxegedabagacad
# # $BJd40;~$N?'$N@_Dj(B
# export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# # ZLS_COLORS$B$H$O!)(B
# export ZLS_COLORS=$LS_COLORS
# # ls$B%3%^%s%I;~!"<+F0$G?'$,$D$/(B(ls -G$B$N$h$&$J$b$N!)(B)
# export CLICOLOR=true
# # $BJd408uJd$K?'$rIU$1$k(B
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# k
autoload -U colors; colors


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#pythonbrew
if [ -s "$HOME/.pythonbrew/etc/bashrc" ]; then
	source "$HOME/.pythonbrew/etc/bashrc"
	#exec command like virtualenvwrapper
	alias mkvirtualenv="pythonbrew venv create"
	alias rmvirtualenv="pythonbrew venv delete"
	alias workon="pythonbrew venv use"
fi
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"
#eval "$(rbenv init -)"
