package com.google.android.youtube.player;

import android.app.Activity;
import com.google.android.youtube.player.internal.n;
import com.google.android.youtube.player.internal.s;
import com.google.android.youtube.player.internal.t.a;

final class YouTubePlayerView$1
  implements t.a
{
  YouTubePlayerView$1(YouTubePlayerView paramYouTubePlayerView, Activity paramActivity) {}
  
  public final void a()
  {
    if (YouTubePlayerView.a(b) != null) {
      YouTubePlayerView.a(b, a);
    }
    YouTubePlayerView.b(b);
  }
  
  public final void b()
  {
    if ((!YouTubePlayerView.c(b)) && (YouTubePlayerView.d(b) != null)) {
      YouTubePlayerView.d(b).f();
    }
    YouTubePlayerView.e(b).a();
    if (b.indexOfChild(YouTubePlayerView.e(b)) < 0)
    {
      b.addView(YouTubePlayerView.e(b));
      b.removeView(YouTubePlayerView.f(b));
    }
    YouTubePlayerView.g(b);
    YouTubePlayerView.h(b);
    YouTubePlayerView.b(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */