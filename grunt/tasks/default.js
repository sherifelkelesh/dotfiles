'use strict';

// -- Default Tasks --------------------------------------------------------------------

module.exports = (grunt) => {

	grunt.task.registerTask('banner', () => {
		console.log(grunt.file.read('../../templates/.banner'));
	});

	grunt.registerTask();

};
