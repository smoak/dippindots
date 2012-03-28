########################################
#
#
# Scott Moaks zsh init script
# Created: March 28 2012
# Modified: March 28 2012
#
#
#
########################################

# {{{ ZSH Modules
autoload -U compinit promptinit zcalc zsh-mime-setup
compinit
promptinit
zsh-mime-setup
# }}}

# {{{ Options

# Now we can pipe to multiple outputs!
setopt MULTIOS

# 10 second wait if you do something that will delete everything. I wish I'd had this before...
setopt RM_STAR_WAIT

# use magic (this is default, but it can't hurt!)
setopt ZLE

setopt NO_HUP

setopt VI

setopt IGNORE_EOF

#}}}

# Load ~/.zsh_prompt, ~/.exports, ~/.aliases, ~/.functions, ~/.extra
for file in ~/.{zsh_prompt,exports,aliases,functions,extra,keybindings}; do
  [ -r "$file" ] && source "$file"
done
unset file
