<%@ Page Language="C#" AutoEventWireup="true"%>
<!DOCTYPE HTML>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
       //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('swag');", true);
    }

    protected void myFunction(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('asgasg');", true);
         ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('asg');", true);
    }
</script>

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
            <button onclick="home()"><img src="images/icon.png"></button>
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
                <button onclick="showTrendingSongs()">Songs</button>
                <button onclick="showTrendingAlbums()">Albums</button>
                <button onclick="showTrendingArtists()">Artists</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="new" onclick="toggleSubMenu(this.id)">New</button>
            <div class="submenu">
                <button onclick="showNew()">Songs</button>
                <button onclick="showNew()">Albums</button>
            </div>
            <div>&#160;&#160;&#160;&#160;&#160;&#160;------------------------------</div>
            <button id="top" onclick="toggleSubMenu(this.id)">Top Rated</button>
            <div class="submenu">
                <button onclick="showTopSongs()">Songs</button>
                <button onclick="showTopAlbums()">Albums</button>
            </div>
            <div id="bottom">
                <div class="smallButton" runat="server">
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

                <div class="row header">
          
        	        <div class="span12">

                        <h1 id="title" runat="server">Digital Music Distributors</h1>
                        <h5 class="title-bg" id="trendingTitle">Trending Now</h5>
                        <button class="dropDownButton" id="sTrendingButton" onclick="return false">SONGS</button>
                        
                        <asp:SqlDataSource ID="TrendingSongs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT S.TITLE Song_title, S.LENGTH as Song_length, ALBUM.TITLE as Album_title, 
ARTIST.NAME AS Artist_name, avgRating, countRating FROM SONG S LEFT JOIN ALBUM ON S.ALBUM_ID = ALBUM.ALBUM_ID LEFT JOIN ARTIST ON S.ARTIST_ID = ARTIST.ARTIST_ID
LEFT JOIN (SELECT SONG.SONG_ID songID, AVG(SONG_RATINGS.RATING) avgRating, COUNT(SONG_RATINGS.RATING) countRating
FROM SONG LEFT JOIN SONG_RATINGS ON SONG.SONG_ID = SONG_RATINGS.SONG_ID
GROUP BY SONG.SONG_ID) ratings ON S.SONG_ID = ratings.songID ORDER BY countRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="sTrending" runat="server" DataSourceID="TrendingSongs">
                            <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label class="songLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="artistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="albumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="sTrendingTable">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr class="songHeader">
                                                    <th class="nameColumn" runat="server">NAME</th>
                                                    <th class="timeColumn" runat="server"></th>
                                                    <th class="artistColumn" runat="server">ARTIST</th>
                                                    <th class="albumColumn" runat="server">ALBUM</th>
                                                    <th runat="server">RATING</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server" ID="sTrendingPager">
                                        <td runat="server" class="pager">
                                            <asp:DataPager runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Label ID="Song_titleLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Song_lengthLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Album_titleLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Artist_nameLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="avgRatingLabel" runat="server" Text='<%# Eval("avgRating") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
 
                        <button class="dropDownButton" id="aTrendingButton" onclick="return false;">ALBUMS</button>
                        <asp:SqlDataSource ID="TrendingAlbums" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT TOP 8 ALBUM.TITLE Album_title, ARTIST.NAME Artist_name, avgRating, countRating 
FROM ALBUM, ARTIST, (SELECT ALBUM.ALBUM_ID albumID, AVG(ALBUM_RATINGS.RATING) avgRating, COUNT(ALBUM_RATINGS.RATING) countRating
  FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID GROUP BY ALBUM.ALBUM_ID) rating 
WHERE ALBUM.ARTIST_ID = ARTIST.ARTIST_ID AND albumID = ALBUM.ALBUM_ID ORDER BY countRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="aTrending" runat="server" DataSourceID="TrendingAlbums" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/album.jpg" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aAlbumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    <br />
                                    <asp:Label class="aArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <asp:Label class="aRatingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aTrendingTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD" >
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <button class="dropDownButton" id="aaTrendingButton" onclick="return false;">ARTISTS</button>
                        <asp:SqlDataSource ID="TrendingArtists" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                             selectCommand="SELECT TOP 8 ARTIST.NAME AS Artist_name, songRatingCount + albumRatingCount AS totalRatingCount 
