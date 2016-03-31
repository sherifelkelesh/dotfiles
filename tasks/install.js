'use strict';

// -- Install Task --------------------------------------------------------------------

module.exports = {

	shell: {

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

	},

};
