######################
# HISTORY
######################

# 履歴の保存先ファイル指定
export HISTFILE=~/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=10000
# 同時に起動しているzshの間でhistoryを共有する
setopt share_history
# historyに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# 同じコマンドをhistoryに残さない
setopt hist_ignore_all_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
