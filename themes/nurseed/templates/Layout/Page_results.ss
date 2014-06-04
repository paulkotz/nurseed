
<section class="content-page page-title">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="page-title-text">$Title</div>
                </div>
            </div>
        </div>
    </section>


    <section class="content-page main">
        <div class="container">
            
            <div class="col-sm-12">
                <!-- Main content -->
                <div class="main-content l-margin-n10">
                    
                    <h3><% if $Query %>
                        You searched for &quot;{$Query}&quot;
                    <% end_if %></h3>
                    
                    <% if $Results %>
                    <ul id="SearchResults">
                        <% loop $Results %>
                        <li>
                            <h3>
                                <a href="$Link">
                                    <% if $MenuTitle %>
                                    $MenuTitle
                                    <% else %>
                                    $Title
                                    <% end_if %>
                                </a>
                            </h3>
                            <% if $Content %>
                                <p>$Content.LimitWordCountXML</p>
                            <% end_if %>
                            <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                        </li>
                        <% end_loop %>
                    </ul>
                    <% else %>
                    <p>Sorry, your search query did not return any results.</p>
                    <% end_if %>

                    <% if $Results.MoreThanOnePage %>
                    <div id="PageNumbers">
                        <div class="pagination">
                            <% if $Results.NotFirstPage %>
                            <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
                            <% end_if %>
                            <span>
                                <% loop $Results.Pages %>
                                    <% if $CurrentBool %>
                                    $PageNum
                                    <% else %>
                                    <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                                    <% end_if %>
                                <% end_loop %>
                            </span>
                            <% if $Results.NotLastPage %>
                            <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
                            <% end_if %>
                        </div>
                        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
                    </div>
                    <% end_if %>

                </div>
                <!-- Main content END-->
            </div>
            
        </div>
    </section>