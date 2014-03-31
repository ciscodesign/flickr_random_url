flickr_random_url
=================
This is a plugin for Jeckyll or Octopress.
Copy the file into _/plugins directory_ and you will able to use flickr_random_url tag into your views.

Plugins take a random image-url from your Flickr Favorites Gallery. If no images, it will try to load a "default.jpg".

Be sure to add on yout _config.yml
To obtain auth_token and secret:
[flickraw](https://github.com/hanklords/flickraw)

	flickr:
	  api_key: <flickr_api_key>
	  shared_secret: <flickr_secret>
	  access_token: <flickr_granted_token>
	  access_secret: <flickr_secret>



