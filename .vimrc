" ######################
" # General Settings
" ######################

" ### Basic ###

" ペースト時にインデントされないようにする
set paste

" ビープ音を無効
set belloff=all

" 構文ハイライトを有効
syntax enable

" カラースキームを設定
colorscheme slate

" ### Start Up ###

if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

