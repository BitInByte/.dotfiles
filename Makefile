backup:
	echo "Backing up Configs..."
	@rm -r ./nvim || :
	@mkdir -p ./nvim || :
	@cp -r $(HOME)/.config/nvim . || :
	@rm -r ./nvim/undodir
	@rm -r ./nvim/.luarc.json
	@rm ./nvim/plugin/packer_compiled.lua || :
	@cp $(HOME)/.hyper.js . || :
	@cp $(HOME)/.zshrc . || :
	@cp $(HOME)/.zshenv . || :
	@cp $(HOME)/.tmux*.conf . || :
	@cp $(HOME)/.p10k.zsh . || :
	@cp $(HOME)/Library/Application\ Support/lazygit/config.yml . || :
	@cp $(HOME)/.config/kitty/kitty.conf . || :
	@cp $(HOME)/.alacritty.yml . || :
	echo "Backup completed..."
