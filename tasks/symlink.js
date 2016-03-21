'use strict';
let zsh = require('../config/zsh.js');

// -- Symlink Task --------------------------------------------------------------------

module.exports = {

	symlink: {

		aliases: {
			src: '<%= config.git.path_gitconfig %>',
			dest: '<%= zsh.custom.path_aliases %>',
			zsh.custom.path_custom
		},

		gitconfig: {
			src: '<%= config.git.path_gitconfig %>',
			dest: '<%= config.git.path_gitconfig_system %>',
		},

		gitignore: {
			src: '<%= config.git.path_gitignore_global %>',
			dest: '<%= config.git.path_gitignore_global_system %>',
		},

		zsh: {
			src: '<%= config.zsh.path_zshrc %>',
			dest: '<%= config.zsh.path_zshrc_system %>',
		},

	},

};
