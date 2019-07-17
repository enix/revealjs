"use strict";

Reveal.addEventListener( 'slidechanged', function( event ) {
	var picture = document.getElementById("enix-progress-animation");
	if ( Reveal.getIndices().h ) {
		picture.style.display = "block";
	} else {
		picture.style.display = "none";
	}
	var progress = Math.max(Reveal.getIndices().h - 1, 0) / Math.max(Reveal.getTotalSlides() - 1, 0) * 100;
	var frame = Math.max(Reveal.getIndices().h - 1, 0) % 14;
	console.info("moving progress animation to ", progress, frame);
	picture.style.left = progress + "%";
	picture.src = "enix/enix-anim-" + frame + ".svg";
} );