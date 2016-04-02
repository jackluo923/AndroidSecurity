(function(window, $, PhotoSwipe){
    $(document).ready(function(){
        $('div.gallery-page')
            .live('pageshow', function(e){
                var 
                currentPage = $(e.target),
                    options = {
                        loop: true,
                        captionAndToolbarShowEmptyCaptions: false,
                        allowUserZoom: false
                    },
                    photoSwipeInstance = $("ul.gallery a", e.target).photoSwipe(options,  currentPage.attr('id'));
                return true;
            })
            .live('pagehide', function(e){
                var 
                currentPage = $(e.target),
                    photoSwipeInstance = PhotoSwipe.getInstance(currentPage.attr('id'));
                if (typeof photoSwipeInstance != "undefined" && photoSwipeInstance != null) {
                    PhotoSwipe.detatch(photoSwipeInstance);
                }
                return true;
            });
    });
}(window, window.jQuery, window.Code.PhotoSwipe));



// 広告を挿入する処理
$('div.gallery-page').live('pageinit', function(event) {
    $('div.banner-space-category-header').html($('div#banner-category-header').html());
    $('div.banner-space-category-footer').html($('div#banner-category-footer').html());
});