# Things to add to .zshrc

# keep terminal fast with large git repos
DISABLE_UNTRACKED_FILES_DIRTY="true"
# python multiprocessing weirdness 
OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# These can help with psycopg2 and other data python installs
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
#vscode default
export EDITOR="code -w"
# pretty ls
alias ls="ls -FG"
# show current directory authors 
alias ls-tree="git ls-tree -r origin --name-only | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort | uniq -c | sort -rn"