class Song < ActiveRecord::Base

	def generate_marker_js

		"var image_#{id} = new google.maps.MarkerImage(
			'assets/album.png',
			new google.maps.Size(14,14),
			new google.maps.Point(0,0),
			new google.maps.Point(0,14)
		); " + 
		"var shadow_#{id} = new google.maps.MarkerImage(
			'assets/album_shadow.png',
			new google.maps.Size(24,14),
			new google.maps.Point(0,0),
			new google.maps.Point(0,14)
		); " +
		"var shape_#{id} = {
			coord: [10,0,11,1,12,2,13,3,13,4,13,5,13,6,13,7,13,8,13,9,13,10,13,11,12,12,11,13,3,13,2,12,1,11,0,10,0,9,0,8,0,7,0,6,0,5,0,4,0,3,1,2,2,1,3,0,10,0],
			type: 'poly'
		}; " +
		"marker_#{id} = new google.maps.Marker({ position: new google.maps.LatLng(" + latitude.to_s + "," + longitude.to_s + "), 
			icon: image_#{id},
			shadow: shadow_#{id}, 
			map: map 
		}); " +
		"google.maps.event.addListener(marker_#{id}, 'click', function() {
			infowindow.setContent('#{name} - " + start_time.strftime("%m/%d/%Y %H:%M%p") + "');
			infowindow.open(map,marker_#{id});
		}); ".html_safe

	end

end
