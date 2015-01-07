Blogger.PostsRoute = Ember.Route.extend({
	renderTemplate: function(){
		var controller = this.controllerFor('posts');

		this.render('posts', {
			outlet: 'posts',
			controller: controller
		});
	},
	model: function() {
		return posts;
	}
});