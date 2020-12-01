export DOTPATH=~/ghq/github.com/mkmk4423/dotfiles
VSPATH="${HOME}/Library/Application Support/Code/User"

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

for s in `ls vscode/snippets/`
do
  ln -snfv "$DOTPATH/vscode/snippets/$s" "$VSPATH"/snippets/"$s"
done

ln -snfv "$DOTPATH/vscode/settings.json" "$VSPATH"/"settings.json"
ln -snfv "$DOTPATH/git_template/.commi_template" "$HOME"/".commi_template"
