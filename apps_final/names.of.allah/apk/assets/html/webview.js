$(document).ready(function() {

    $('img').removeAttr('style');
    
    $('iframe').each(function() {
        var src = $(this).attr('src');
        // Replace youtube vids
        var ytprefix = "http://www.youtube.com/embed/";
		var ytsprefix = "https://www.youtube.com/embed/";
		var ytnoprefix = "//www.youtube.com/embed/";
        if(src != null) {
			if(src.indexOf(ytprefix) != -1) {
				replaceYT(this, src.substring(ytprefix.length));
			} else if(src.indexOf(ytsprefix) != -1) {
				replaceYT(this, src.substring(ytsprefix.length));
			}else if(src.indexOf(ytnoprefix) != -1) {
				replaceYT(this, src.substring(ytnoprefix.length));
			}
			
        } 
    });

    $('object').each(function() {
        var srcel = $('param[name="movie"]', this);
        var src = $(srcel).attr('value');
        // Replace youtube vids
        var ytprefix = "http://www.youtube.com/v/";
		var ytsprefix = "https://www.youtube.com/v/";
		var ytnoprefix = "//www.youtube.com/v/";
        if(src != null) {
			if (src.indexOf(ytprefix) != -1)
			{
				replaceYT(this, src.substring(ytprefix.length));
			} else if (src.indexOf(ytsprefix) != -1)
			{
				replaceYT(this, src.substring(ytsprefix.length));
			}
			else if (src.indexOf(ytnoprefix) != -1)
			{
				replaceYT(this, src.substring(ytnoprefix.length));
			}
        }
    });
	
    $('audio').each(function() {
        var src = $(this).attr('src');
		var img = $(this).attr('img');

		if (img == null)
		{
			img = 'file:///android_asset/html/podcast_background.png';
		}
		
        if(src != null) {
            replaceAudio(this, src, img);
        }
    });

 
});

function replaceYT(el, code) {
    if(code.indexOf("/") != -1) {
        code = code.substring(0, code.indexOf("/"));
    }
    if(code.indexOf("?") != -1) {
        code = code.substring(0, code.indexOf("?"));
    }
    var atag = $("<p><a href='appyet.youtube:" + code +"'><img class='appyet_youtubeimg' src='file:///android_asset/html/youtube_btn_play.png' style='background:url(http://i.ytimg.com/vi/" + code + "/0.jpg)'/></a></p>");
    $(el).replaceWith(atag);
}

function replaceAudio(el, src, img) {
    var atag = $("<p><a href='appyet.audio:" + src +"'><img class='appyet_audioimg' src='file:///android_asset/html/audio.png' style='background:url(" + img + ")'/></a></p>");
    $(el).replaceWith(atag);
}