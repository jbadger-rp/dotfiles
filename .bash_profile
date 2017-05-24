# git
source ~/bin/git-completion.sh
source ~/bin/git-prompt.sh

#prompt
export PS1='\u@rpco \W$(__git_ps1 " (\[\e[94m\]%s\[\e[39m\])")\$ '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

# Aliases
# alias ls='ls -G'
alias avt='java -jar ~/bin/avro-tools-1.8.1.jar'

# ssh aliases
alias emr='ssh ec2-52-38-79-249.us-west-2.compute.amazonaws.com'
alias util='ssh ec2-34-209-180-205.us-west-2.compute.amazonaws.com'
alias sftp='ssh ec2-52-42-155-102.us-west-2.compute.amazonaws.com'
alias imp='ssh ec2-52-32-174-68.us-west-2.compute.amazonaws.com'

#colored tab completion
set colored-stats on

# make hack slackable
export SLACK_DEVELOPER_MENU=true

complete -C '/usr/local/bin/aws_completer' aws # aws CLI tab completion

shopt -s histappend # always append to history so we preserve bash history between sessions
HISTSIZE=100000 # embiggen history size

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