FROM ARTIST, (SELECT ARTIST.ARTIST_ID AS artistID1, COUNT(SONG_RATINGS.RATING) AS songRatingCount
              FROM SONG LEFT JOIN SONG_RATINGS ON SONG.SONG_ID = SONG_RATINGS.SONG_ID LEFT JOIN ARTIST ON SONG.ARTIST_ID = ARTIST.ARTIST_ID 
              GROUP BY ARTIST.ARTIST_ID) as t1, (SELECT ARTIST.ARTIST_ID AS artistID2, COUNT(ALBUM_RATINGS.RATING) AS albumRatingCount
              FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID LEFT JOIN ARTIST ON ALBUM.ARTIST_ID = ARTIST.ARTIST_ID 
              GROUP BY ARTIST.ARTIST_ID) as t2 WHERE ARTIST.ARTIST_ID = artistID1 AND artistID1 = artistID2 ORDER BY totalRatingCount DESC;"></asp:SqlDataSource>
                        <asp:ListView ID="aaTrending" runat="server" DataSourceID="TrendingArtists" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD artistTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/artist.png" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aaArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aaTrendingTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD">
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <h5 class="title-bg" id="topTitle">Top Rated</h5>
                        <button class="dropDownButton" id="sTopButton" onclick="return false"">SONGS</button>
                        <asp:SqlDataSource ID="TopSongs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT S.TITLE Song_title, S.LENGTH as Song_length, ALBUM.TITLE as Album_title, 
ARTIST.NAME AS Artist_name, avgRating, countRating FROM SONG S LEFT JOIN ALBUM ON S.ALBUM_ID = ALBUM.ALBUM_ID LEFT JOIN ARTIST ON S.ARTIST_ID = ARTIST.ARTIST_ID
LEFT JOIN (SELECT SONG.SONG_ID songID, AVG(SONG_RATINGS.RATING) avgRating, COUNT(SONG_RATINGS.RATING) countRating
FROM SONG LEFT JOIN SONG_RATINGS ON SONG.SONG_ID = SONG_RATINGS.SONG_ID
GROUP BY SONG.SONG_ID) ratings ON S.SONG_ID = ratings.songID ORDER BY avgRating DESC;"></asp:SqlDataSource>
                        <asp:ListView ID="sTop" runat="server" DataSourceID="TopSongs">
                           <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label class="songLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="artistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="albumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="sTopTable">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr class="songHeader">
                                                    <th class="nameColumn" runat="server">NAME</th>
                                                    <th class="timeColumn" runat="server"></th>
                                                    <th class="artistColumn" runat="server">ARTIST</th>
                                                    <th class="albumColumn" runat="server">ALBUM</th>
                                                    <th runat="server">RATING</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" class="pager">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"/>
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <button class="dropDownButton" id="aTopButton" onclick="return false">ALBUMS</button>
                        <asp:SqlDataSource ID="TopAlbums" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 8 ALBUM.TITLE Album_title, ARTIST.NAME Artist_name, avgRating, countRating 
FROM ALBUM, ARTIST, (SELECT ALBUM.ALBUM_ID albumID, AVG(ALBUM_RATINGS.RATING) avgRating, COUNT(ALBUM_RATINGS.RATING) countRating
  FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID GROUP BY ALBUM.ALBUM_ID) rating 
WHERE ALBUM.ARTIST_ID = ARTIST.ARTIST_ID AND albumID = ALBUM.ALBUM_ID ORDER BY avgRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="aTop" runat="server" DataSourceID="TopAlbums" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/album.jpg" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aAlbumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    <br />
                                    <asp:Label class="aArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <asp:Label class="aRatingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aTopTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD" >
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <h5 class="title-bg" id="newTitle">New Releases</h5>

                        <asp:ListView ID="ListView1" runat="server" DataSourceID="TrendingSongs">
                            <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label class="songLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="artistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="albumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="ssTrendingTable">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr class="songHeader">
                                                    <th class="nameColumn" runat="server">NAME</th>
                                                    <th class="timeColumn" runat="server"></th>
                                                    <th class="artistColumn" runat="server">ARTIST</th>
                                                    <th class="albumColumn" runat="server">ALBUM</th>
                                                    <th runat="server">RATING</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                         </asp:ListView>

                         <asp:SqlDataSource ID="TrendingAlbums2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT ALBUM.TITLE Album_title, ARTIST.NAME Artist_name, avgRating, countRating 
