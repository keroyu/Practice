Blogger.PostsRoute = Ember.Route.extend({
	// The default properties of an Ember Controller
	controllerName: 'posts',
	renderTemplate: function() {
		this.render('posts');
	},
	model: function() {
		return posts;
	}
});