var ImageViewer = {
	images: ["국화:Chrysanthemum.jpg", "사막:Desert.jpg",
		"수국:Hydrangeas.jpg", "해파리:Jellyfish.jpg", "코알라:Koala.jpg",
		"등대:Lighthouse.jpg", "펭귄:Penguins.jpg", "툴립:Tulips.jpg"],
	changeImage: function() {
		var result = Math.floor(Math.random() * ImageViewer.images.length); //0.0 < Math.random() < 1.0 
		var image = ImageViewer.images[result].split(':')

		$("#images").attr('src', "images/" + image[1])
			.attr('alt', image[0]);


	},
	
	slideshow: function() {
					console.log("슬라이드쇼!")
				
					var text = $("#btn-slideshow");
					console.log("슬라이드쇼!2")
					console.log(text.hasClass("off"));
					
					var slide;
					if (text.hasClass("off")) {
						$("#btn-slideshow").removeClass('off').addClass('on').text("중지");
						slide =  setInterval(ImageViewer.changeImage, 1000);
					} else{
						$("#btn-slideshow").removeClass('on').addClass('off').text("슬라이드 쇼 시작");
						slide =  setInterval(ImageViewer.changeImage, 1000);
						clearInterval(slide);
					}
					

			},
			
	init: function() {
		$(function() {
			$("#btn-change").click(ImageViewer.changeImage);
			$("#btn-slideshow").click(ImageViewer.slideshow);
		});

	}
}