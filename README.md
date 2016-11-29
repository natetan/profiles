# Vim Profiles
## Profiles to use on different computers. Nothing special here
### Prompt
```VimL
# Colors:
# Color format: \e[ (start color), 0;[code]m, \e[m (end color)

# light-red: 91
# light-green: 92
# light-yellow: 93
# light-blue: 94
# light-magenta: 95

# green: 32
# blue: 34
# cyan: 36

# Prompt info
# \u - username
# \h - hostname (computer name)
# \w - working directory (full path)
# \@ is the 12 hour time

# Color for the name
COLOR1='\e[0;94m';
# Color for the @
COLOR2='\e[0;93m';
# Color for the host / pc name
COLOR3='\e[0;95m';
# Color for the directory
COLOR4='\e[0;91m';
# Color for the commands
COLOR5='\e[0;32m';
# Where the color ends
ENDCOLOR='\e[m';
export PS1="\n$COLOR1\u$ENDCOLOR$COLOR2@$ENDCOLOR$COLOR3\h$ENDCOLOR $COLOR4\w$ENDCOLOR \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$COLOR5\n$ "
```
