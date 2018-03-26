# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#---------------------------------------------------------------------
#Powerline
#----------------------------------------------------------------------
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

#----------------------------------------------------------------------
# Alias
#----------------------------------------------------------------------
# Предотвращение не преднамеренного удаление файлов
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Различные варианты 'ls'
alias la='ls -Al'               # показать скрытые файлы
alias ll='ls -al'               # показать скрытые файлы
alias ls='ls -hF --color'       # выделить различные типы файлов цветом
alias lx='ls -lXB'              # сортировка по расширению
alias lk='ls -lSr'              # сортировка по размеру
alias lc='ls -lcr'              # сортировка по времени изменения
alias lu='ls -lur'              # сортировка по времени последнего
alias lr='ls -lR'               # рекурсивный обход подкаталогов
alias lt='ls -ltr'              # сортировка по дате
alias lm='ls -al |more'         # вывод через 'more'
alias tree='tree -Csu'          # альтернатива 'ls'

alias sudo='sudo '
alias apt='echo "U mad bro?!"'
alias pm='sudo pacman --color=always '
alias pa='pacaur --color=always'

# IDE
alias qtcreator='/opt/qt/Tools/QtCreator/bin/qtcreator'
alias idea='/opt/idea-IC/bin/idea.sh'
alias pycharm='/opt/pycharm-IC/bin/pycharm.sh'
alias clion='/opt/clion/bin/clion.sh'

# C/Cpp commands

# Python commands
alias py='python3'
alias pych='sh /home/konst/.script/checkstyle_python.sh'

# Rust commands
#alias rust

# Java commands
alias jv='/opt/jdk1.8.0_144/bin/java'
alias jc='/opt/jdk1.8.0_144/bin/javac'

#-----

#-----
bind '"\eh": "\C-a\eb\ed\C-y\e#man \C-y\C-m\C-p\C-p\C-a\C-d\C-e"'

#---------
#pkgfile
#---------
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

complete -cf sudo 

shopt -s autocd
shopt -s checkwinsize

source /usr/share/doc/pkgfile/command-not-found.bash

#export TERM=”screen-256color”

