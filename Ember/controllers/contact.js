Blogger.ContactController = Ember.Controller.extend({
	messageSent: false,
	actions: {
		sendMessage: function() {
			var message = prompt('Type your message here:');
			this.set('confirmationNumber', Math.round(Math.random() * 1000000));
			this.set('messageSent', true);
		}
	}
});