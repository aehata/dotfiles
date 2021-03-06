
#export LSCOLORS=gxfxcxdxbxegedabagacad

# color-ls の色を設定する
#LS_COLORS="fi=37:di=33:ex=32:ln=34:bd=33:cd=33:pi=35:so=35"
#LS_COLORS="$LS_COLORS:*.gz=31:*.Z=31:*.lzh=31:*.zip=31:*.bz2=31"
#LS_COLORS="$LS_COLORS:*.tar=31:*.tgz=31"
#LS_COLORS="$LS_COLORS:*.gif=33:*.jpg=33:*.jpeg=33:*.tif=33:*.ps=33"
#LS_COLORS="$LS_COLORS:*.xpm=33:*.xbm=33:*.xwd=33:*.xcf=33"
#LS_COLORS="$LS_COLORS:*.avi=33:*.mov=33:*.mpeg=33:*.mpg=33"
#LS_COLORS="$LS_COLORS:*.mid=33:*.MID=33:*.rcp=33:*.RCP=33:*.mp3=33"
#LS_COLORS="$LS_COLORS:*.mod=33:*.MOD=33:*.au=33:*.aiff=33:*.wav=33"
#LS_COLORS="$LS_COLORS:*.htm=35:*.html=35:*.java=35:*.class=32"
#LS_COLORS="$LS_COLORS:*.c=35:*.h=35:*.C=35:*.c++=35"
#LS_COLORS="$LS_COLORS:*.tex=35:*~=0"

# 最後に export して有効にする
#export LS_COLORS

# 色の設定
#export LSCOLORS=Exfxcxdxbxegedabagacad
export LSCOLORS=gxfxcxdxbxegedabagacad
# 補完時の色の設定
#export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export LS_COLORS='di=01;36:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
