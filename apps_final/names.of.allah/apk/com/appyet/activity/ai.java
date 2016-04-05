package com.appyet.activity;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.widget.Toast;
import com.appyet.f.v;

final class ai
  implements MediaPlayer.OnErrorListener
{
  ai(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (!VideoPlayerActivity.d(a))
    {
      Toast.makeText(VideoPlayerActivity.e(a), 2131230843, 1).show();
      paramMediaPlayer = v.a(VideoPlayerActivity.f(a));
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(VideoPlayerActivity.f(a)));
      localIntent.setType(paramMediaPlayer);
      a.startActivity(localIntent);
      a.finish();
      return true;
    }
    Toast.makeText(VideoPlayerActivity.e(a), 2131230842, 1).show();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */