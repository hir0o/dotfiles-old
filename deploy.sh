for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# vscode関連
VSPATH="${HOME}/Library/Application Support/Code/User"

for s in `ls vscode/snippets/`
do

  ln -snfv "$DOTPATH/vscode/snippets/$s" "$VSPATH"/snippets/"$s"
done
ln -snfv "$DOTPATH/vscode/settings.json" "$VSPATH"/"settings.json"
