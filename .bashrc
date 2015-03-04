# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

DBIC_NO_WARN_BAD_PERL=1
LWDEV='mng'
LWDEVPATH='/home/mng'
REMOTE_USER='mng'
REMOTE_ADDR='127.0.0.1'
export LWDEV LWDEVPATH REMOTE_USER REMOTE_ADDR DBIC_NO_WARN_BAD_PERL

PERL_MB_OPT="--install_base \"/home/mng/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mng/perl5"; export PERL_MM_OPT;
alias apps='~/lw/lwscripts/dev/apps'
# Add the following to your ~/.bashrc or ~/.zshrc
#
# Alternatively, copy/symlink this file and source in your shell.  See `hitch --setup-path`.

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
hitch

#SSHAGENT=/usr/bin/ssh-agent
#SSHAGENTARGS="-s"
#if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
#    eval `$SSHAGENT $SSHAGENTARGS`
#    trap "kill $SSH_AGENT_PID" 0
#fi
export DEVEL_REPL_PROFILE='Standard'
export PATH="~/bin/:~/lw/lwscripts:$PATH"
[ $SHLVL -eq 1 ] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
