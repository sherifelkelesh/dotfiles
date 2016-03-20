'use strict';

// -- Clean Task --------------------------------------------------------------------

module.exports = {

	clean: {

		all: {
			options: {
				force: true,
			},
			src: [
				'<%= config.git.path_gitconfig %>',
				'<%= config.git.path_gitignore_global %>',
				'<%= config.z.path_z_system %>',
				'<%= config.zsh.path_zshrc_system %>',
			],
		},

	},

};
