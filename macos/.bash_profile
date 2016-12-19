# Load bash completion
for f in $(find `brew --prefix`/etc/bash_completion.d -type l); do
    source $f
done

. ~/.bashrc

export PATH="/usr/local/sbin:$PATH"

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN="your_token"

