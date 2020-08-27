# スクショの保存先を変更
function ssdir() {
  read dir"?type screencapture directory >> ";
  defaults write com.apple.screencapture location ${dir};killall SystemUIServer
}
