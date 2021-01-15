# themer - theme installation instructions

## slack

Copy the contents of `slack/themer-slack-dark.txt` and paste into the custom theme input in Slack's preferences.

## chrome

1. Launch Chrome and go to `chrome://extensions`.
2. Check the "Developer mode" checkbox at the top.
3. Click the "Load unpacked extension..." button and choose the desired theme directory (`chrome/Themer Dark`).

(To reset or remove the theme, visit `chrome://settings` and click "Reset to Default" in the "Appearance" section.)

## firefox-addon

To use the generated extension package, the code will need to be packaged up and signed by Mozilla.

To package the code in preparation for submission, the `web-ext` tool can be used:

    npx web-ext build --source-dir 'firefox-addon/Themer Dark'

Then the package can be submitted to Mozilla for review in the [Add-on Developer Hub](https://addons.mozilla.org/en-US/developers/addon/submit/distribution).

Learn more about Firefox themes from [extensionworkshop.com](https://extensionworkshop.com/documentation/themes/)

To theme Firefox without the need to create a developer account and go through the extension review process, see themer's integration with [Firefox Color](https://color.firefox.com).

## vim

Copy or symlink `vim/ThemerVim.vim` to `~/.vim/colors/`.

Then set the colorscheme in `.vimrc`:

    " The background option must be set before running this command.
    colo ThemerVim

## vscode

Copy (or symlink) the generated package directory into the VS Code extensions directory:

    cp -R 'vscode/theme-themer-vscode' ~/.vscode/extensions/

Then reload or restart VS Code. The generated theme package should be in the list of installed extensions, and "Themer Dark" will be available in the list of themes.