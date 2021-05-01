# Dotfiles
## Operating environment
* Ubuntu on WSL2
  * Ubuntu 18.04 LTS
  * Windows10 Home

## Tool List
* Vim
* Zsh + Zinit
* Homebrew
* Git
* ghq
* peco
* starship

## Setup
```
$ git clone https://github.com/snyt45/wsl-dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ sh install.sh all
```

## Usage
### Homebrew
#### Homebrewですでにインストール済みのパッケージをBrewfileに書き出し(強制上書き)
```
$ cd ~/.dotfiles
$ brew bundle dump --force
```

### ghq
#### リポジトリをクローン
```
$ ghq get <repository URL>
```

### Zsh + peco(anyframe)
#### pecoでcd履歴検索
`C-x + b`

#### pecoでコマンド履歴検索
`C-x + r`

#### pecoでGitブランチ検索
`C-x + C-b`

#### pecoでGit作業コピーを検索
`C-x + g`

# Referenced repository
[nicknisi/dotfiles: vim, zsh, git, homebrew, nvm, neovim \- my whole world](https://github.com/nicknisi/dotfiles)
