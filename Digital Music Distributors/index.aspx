<!DOCTYPE HTML>
<html>
    <head>
        <title>DMD Home</title>
        <!-- CSS
        ================================================== -->
        <link rel="stylesheet" href="css/bootstrapOld.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.css">
        <!-- <link rel="stylesheet" href="css/flexslider.css" /> -->
        <link rel="stylesheet" href="css/custom-styles.css">
        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- <link rel="stylesheet" href="css/style.css"> -->

        <!-- Favicons
        ================================================== -->
        <link rel="shortcut icon" href="images/icon.png">

        <!-- JS
        ================================================== -->
        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- <script src="js/jquery.flexslider.js"></script> -->
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- Main -->
        <script src="js/mainIndex.js"></script>

    </head>

    <body class="home">

        <form id="form1" runat="server">

        <div class="gtco-loader"></div>

        <div class="topnav">
            <div class="color-bar-2 color-bg"></div>
            <input id="search" type="text" placeholder="Search..">
        </div>

        <div class="sidenav">
            <div class="color-bar-2 color-bg"></div>
            <button><img src="images/icon.png"></button>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="library" onclick="toggleSubMenu(this.id)">My Library</button>
            <div id="initSubMenu" class="submenu">
                <button>Songs</button>
                <button>Albums</button>
                <button>Playlists</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <div class="smallButton">
                <button>History</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="trending" onclick="toggleSubMenu(this.id)">Trending</button>
            <div class="submenu">
                <button>Songs</button>
                <button>Albums</button>
                <button>Artists</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="new" onclick="toggleSubMenu(this.id)">New</button>
            <div class="submenu">
                <button>Songs</button>
                <button>Albums</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="top" onclick="toggleSubMenu(this.id)">Top Rated</button>
            <div class="submenu">
                <button>Songs</button>
                <button>Albums</button>
            </div>
            <div id="bottom">
                <div class="smallButton">
                    <button>Account</button>
                </div>
                <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
                <div class="smallButton">
                    <button>Sign Out</button>
                </div>
            </div>
        </div>
        
        <div class="container main">
        
            <div class="row header"><!-- Begin Header -->
          
        	<div class="span12">

                <h1 id="title">Digital Music Distributors</h1>

                <h5 class="title-bg"><small>Recently Played</small>
                    <button class="btn btn-mini btn-inverse hidden-phone" type="button">Show all</button>
                </h5>

                <h5 class="title-bg"><small>Trending now</small>
                    <button class="btn btn-mini btn-inverse hidden-phone" type="button">Show all</button>
                </h5>

                <h5 class="title-bg"><small>New Releases</small>
                    <button class="btn btn-mini btn-inverse hidden-phone" type="button">Show all</button>
                </h5>
        	
            <!-- Gallery Thumbnails
            ================================================== -->

                <div class="row clearfix no-margin">
                <ul class="gallery-post-grid holder">

                    <!-- Gallery Item 1 -->
                    <li  class="span3 gallery-item" data-id="id-1" data-type="illustration">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 2 -->
                    <li class="span3 gallery-item" data-id="id-2" data-type="illustration">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 3 -->
                    <li class="span3 gallery-item" data-id="id-3" data-type="web">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="#" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 4 -->
                    <li class="span3 gallery-item" data-id="id-4" data-type="video">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 5 -->
                    <li class="span3 gallery-item" data-id="id-5" data-type="web illustration">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 6 -->
                    <li class="span3 gallery-item" data-id="id-6" data-type="illustration design">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 7 -->
                    <li class="span3 gallery-item" data-id="id-7" data-type="design">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 8 -->
                    <li class="span3 gallery-item" data-id="id-8" data-type="web video">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 9 -->
                    <li class="span3 gallery-item" data-id="id-9" data-type="design">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 10 -->
                    <li class="span3 gallery-item" data-id="id-10" data-type="web design">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 11 -->
                    <li class="span3 gallery-item" data-id="id-11" data-type="illustration">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>

                    <!-- Gallery Item 12 -->
                    <li class="span3 gallery-item" data-id="id-12" data-type="illustration video">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="img/gallery/gallery-img-1-full.jpg" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="gallery-single.htm" class="item-details-link"></a>
                            </span>
                        </span>
                        <a href="gallery-single.htm"><img src="images/gallery-img-1-4col.jpg" alt="Gallery"></a>
                        <span class="project-details"><a href="gallery-single.htm">TEST</a>TEST</span>
                    </li>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title] FROM [ALBUM]"></asp:SqlDataSource>
                </ul>
                </div>
            </div>
 
        </div><!-- End Gallery Row -->
        
        </form>
        
    </body>
</html>