FROM ALBUM, ARTIST, (SELECT ALBUM.ALBUM_ID albumID, AVG(ALBUM_RATINGS.RATING) avgRating, COUNT(ALBUM_RATINGS.RATING) countRating
  FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID GROUP BY ALBUM.ALBUM_ID) rating 
WHERE ALBUM.ARTIST_ID = ARTIST.ARTIST_ID AND albumID = ALBUM.ALBUM_ID ORDER BY countRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="ListView2" runat="server" DataSourceID="TrendingAlbums2" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/album.jpg" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aAlbumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    <br />
                                    <asp:Label class="aArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <asp:Label class="aRatingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aaaTrendingTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD" >
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                         <asp:SqlDataSource ID="TrendingArtists2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                             selectCommand="SELECT ARTIST.NAME AS Artist_name, songRatingCount + albumRatingCount AS totalRatingCount 
FROM ARTIST, (SELECT ARTIST.ARTIST_ID AS artistID1, COUNT(SONG_RATINGS.RATING) AS songRatingCount
              FROM SONG LEFT JOIN SONG_RATINGS ON SONG.SONG_ID = SONG_RATINGS.SONG_ID LEFT JOIN ARTIST ON SONG.ARTIST_ID = ARTIST.ARTIST_ID 
              GROUP BY ARTIST.ARTIST_ID) as t1, (SELECT ARTIST.ARTIST_ID AS artistID2, COUNT(ALBUM_RATINGS.RATING) AS albumRatingCount
              FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID LEFT JOIN ARTIST ON ALBUM.ARTIST_ID = ARTIST.ARTIST_ID 
              GROUP BY ARTIST.ARTIST_ID) as t2 WHERE ARTIST.ARTIST_ID = artistID1 AND artistID1 = artistID2 ORDER BY totalRatingCount DESC;"></asp:SqlDataSource>
                        <asp:ListView ID="ListView3" runat="server" DataSourceID="TrendingArtists2" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD artistTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/artist.png" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aaArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aaaaTrendingTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD">
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <asp:ListView ID="ListView4" runat="server" DataSourceID="TopSongs">
                           <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label class="songLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="artistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="albumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="ssTopTable">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr class="songHeader">
                                                    <th class="nameColumn" runat="server">NAME</th>
                                                    <th class="timeColumn" runat="server"></th>
                                                    <th class="artistColumn" runat="server">ARTIST</th>
                                                    <th class="albumColumn" runat="server">ALBUM</th>
                                                    <th runat="server">RATING</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>

                        <asp:SqlDataSource ID="TopAlbums1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ALBUM.TITLE Album_title, ARTIST.NAME Artist_name, avgRating, countRating 
FROM ALBUM, ARTIST, (SELECT ALBUM.ALBUM_ID albumID, AVG(ALBUM_RATINGS.RATING) avgRating, COUNT(ALBUM_RATINGS.RATING) countRating
  FROM ALBUM LEFT JOIN ALBUM_RATINGS ON ALBUM.ALBUM_ID = ALBUM_RATINGS.ALBUM_ID GROUP BY ALBUM.ALBUM_ID) rating 
WHERE ALBUM.ARTIST_ID = ARTIST.ARTIST_ID AND albumID = ALBUM.ALBUM_ID ORDER BY avgRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="ListView5" runat="server" DataSourceID="TopAlbums1" GroupItemCount="4" class="albumGrid">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td class="albumTD" runat="server">      
                                    <asp:Image class="albumCover" runat="server" ImageUrl='<%#"/images/album.jpg" %>'
                                     Height="160" Width="160"/><br />
                                    <asp:Label class="aAlbumLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    <br />
                                    <asp:Label class="aArtistLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    <asp:Label class="aRatingLabel" runat="server" Text='<%# Eval("avgRating") + " (" + Eval("countRating") + ")"%>' />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" class="aaaTopTable">
                                    <tr runat="server">
                                        <td runat="server" class="albumLayoutTD" >
                                            <table id="groupPlaceholderContainer" class="albumTable" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
