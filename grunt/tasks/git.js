'use strict';

// -- Git Task --------------------------------------------------------------------

module.exports = {

	gitclone: {

		sublime_preferences: {
			options: {
				directory: '<%= config.sublime_preferences.path_sublime_preferences %>',
				repository: 'git@github.com:iagodahlem/sublime-preferences.git',
			},
		},

		theme_dracula: {
			options: {
				directory: '<%= config.themes.path_dracula %>',
				repository: 'https://github.com/zenorocha/dracula-theme.git',
			},
		},

		zsh_syntax_highlighting: {
			options: {
				directory: '<%= config.oh_my_zsh.path_plugin_syntax %>',
				repository: 'https://github.com/zsh-users/zsh-syntax-highlighting.git',
			},
		},

	},

};
