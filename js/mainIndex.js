function toggleSubMenu(x) {
	var submenus = document.getElementsByClassName("submenu");
	if (x == "library") {
		toggleDisplay(submenus[0]);
	} else if (x == "trending") {
		toggleDisplay(submenus[1]);
	} else if (x == "new") {
		toggleDisplay(submenus[2]);
	} else if (x == "top") {
		toggleDisplay(submenus[3]);
	}
}

function toggleDisplay(x) {
		if (x.style.display == "block") {
			x.style.display = "none";
		} else {
			x.style.display = "block";
		}
}

getElementById("library").addEventListener('click', function(e) {
	alert(e.target.id);
});