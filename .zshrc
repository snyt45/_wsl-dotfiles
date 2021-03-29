######################
# load file
######################

if [ -e $HOME/.zsh/env.zsh ]; then
  echo "loading env.zsh..."
  source $HOME/.zsh/env.zsh
fi

if [ -e $HOME/.zsh/alias.zsh ]; then
  echo "loading alias.zsh..."
  source $HOME/.zsh/alias.zsh
fi

if [ -e $HOME/.zsh/history.zsh ]; then
  echo "loading history.zsh..."
  source $HOME/.zsh/history.zsh
fi

if [ -e $HOME/.zsh/zinit.zsh ]; then
  echo "loading zinit.zsh..."
  source $HOME/.zsh/zinit.zsh
fi

######################
# General Settings
######################

### Basic ###

# ビープ音を無効
setopt no_beep

### cd ###

# cdを使わずにディレクトリを移動できる
setopt auto_cd
# cd時にディレクトリスタックに追加する
setopt auto_pushd
# ディレクトリスタックへの追加の際に重複させない
setopt pushd_ignore_dups

### 補完 ###

# シェル関数`compinit`の自動読み込み
autoload -Uz compinit && compinit
# 補完候補をハイライト
zstyle ':completion:*' list-colors "${LS_COLORS}"
# 補完候補を一覧から選択。補完候補が2つ以上なければすぐに補完する
zstyle ':completion:*:default' menu select=2
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

######################
# Starship
######################

# starshipの初期化
eval "$(starship init zsh)"
