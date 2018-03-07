<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>DMD Home</title>
        <!-- CSS
        ================================================== -->
        <link rel="stylesheet" href="css/bootstrapOld.css">
        
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

        <form id="form1" runat="server">
            <div class="container main">

            <div class="row header"><!-- Begin Header -->
          
        	        <div class="span12">

                        <h1 id="title">Digital Music Distributors</h1>

                        <h5 class="title-bg"><small>Recently Played</small></h5>
                            <div class="dropdown">
                              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                              <span class="caret"></span></button>
                              <ul class="dropdown-menu">
                                <li><a href="#">HTML</a></li>
                                <li><a href="#">CSS</a></li>
                                <li><a href="#">JavaScript</a></li>
                              </ul>
                            </div>
                    

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT SONG.TITLE as Song_title, SONG.LENGTH as Song_length, ALBUM.TITLE as Album_title, ARTIST.NAME AS Artist_name FROM SONG 
                                               LEFT JOIN ALBUM ON SONG.ALBUM_ID = ALBUM.ALBUM_ID LEFT JOIN ARTIST ON SONG.ARTIST_ID = ARTIST.ARTIST_ID"></asp:SqlDataSource>
                        <asp:ListView ID="ListView3" DataSourceID="SqlDataSource1" runat="server">
                            <LayoutTemplate>
                                <table runat="server" id="table1" >
                                    <tr runat="server" style="background-color: #98FB98">
                                        <th runat="server">Name</th>
                                        <th runat="server">Length</th>
                                        <th runat="server">Artist</th>
                                        <th runat="server">Album</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder" />
                                </table>
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr runat="server">
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%#Eval("Song_title")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Song_length")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Artist_name")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Album_title")%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>

                        <h5 class="title-bg"><small>Trending now</small>
                            <button class="btn btn-mini btn-inverse hidden-phone" type="button">Show all</button>
                        </h5>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT SONG.TITLE as Song_title, SONG.LENGTH as Song_length, ALBUM.TITLE as Album_title, ARTIST.NAME AS Artist_name FROM SONG 
                                            LEFT JOIN ALBUM ON SONG.ALBUM_ID = ALBUM.ALBUM_ID LEFT JOIN ARTIST ON SONG.ARTIST_ID = ARTIST.ARTIST_ID"></asp:SqlDataSource>
                        <asp:ListView ID="ListView1" DataSourceID="SqlDataSource1" runat="server">
                            <LayoutTemplate>
                                <table runat="server" id="table1" >
                                    <tr runat="server" style="background-color: #98FB98">
                                        <th runat="server">Name</th>
                                        <th runat="server">Length</th>
                                        <th runat="server">Artist</th>
                                        <th runat="server">Album</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder" />
                                </table>
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr runat="server">
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%#Eval("Song_title")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Song_length")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Artist_name")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Album_title")%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>

                        <h5 class="title-bg"><small>New Releases</small>
                            <button class="btn btn-mini btn-inverse hidden-phone" type="button">Show all</button>
                        </h5>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="SELECT SONG.TITLE as Song_title, SONG.LENGTH as Song_length, ALBUM.TITLE as Album_title, ARTIST.NAME AS Artist_name FROM SONG 
                                               LEFT JOIN ALBUM ON SONG.ALBUM_ID = ALBUM.ALBUM_ID LEFT JOIN ARTIST ON SONG.ARTIST_ID = ARTIST.ARTIST_ID"></asp:SqlDataSource>
                        <asp:ListView ID="ListView2" DataSourceID="SqlDataSource1" runat="server">
                            <LayoutTemplate>
                                <table runat="server" id="table1" >
                                    <tr runat="server" style="background-color: #98FB98">
                                        <th runat="server">Name</th>
                                        <th runat="server">Length</th>
                                        <th runat="server">Artist</th>
                                        <th runat="server">Album</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder" />
                                </table>
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr runat="server">
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="NameLabel" runat="server" Text='<%#Eval("Song_title")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Song_length")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Artist_name")%>' />
                                    </td>
                                    <td runat="server">
                                        <%-- Data-bound content. --%>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Album_title")%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
