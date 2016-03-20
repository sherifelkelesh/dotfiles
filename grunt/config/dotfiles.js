'use strict';
let userhome = require('userhome');

// -- Dotfiles Config --------------------------------------------------------------------

module.exports = {

	dotfiles: {
		path_dotfiles: userhome('.dotfiles'),
		path_templates: '<%= dotfiles.path_dotfiles %>/templates'),
	},

};
