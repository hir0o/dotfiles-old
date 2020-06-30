DOTPATH=~/ghq/github.com/mkmk4423/dotfiles
VSPATH="${HOME}/Library/Application Support/Code/User" && mkdir -p ${VSPATH}


for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

ln -snfv "$DOTPATH/vscode/settings.json" "$VSPATH"/"settings.json"
