'use strict';
let userhome = require('userhome');

// -- Config --------------------------------------------------------------------

module.exports = {

	dotfiles: {
		path_dotfiles: userhome('.dotfiles'),
		path_git: '<%= dotfiles.path_dotfiles %>/git'),
		path_subl: '<%= dotfiles.path_dotfiles %>/subl'),
		path_zsh: '<%= dotfiles.path_dotfiles %>/zsh'),
	},

	git: {
		path_gitconfig: '<%= dotfiles.path_git %>/.gitconfig',
		path_gitconfig_system: userhome('.gitconfig'),
		path_gitignore_global: '<%= dotfiles.path_git %>/.gitignore_global',
		path_gitignore_global_system: userhome('.gitignore_global'),
	},

	subl: {
		path_: '<%= dotfiles.path_subl %>',
		path_system: userhome('.config/sublime-text-3/Packages/User'),

		package_control: {
			file_name: '/Package Control.sublime-settings',
			path: '<%= subl.path %>' + '<%= package_control.file_name %>',
			path_system: '<%= subl.path_system %>' + '<%= package_control.file_name %>',
		},

		preferences: {
			file_name: '/Preferences.sublime-settings',
			path: '<%= subl.path %>' + '<%= preferences.file_name %>',
			path_system: '<%= subl.path_system %>' + '<%= preferences.file_name %>',
		},

		snippets: {
			file_name: '/snippets',
			path: '<%= subl.path %>' + '<%= snippets.file_name %>',
			path_system: '<%= subl.path_system %>' + '<%= snippets.file_name %>',
		},

		key_maps: {
			file_name: '/Default (Linux).sublime-keymap',
			path: '<%= subl.path %>' + '<%= key_maps.file_name %>',
			path_system: '<%= subl.path_system %>' + '<%= key_maps.file_name %>',
		},
	},

	zsh: {
		custom_folder: {
			path_custom: userhome('.custom'),
			path_themes: '<%= custom_folder.path_custom %>/themes',
			path_plugins: '<%= custom_folder.path_custom %>/plugins',
		},

		themes: {
			dracula: {
				path_repository: 'https://github.com/zenorocha/dracula-theme.git',
				path_system: '<%= custom_folder.path_themes %>/dracula-theme'),
			},
		},

		plugins: {
			zsh_syntax_highlighting: {
				path_repository: 'https://github.com/zsh-users/zsh-syntax-highlighting.git',
				path_system: '<%= custom_folder.path_plugins %>/zsh-syntax-highlighting'),
			},
		},

		path_zshrc: '<%= dotfiles.path_zsh %>/.zshrc'),
		path_zshrc_system: userhome('.zshrc'),
		path_aliases: '<%= dotfiles.path_zsh %>/.aliases'),
		path_aliases_system: '<%= custom_folder.path_custom %>/.aliases',
	},

	z: {
		path_system: userhome('.z'),
	},

};
