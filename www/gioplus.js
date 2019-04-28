var exec = require('cordova/exec');

module.exports = {
	getDeviceId: function (arg0, success, error) {
		exec(success, error, 'gioplus', 'getDeviceId', [arg0]);
	},
	getSessionId: function (arg0, success, error) {
		exec(success, error, 'gioplus', 'getSessionId', [arg0]);
	}
};