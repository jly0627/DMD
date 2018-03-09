function toggleSubMenu(x) {
	var submenus = document.getElementsByClassName("submenu");
	if (x === "library") {
        toggleDisplay(submenus[0]);
	} else if (x === "trending") {
        toggleDisplay(submenus[1]);
	} else if (x === "new") {
        toggleDisplay(submenus[2]);
	} else if (x === "top") {
        toggleDisplay(submenus[3]);
    }
}

function toggleDisplay(x) {
	if (x.style.display === "block") {
		x.style.display = "none";
	} else {
		x.style.display = "block";
	}
}

function showTrendingSongs() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "block";
    document.getElementById("topTitle").style.display = "none";
    document.getElementById("newTitle").style.display = "none";

    document.getElementById("sTrendingButton").style.display = "block";
    document.getElementById("aTrendingButton").style.display = "none";
    document.getElementById("aaTrendingButton").style.display = "none";
    document.getElementById("sTopButton").style.display = "none";
    document.getElementById("aTopButton").style.display = "none";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}

function showTrendingAlbums() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "block";
    document.getElementById("topTitle").style.display = "none";
    document.getElementById("newTitle").style.display = "none";

    document.getElementById("sTrendingButton").style.display = "none";
    document.getElementById("aTrendingButton").style.display = "block";
    document.getElementById("aaTrendingButton").style.display = "none";
    document.getElementById("sTopButton").style.display = "none";
    document.getElementById("aTopButton").style.display = "none";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}

function showTrendingArtists() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "block";
    document.getElementById("topTitle").style.display = "none";
    document.getElementById("newTitle").style.display = "none";

    document.getElementById("sTrendingButton").style.display = "none";
    document.getElementById("aTrendingButton").style.display = "none";
    document.getElementById("aaTrendingButton").style.display = "block";
    document.getElementById("sTopButton").style.display = "none";
    document.getElementById("aTopButton").style.display = "none";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}

function showTopSongs() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "none";
    document.getElementById("topTitle").style.display = "block";
    document.getElementById("newTitle").style.display = "none";

    document.getElementById("sTrendingButton").style.display = "none";
    document.getElementById("aTrendingButton").style.display = "none";
    document.getElementById("aaTrendingButton").style.display = "none";
    document.getElementById("sTopButton").style.display = "block";
    document.getElementById("aTopButton").style.display = "none";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "block";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}

function showTopAlbums() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "none";
    document.getElementById("topTitle").style.display = "block";
    document.getElementById("newTitle").style.display = "none";

    document.getElementById("sTrendingButton").style.display = "none";
    document.getElementById("aTrendingButton").style.display = "none";
    document.getElementById("aaTrendingButton").style.display = "none";
    document.getElementById("sTopButton").style.display = "none";
    document.getElementById("aTopButton").style.display = "block";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "block";
    window.scrollTo(0, 0);
}

function showNew() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("sTopTable")[0].style.display = "none";
    document.getElementsByClassName("aTopTable")[0].style.display = "none";

    document.getElementById("trendingTitle").style.display = "none";
    document.getElementById("topTitle").style.display = "none";
    document.getElementById("newTitle").style.display = "block";

    document.getElementById("sTrendingButton").style.display = "none";
    document.getElementById("aTrendingButton").style.display = "none";
    document.getElementById("aaTrendingButton").style.display = "none";
    document.getElementById("sTopButton").style.display = "none";
    document.getElementById("aTopButton").style.display = "none";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}

function home() {
    document.getElementsByClassName("sTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("aTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("aaTrendingTable")[0].style.display = "block";
    document.getElementsByClassName("sTopTable")[0].style.display = "block";
    document.getElementsByClassName("aTopTable")[0].style.display = "block";

    document.getElementById("trendingTitle").style.display = "block";
    document.getElementById("topTitle").style.display = "block";
    document.getElementById("newTitle").style.display = "block";

    document.getElementById("sTrendingButton").style.display = "block";
    document.getElementById("aTrendingButton").style.display = "block";
    document.getElementById("aaTrendingButton").style.display = "block";
    document.getElementById("sTopButton").style.display = "block";
    document.getElementById("aTopButton").style.display = "block";

    document.getElementsByClassName("ssTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("aaaaTrendingTable")[0].style.display = "none";
    document.getElementsByClassName("ssTopTable")[0].style.display = "none";
    document.getElementsByClassName("aaaTopTable")[0].style.display = "none";
    window.scrollTo(0, 0);
}
