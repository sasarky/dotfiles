# いろんな設定
export TERM='xterm-256color'
export EDITOR=vim
bindkey -e  # emacs keybind

# ビープ音を鳴らさないようにする
setopt no_beep
setopt nolistbeep

# 補完系設定
autoload -U compinit; compinit                  # 補完機能を有効にする
setopt list_packed                              # 補完候補リストを詰めて表示
setopt list_types                               # auto_listの補完候補一覧でファイルの種別をマーク表示
setopt auto_list                                # 保管候補が複数あるときに，一覧表示する
setopt magic_equal_subst                        # =以降の補完
setopt auto_param_keys                          # カッコ対応も自動補完
setopt auto_param_slash                         # ディレクトリ名の保管で末尾の / を自動的に付加
setopt auto_menu                                # 補完キーを押すと順に保管する
setopt print_eight_bit                          # 日本語も正しく表示
setopt complete_aliases                         # alias も補完対象にする
setopt hist_no_store                            # history コマンドは追加しない
setopt hist_ignore_all_dups                     # history は重複させない
setopt hist_verify
setopt always_to_end                            # 保管したら文字列末尾へ移動

# その他便利機能
setopt brace_ccl                # {a-c} を a b cに展開する
setopt auto_cd                  # ディレクトリ名でcdする
setopt pushd_ignore_dups        # ディレクトリスタックに同じディレクトリを追加しないようにする
#setopt correct                  # コマンドのスペルチェック
#setopt correct_all              # コマンドライン全てのスペルチェック
setopt no_clobber               # 上書きリダイレクトの禁止
setopt path_dirs                # コマンド名に / が含まれている時PATH中のサブディレクトリを探す

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
autoload history-search-end # インクリメンタルに追加される
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
setopt share_history        # 履歴を共有する
setopt inc_append_history
setopt hist_ignore_dups     # 直前と同じコマンドは履歴に追加しない
setopt hist_reduce_blanks   # 余分な空白は詰める
setopt hist_ignore_space    # 先頭が空白だったならば履歴に追加しな
setopt hist_verify          # 履歴を呼び出してからも編集可能
setopt extended_history     # 実行時刻，実行時間も履歴に残す

# ${fg[...]} や $reset_color をロード
autoload -U colors; colors

function rprompt-git-current-branch {
    local name st color

    if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
        return
    fi
#name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
    name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
    if [[ -z $name ]]; then
        return
    fi
    st=`git status 2> /dev/null`
    if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
        color=${fg[green]}
    elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
        color=${fg[yellow]}
    elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
        color=${fg_bold[red]}
    else
        color=${fg[red]}
    fi

    echo "%{$color%}$name%{$reset_color%} "
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

PROMPT="[%n@%m] $ "
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
RPROMPT='[`rprompt-git-current-branch`%~]'

export LC_MESSAGES=ja_JP.UTF-8
export LC_IDENTIFICATION=ja_JP.UTF-8
export LC_COLLATE=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export LC_MEASUREMENT=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LC_TIME=ja_JP.UTF-8
export LC_NAME=ja_JP.UTF-8
export WORDCHARS="*?_-.[]~&;!#$%^(){}<>"

if which rbenv > /dev/null; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

if which pyenv > /dev/null; then
    export PYENV_ROOT=/usr/local/opt/pyenv
    export PATH=$PYENV_ROOT/shims:$PATH
    eval "$(pyenv init -)";
fi

alias lv='lv -Ou8'

# cdr
autoload -Uz is-at-least
if is-at-least 4.3.11
then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':chpwd:*' recent-dirs-max 5000
    zstyle ':chpwd:*' recent-dirs-default yes
    zstyle ':completion:*' recent-dirs-insert both
fi

source ~/.zsh/zaw/zaw.zsh
zstyle ':filter-select' case-insensitive yes
bindkey '^xb' zaw-cdr
bindkey '^x^b' zaw-git-recent-branches
bindkey '^x^f' zaw-git-files
bindkey '^r' zaw-history

export NODE_ENV=development

export PYTHONPATH=$PYTHONPATH:$HOME/workspace/caucasus
