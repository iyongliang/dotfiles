-- sudo add-apt-repository ppa:neovim-ppa/unstable
-- sudo apt update
-- sudo apt install neovim
-- or
-- echo "deb https://ppa.launchpadcontent.net/neovim-ppa/stable/ubuntu focal main" > /etc/apt/sources.list.d/nvim-focal.list
-- sudo apt-key adv \
--   --keyserver hkp://keyserver.ubuntu.com:80 \
--   --recv-keys 9DBB0BE9366964F134855E2255F96FCF8231B6DD
-- sudo apt update
-- sudo apt install neovim
-- optional:
--   sudo apt install lua5.1 luarocks
--   sudo apt install python3-neovim
--   sudo apt install git

-- health check
require("vim.lsp.health").check()

-- load options
require("options")

-- load Packervim
require("plugins")

-- set colorscheme
require("colorscheme")
