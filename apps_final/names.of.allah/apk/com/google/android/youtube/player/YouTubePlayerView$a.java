package com.google.android.youtube.player;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalFocusChangeListener;
import com.google.android.youtube.player.internal.s;
import java.util.Set;

final class YouTubePlayerView$a
  implements ViewTreeObserver.OnGlobalFocusChangeListener
{
  private YouTubePlayerView$a(YouTubePlayerView paramYouTubePlayerView) {}
  
  public final void onGlobalFocusChanged(View paramView1, View paramView2)
  {
    if ((YouTubePlayerView.d(a) != null) && (YouTubePlayerView.i(a).contains(paramView2)) && (!YouTubePlayerView.i(a).contains(paramView1))) {
      YouTubePlayerView.d(a).g();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */