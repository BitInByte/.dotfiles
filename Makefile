backup:
	echo "Backing up Configs..."
	@rm -rf ./nvim || :
	@mkdir -p ./nvim || :
	@cp -rf $(HOME)/.config/nvim . || :
	@cp -rf $(HOME)/.config/yabai . || :
	@cp -rf $(HOME)/.config/skhd . || :
	@cp -rf $(HOME)/.config/sketchybar . || :
	@cp -rf $(HOME)/.config/tmuxinator . || :
	@rm -rf ./nvim/undodir || :
	@rm -rf ./nvim/.luarc.json || :
	@rm ./nvim/plugin/packer_compiled.lua || :
	@cp $(HOME)/.hyper.js . || :
	@cp $(HOME)/.zshrc . || :
	# @cp $(HOME)/.zshenv . || :
	@cp $(HOME)/.tmux*.conf . || :
	@cp $(HOME)/.p10k.zsh . || :
	@cp $(HOME)/Library/Application\ Support/lazygit/config.yml . || :
	@cp $(HOME)/.config/kitty/kitty.conf . || :
	@cp $(HOME)/.alacritty.yml . || :
	@rm -rf ./Brewfile || :
	@brew bundle dump || :
	echo "Backup completed..."
