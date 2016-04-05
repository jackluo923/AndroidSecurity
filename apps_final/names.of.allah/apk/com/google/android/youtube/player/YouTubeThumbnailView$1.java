package com.google.android.youtube.player;

import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.t.a;

final class YouTubeThumbnailView$1
  implements t.a
{
  YouTubeThumbnailView$1(YouTubeThumbnailView paramYouTubeThumbnailView, YouTubeThumbnailView.OnInitializedListener paramOnInitializedListener) {}
  
  public final void a()
  {
    if (YouTubeThumbnailView.a(b) != null)
    {
      YouTubeThumbnailView localYouTubeThumbnailView = b;
      YouTubeThumbnailLoader localYouTubeThumbnailLoader = ab.a().a(YouTubeThumbnailView.a(b), localYouTubeThumbnailView);
      a.onInitializationSuccess(localYouTubeThumbnailView, localYouTubeThumbnailLoader);
      YouTubeThumbnailView.b(b);
    }
  }
  
  public final void b()
  {
    YouTubeThumbnailView.b(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeThumbnailView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */