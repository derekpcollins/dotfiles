# Load vcs_info
autoload -Uz vcs_info

# Allow functions in the prompt
setopt prompt_subst

# Enable git
zstyle ':vcs_info:*' enable git

# Format the git info
# Just show the branch name
zstyle ':vcs_info:*' formats '%F{244}⤚%f %F{36}%b%f'

# ➡ ➞ › » ❯ ● ★ ⤚ ⇝ ↣ ↢ ⬌ ⇋ ⇹ ⟷ ⇆ ⤙

# Call vcs_info from your precmd function
precmd () { vcs_info }

# Function definitions
git_status() {
    # Exit if not inside a Git repository
    ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

    # Check git status (just checking for clean vs dirty, nothing fancy)
    # Source: https://unix.stackexchange.com/questions/155046/determine-if-git-working-directory-is-clean-from-a-script
    if [[ `git status --porcelain` ]]; then
        echo "%F{124}★%f"
    fi
}


PROMPT='%F{39}%~%f ${vcs_info_msg_0_}$(git_status)
%# '