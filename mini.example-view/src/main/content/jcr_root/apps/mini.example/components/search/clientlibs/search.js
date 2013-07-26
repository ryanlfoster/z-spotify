(function(){
	$('.search-albums').focus(function(){
		$('.search-albums').val("");
	})
	$('.search-tracks').focus(function(){
		$('.search-tracks').val("");
	})

	$('.albums-tab').click(function(){
		$('.search-tracks').addClass('hide');
		$('.search-albums').removeClass('hide');
		$('.albums-tab').addClass('active');
		$('.tracks-tab').removeClass('active');
	});
	$('.tracks-tab').click(function(){
		$('.search-albums').addClass('hide');
		$('.search-tracks').removeClass('hide');
		$('.tracks-tab').addClass('active');
		$('.albums-tab').removeClass('active');
	});
	// Start request to Spotifiy
	$('.search-albums').keyup(function(){

		//Preper ajax to Spotify
		var u = 'http://ws.spotify.com/search/1/album.json?q=',
			q = $('.search-albums').val();
			$('.album').text("");
			$('.link').text("");

		// Send requeset
		$.ajax({
			url: u + q,
			dataType: 'json',
			success: function (data) {
					
					var i;
					if(q.length > 2) {
									
						$('.results-albums').html('<table class="album-header"><tr><th width="350">Album</th><th width="255">Artist</th></tr></table>');
						
						for (i =0; i < data.albums.length;i++) {

							// Show result columns
							$('.content').removeClass('hide');
							$('.results-tracks').addClass('hide');
							$('.results-albums').removeClass('hide');

							// Put the search bar at the top of the screen for more visability
							$('h1').css('margin-top','0px');

							// Loop through results and create a row for each result
							$('.results-albums').append("<table class='album-results'><tr><td width='350' class='album'>" 
												+ data.albums[i].name + "</td><td class='link'><a class='add' href=" 
												+ data.albums[i].href + ">" + data.albums[i].artists[0].name + 
												"</a></td></tr></table>");
	
						}
						// Add tracks to playlist
						$('.add').click(function(){

						    var a = $(this).attr('href');
						        b = $(this).text();
						  	$('.album-list').append("<li><a href='" + a + "'>" + b + "</a></li>");
						  	return false;
						})
						
					}
					
			}
		});

	})
	// Start request to Spotifiy
	$('.search-tracks').keyup(function(){

		//Preper ajax to Spotify
		var u = 'http://ws.spotify.com/search/1/track.json?q=',
			q = $('.search-tracks').val();
			$('.track-name').text("");
			$('.link').text("");

		// Preper request for track query
		$.ajax({
			url: u + q,
			dataType: 'json',
			success: function (data) {
					
					var i;
					if(q.length > 2) {
									
					
						$('.results-tracks').html('<table class="track-header"><tr><th width="350">Track</th><th width="255">Artist</th></tr></table>');
						for (i =0; i < data.tracks.length;i++) {

							// Show result columns
							$('.content').removeClass('hide');
							$('.results-albums').addClass('hide');
							$('.results-tracks').removeClass('hide');

							// Put the search bar at the top of the screen for more visability
							$('h1').css('margin-top','0px');

							// Loop through results and create a row for each result
							$('.results-tracks').append("<table class='track-results'><tr><td width='350' class='tracks-name'>" 
												+ data.tracks[i].name + "</td><td class='link'><a class='add' href=" 
												+ data.tracks[i].href + ">" + data.tracks[i].album.name + 
												"</a></td></tr></table>");
	
						}
						// Add tracks to playlist
						$('.add').click(function(){

						    var a = $(this).attr('href');
						        b = $(this).text();
						  	$('.track-list').append("<li><a href='" + a + "'>" + b + "</a></li>");
						  	return false;
						})
						
					}
					
			}
		});

	})
}());	


