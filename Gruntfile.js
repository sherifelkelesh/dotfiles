'use strict';
let userhome = require('userhome');

// -- Gruntfile ------------------------------------------------------------

module.exports = (grunt) => {

	require('load-grunt-tasks')(grunt);

	grunt.initConfig({

		// -- Config -----------------------------------------------------------

		config: {

			dotfiles: {
				path_dotfiles: userhome('.dotfiles'),
				path_git: '<%= config.dotfiles.path_dotfiles %>/git',
				path_subl: '<%= config.dotfiles.path_dotfiles %>/subl',
				path_themes: '<%= config.dotfiles.path_dotfiles %>/themes',
				path_ubuntu: '<%= config.dotfiles.path_dotfiles %>/ubuntu',
				path_vim: '<%= config.dotfiles.path_dotfiles %>/vim',
				path_zsh: '<%= config.dotfiles.path_dotfiles %>/zsh',
			},

			backup: {
				path_system: userhome('.backup'),
			},

			custom_folder: {
				path_custom: userhome('.custom'),
				path_themes: '<%= config.custom_folder.path_custom %>/themes',
				path_plugins: '<%= config.custom_folder.path_custom %>/plugins',

				themes: {
					dracula: {
						path: '<%= config.dotfiles.path_themes %>/dracula.zsh-theme',
						path_system: '<%= config.custom_folder.path_themes %>/dracula.zsh-theme',
					},
				},

				plugins: {
					zsh_syntax_highlighting: {
						path_system: '<%= config.custom_folder.path_plugins %>/zsh-syntax-highlighting',
						path_repository: 'https://github.com/zsh-users/zsh-syntax-highlighting.git',
					},
				},
			},

			git: {
				path_gitconfig: '<%= config.dotfiles.path_git %>/.gitconfig',
				path_gitconfig_system: userhome('.gitconfig'),
				path_gitignore_global: '<%= config.dotfiles.path_git %>/.gitignore_global',
				path_gitignore_global_system: userhome('.gitignore_global'),
			},

			subl: {
				path: '<%= config.dotfiles.path_subl %>',
				path_system: userhome('.config/sublime-text-3/Packages/User/'),

				package_control: {
					path: '<%= config.subl.path %>/Package Control.sublime-settings',
					path_system: '<%= config.subl.path_system %>/Package Control.sublime-settings',
				},

				preferences: {
					file_name: '/Preferences.sublime-settings',
					path: '<%= config.subl.path %>' + '<%= config.subl.preferences.file_name %>',
					path_system: '<%= config.subl.path_system %>' + '<%= config.subl.preferences.file_name %>',
				},

				snippets: {
					file_name: '/snippets',
					path: '<%= config.subl.path %>' + '<%= config.subl.snippets.file_name %>',
					path_system: '<%= config.subl.path_system %>' + '<%= config.subl.snippets.file_name %>',
				},

				key_maps: {
					file_name: '/Default (Linux).sublime-keymap',
					path: '<%= config.subl.path %>' + '<%= config.subl.key_maps.file_name %>',
					path_system: '<%= config.subl.path_system %>' + '<%= config.subl.key_maps.file_name %>',
				},
			},

			ubuntu: {
				autostart: {
					path: '<%= config.dotfiles.path_ubuntu %>/autostart',
					path_system: userhome('.config/autostart'),
				},
			},

			vim: {
				path: '<%= config.dotfiles.path_vim %>',
				path_vimrc: '<%= config.vim.path %>/.vimrc',
				path_vimrc_system: userhome('.vimrc'),
			},

			zsh: {
				path_aliases: '<%= config.dotfiles.path_zsh %>/.aliases',
				path_aliases_system: '<%= config.custom_folder.path_custom %>/.aliases',
				path_config: '<%= config.dotfiles.path_zsh %>/.config',
				path_config_system: '<%= config.custom_folder.path_custom %>/.config',
				path_functions: '<%= config.dotfiles.path_zsh %>/.functions',
				path_functions_system: '<%= config.custom_folder.path_custom %>/.functions',
				path_zshrc: '<%= config.dotfiles.path_zsh %>/.zshrc',
				path_zshrc_system: userhome('.zshrc'),
			},

			z: {
				path_system: userhome('.z'),
			},

		},

		// -- Clean ------------------------------------------------------------

		clean: {

			all: {
				options: {
					force: true,
				},
				src: [
					'<%= config.git.path_gitconfig_system %>',
					'<%= config.git.path_gitignore_global_system %>',
					'<%= config.subl.path_system %>',
					'<%= config.ubuntu.autostart.path_system %>',
					'<%= config.vim.path_vimrc_system %>',
					'<%= config.zsh.path_aliases_system %>',
					'<%= config.zsh.path_config_system %>',
					'<%= config.zsh.path_functions_system %>',
					'<%= config.zsh.path_zshrc_system %>',
				],
			},

			backup: {
				options: {
					force: true,
				},
				src: '<%= config.backup.path_system %>',
			},

			z: {
				options: {
					force: true,
				},
				src: '<%= config.z.path_system %>',
			},

		},

		// -- Copy -------------------------------------------------------------

		copy: {

			backup: {
				files: [
					{
						expand: true,
						src: [
							'<%= config.git.path_gitconfig_system %>',
							'<%= config.git.path_gitignore_global_system %>',
							'<%= config.vim.path_vimrc_system %>',
							'<%= config.zsh.path_aliases_system %>',
							'<%= config.zsh.path_config_system %>',
							'<%= config.zsh.path_functions_system %>',
							'<%= config.zsh.path_zshrc_system %>',
						],
						dest: '<%= config.backup.path_system %>',
						flatten: true,
					},
					{
						expand: true,
						src: [
							'<%= config.subl.package_control.path_system %>',
							'<%= config.subl.preferences.path_system %>',
							'<%= config.subl.key_maps.path_system %>',
						],
						dest: '<%= config.backup.path_system %>/subl',
						flatten: true,
					},
					{
						expand: true,
						cwd: '<%= config.subl.snippets.path_system %>/',
						src: ['**'],
						dest: '<%= config.backup.path_system %>/subl/snippets',
					},
					{
						expand: true,
						cwd: '<%= config.ubuntu.autostart.path_system %>/',
						src: ['**'],
						dest: '<%= config.backup.path_system %>/ubuntu/autostart',
					},
				],
			},

		},

		// -- Git --------------------------------------------------------------

		gitclone: {

			zsh_syntax_highlighting: {
				options: {
					directory: '<%= config.custom_folder.plugins.zsh_syntax_highlighting.path_system %>',
					repository: '<%= config.custom_folder.plugins.zsh_syntax_highlighting.path_repository %>',
				},
			},

		},

		// -- Shell ------------------------------------------------------------

		shell: {

			// -- Make -------------------------

			dev_folders: {
				command: [
					'mkdir /home/iago/dev',
					'mkdir /home/iago/dev/projects',
					'mkdir /home/iago/dev/repos',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			softwares_folders: {
				command: [
					'mkdir /home/iago/.softwares',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			// -- Install ----------------------

			update: {
				command: [
					'sudo apt-get update',
					'sudo apt-get upgrade',
					'sudo apt-get dist-upgrade',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			zsh: {
				command: [
					'sudo apt-get install zsh',
					'chsh -s /usr/bin/zsh',
					'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			npm: {
				command: [
					'npm instal npm -g',
					'npm install gulp-cli -g',
					'npm install yeoman',
					'npm install jshint -g',
					'npm install bower -g',
					'npm install gh -g',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			softwares: {
				command: [
					'sudo apt-get install python-software-properties',
					'sudo apt-get install vim',
					'sudo apt-get install chromium-browser',
					'sudo apt-get install vlc',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			sublime: {
				command: [
					'sudo add-apt-repository ppa:webupd8team/sublime-text-3',
					'sudo apt-get update',
					'sudo apt-get install sublime-text-installer',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			java: {
				command: [
					'sudo add-apt-repository ppa:webupd8team/java',
					'sudo apt-get install oracle-java8-installer',
					'sudo apt-get install oracle-java8-set-default',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			tlp: {
				command: [
					'sudo apt-get remove laptop-mode-tools',
					'sudo add-apt-repository ppa:linrunner/tlp',
					'sudo apt-get update',
					'sudo apt-get install tlp tlp-rdw',
					'sudo tlp start',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			indicator_multiload: {
				command: 'sudo apt-get install indicator-multiload',
				options: {
					stdout: true,
					stderr: true,
				},
			},

			preload: {
				command: 'sudo apt-get install preload',
				options: {
					stdout: true,
					stderr: true,
				},
			},

			caffeine_idicator: {
				command: [
					'sudo apt-add-repository ppa:caffeine-developers/ppa',
					'sudo apt-get update',
					'sudo apt-get install caffeine',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

			// -- Ubuntu -----------------------

			always_show_menu_options: {
				command: 'gsettings set com.canonical.Unity always-show-menus true',
				options: {
					stdout: true,
					stderr: true,
				},
			},

			show_all_boot_options: {
				command: 'sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop',
				options: {
					stdout: true,
					stderr: true,
				},
			},

			removes_swap_percentual: {
				command: [
					'sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop',
					'sudo sysctl vm.swappiness=10',
					'sudo echo vm.swappiness=10 >> /etc/sysctl.conf',
				].join('&&'),
				options: {
					stdout: true,
					stderr: true,
				},
			},

		},

		// -- Symlink ----------------------------------------------------------

		symlink: {

			// -- Git --------------------------

			gitconfig: {
				src: '<%= config.git.path_gitconfig %>',
				dest: '<%= config.git.path_gitconfig_system %>',
			},

			gitignore: {
				src: '<%= config.git.path_gitignore_global %>',
				dest: '<%= config.git.path_gitignore_global_system %>',
			},

			// -- Zsh --------------------------

			zsh_aliases: {
				src: '<%= config.zsh.path_aliases %>',
				dest: '<%= config.zsh.path_aliases_system %>',
			},

			zsh_config: {
				src: '<%= config.zsh.path_config %>',
				dest: '<%= config.zsh.path_config_system %>',
			},

			zsh_functions: {
				src: '<%= config.zsh.path_functions %>',
				dest: '<%= config.zsh.path_functions_system %>',
			},

			zsh_theme: {
				src: '<%= config.custom_folder.themes.dracula.path %>',
				dest: '<%= config.custom_folder.themes.dracula.path_system %>',
			},

			zshrc: {
				src: '<%= config.zsh.path_zshrc %>',
				dest: '<%= config.zsh.path_zshrc_system %>',
			},

			// -- Sublime ----------------------

			subl_package_control: {
				src: '<%= config.subl.package_control.path %>',
				dest: '<%= config.subl.package_control.path_system %>',
			},

			subl_preferences: {
				src: '<%= config.subl.preferences.path %>',
				dest: '<%= config.subl.preferences.path_system %>',
			},

			subl_snippets: {
				src: '<%= config.subl.snippets.path %>',
				dest: '<%= config.subl.snippets.path_system %>',
			},

			subl_key_maps: {
				src: '<%= config.subl.key_maps.path %>',
				dest: '<%= config.subl.key_maps.path_system %>',
			},

			// -- Vim --------------------------

			vimrc: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

			// -- Autostart --------------------

			caffeine_indicator: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

			indicator_multiload: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

			mutate: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

			redshift: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

			rescuetime: {
				src: '<%= config.vim.path_vimrc %>',
				dest: '<%= config.vim.path_vimrc_system %>',
			},

		},

	});

	grunt.registerTask('banner', () => {
		console.log(grunt.file.read('templates/banner'));
	});

	grunt.registerTask('clean', [
		'clean:all',
	]);

	grunt.registerTask('z-refresh', [
		'clean:z',
	]);

	grunt.registerTask('backup', [
		'clean:backup',
		'copy:backup',
	]);

	grunt.registerTask('make', [
		'shell:softwares_folders',
		'shell:dev_folders',
	]);

	grunt.registerTask('install', [
		'shell:',
	]);

	grunt.registerTask('ubuntu', [
		'shell:always_show_menu_options',
		'shell:show_all_boot_options',
		'shell:removes_swap_percentual',
	]);

	grunt.registerTask('setup', [
		'backup',
		'clean:all',
		'make',
		'gitclone',
		'install',
		'symlink',
		'ubuntu',
	]);

};
