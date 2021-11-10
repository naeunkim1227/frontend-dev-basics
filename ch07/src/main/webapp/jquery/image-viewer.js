/**
 * 
 */

var ImageViewer = {
	images = [ 
	"국화:Chrysanthemum.jpg", 
	"사막:Desert.jpg", 
	"수국:Hydrangeas.jpg", 
	"해파리:Jellyfish.jpg", 
	"코알라:Koala.jpg", 
	"등대:Lighthouse.jpg", 
	"펭귄:Penguins.jpg", 
	"툴립:Tulips.jpg" ],
	
	changeimage: function(){
		var result = Math.floor(Math.random() * (images.length));
		
		var img =ImageViewer.images[result].split(":");
		console.log(img[0]);
		 
	}
	
	
}