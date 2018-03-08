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
                        <h5 class="title-bg">Trending Now</h5>
                        <button class="dropDownButton" onclick="toggleDropDown()">SONGS</button>
                        <div class="dropDown" id="swag"> 
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                        </div>
                        <asp:SqlDataSource ID="TrendingSongs" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT S.TITLE Song_title, S.LENGTH as Song_length, ALBUM.TITLE as Album_title, ARTIST.NAME AS Artist_name, avgRating
FROM SONG S LEFT JOIN ALBUM ON S.ALBUM_ID = ALBUM.ALBUM_ID 
LEFT JOIN ARTIST ON S.ARTIST_ID = ARTIST.ARTIST_ID
LEFT JOIN (SELECT SONG.SONG_ID songID, AVG(SONG_RATINGS.RATING) avgRating
    FROM SONG LEFT JOIN SONG_RATINGS ON SONG.SONG_ID = SONG_RATINGS.SONG_ID
    GROUP BY SONG.SONG_ID) ratings ON S.SONG_ID = ratings.songID ORDER BY avgRating DESC;"></asp:SqlDataSource>
						<asp:ListView ID="sTrending" runat="server" DataSourceID="TrendingSongs">
                            <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label ID="Song_titleLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Album_titleLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Artist_nameLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
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

                        <h5 class="title-bg">New Releases</h5>
                        <button class="dropDownButton" onclick="toggleDropDown()">SONGS</button>
                        <div class="dropDown" id="swag1"> 
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                        </div>

               			<asp:ListView ID="sNew" runat="server" DataSourceID="TrendingSongs">
                         <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label ID="Song_titleLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Album_titleLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Artist_nameLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
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

                        <h5 class="title-bg">Top Rated</h5>
                        <button class="dropDownButton" onclick="toggleDropDown()">SONGS</button>
                        <div class="dropDown" id="swag2"> 
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                            <button class="dropDownItem">swag</button>
                        </div>

                        <asp:ListView ID="sTop" runat="server" DataSourceID="TrendingSongs">
                           <ItemTemplate>
                                <tr class="songRow">
                                    <td>
                                        <asp:Label ID="Song_titleLabel" runat="server" Text='<%# Eval("Song_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="timeLabel" runat="server" Text='<%# Eval("Song_length") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Album_titleLabel" runat="server" Text='<%# Eval("Artist_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Artist_nameLabel" runat="server" Text='<%# Eval("Album_title") %>' />
                                    </td>
                                    <td>
                                        <asp:Label class="ratingLabel" runat="server" Text='<%# Eval("avgRating") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
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
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
