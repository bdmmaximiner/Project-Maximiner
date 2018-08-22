window.onscroll = function() {
		var nav = document.getElementById('nav');
		if (window.pageYOffset > 100) {
			nav.style.background = "black";
			nav.style.boxShadow = "none";
			nav.style.opacity = 0.9;
			var y = document.getElementsByClassName("l1");
			var i;
			for (i = 0; i < y.length; i++) {
				y[i].style.color = "White";
			}

		} else {
			nav.style.background = "transparent";
			nav.style.boxShadow = "none";
			nav.style.opacity = 1;
			var y = document.getElementsByClassName("l1");
			var i;
			for (i = 0; i < y.length; i++) {
				y[i].style.color = "white";
			}

		}
	}