'use strict';
let userhome = require('userhome');
let dotfiles = require('./dotfiles.js');

// -- Git Config --------------------------------------------------------------------

module.exports = {

	git: {
		path_gitconfig_system: userhome('.gitconfig'),
		path_gitconfig: '<%= dotfiles.path_templates %>/.gitconfig',
		path_gitignore_global_system: userhome('.gitignore_global'),
		path_gitignore_global: '<%= dotfiles.path_templates %>/.gitignore_global',
	},

};
