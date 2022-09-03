lua << EOF
local status, autotag = pcall(require, "nvim-ts-autotag")

autotag.setup({})
EOF
