var http = require("http");

// Print out message
function printMessage(username, badgeCount, points) {
	var message = username + " has " + badgeCount + " total badge(S) and " + points + " points in JavaScript";
	console.log(message);
}

// Print out error messages
function printError(error) {
	console.error(error.message);
}

function get(username) {
	var request = http.get("http://teamtreehouse.com/" + username + ".json", function(response) {
		var body = "";
		response.on('data', function (chunk) {
			body += chunk;
		});
		response.on('end', function () {
			if(response.statusCode === 200) {
				try {
					// Parse the data
					var profile = JSON.parse(body);
					printMessage(username, profile.badges.length, profile.points.JavaScript);
				}	catch(error) {
					// Parse Code Error
					printError(error);
				}
			} else {
				// Status Code Error
				printError({message: "There was an error getting the profile for " + username + ". (" + http.STATUS_CODES[response.statusCode] + ")" });
			}
		});
	});
	// Connection
	request.on("error", printError);
}

module.exports.get = get;

