package com.google.android.youtube.player;

final class YouTubeBaseActivity$a
  implements YouTubePlayerView.b
{
  private YouTubeBaseActivity$a(YouTubeBaseActivity paramYouTubeBaseActivity) {}
  
  public final void a(YouTubePlayerView paramYouTubePlayerView)
  {
    if ((YouTubeBaseActivity.c(a) != null) && (YouTubeBaseActivity.c(a) != paramYouTubePlayerView)) {
      YouTubeBaseActivity.c(a).b(true);
    }
    YouTubeBaseActivity.a(a, paramYouTubePlayerView);
    if (YouTubeBaseActivity.d(a) > 0) {
      paramYouTubePlayerView.a();
    }
    if (YouTubeBaseActivity.d(a) >= 2) {
      paramYouTubePlayerView.b();
    }
  }
  
  public final void a(YouTubePlayerView paramYouTubePlayerView, String paramString, YouTubePlayer.OnInitializedListener paramOnInitializedListener)
  {
    paramYouTubePlayerView.a(a, paramYouTubePlayerView, paramString, paramOnInitializedListener, YouTubeBaseActivity.a(a));
    YouTubeBaseActivity.b(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeBaseActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */