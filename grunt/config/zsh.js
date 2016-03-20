'use strict';
let userhome = require('userhome');
let dotfiles = require('./dotfiles.js');

// -- ZSH & Oh-My-Zsh Config--------------------------------------------------------------------

module.exports = {

	custom: {
		path_custom: userhome('.custom'),
		path_aliases: '<%= dotfiles %>',
		path_themes: '<%= custom.path_custom %>/themes',
		path_plugins: '<%= custom.path_custom %>/plugins',
	},

	oh_my_zsh: {
		path_oh_my_zsh: userhome('.oh-my-zsh'),
		path_plugin_syntax: '<%= custom.path_plugins %>/zsh-syntax-highlighting'),
		path_theme_dracula: '<%= custom.path_themes %>/dracula.zsh-theme'),
	},

	z: {
		path_z: userhome('.z'),
	},

	zsh: {
		path_zshrc: '<%= dotfiles.path_templates %>/.zshrc'),
		path_zshrc_system: userhome('.zshrc'),
	},

};
