package com.appyet.manager;

import android.app.Activity;
import android.media.MediaPlayer;
import android.widget.SeekBar;
import android.widget.TextView;
import com.appyet.d.a;
import com.appyet.d.d;
import com.appyet.data.FeedItem;

public final class bj
  implements Runnable
{
  private Activity a;
  private MediaPlayer b;
  private FeedItem c;
  
  public final void a(Activity paramActivity, MediaPlayer paramMediaPlayer, FeedItem paramFeedItem)
  {
    a = paramActivity;
    b = paramMediaPlayer;
    c = paramFeedItem;
  }
  
  public final void run()
  {
    try
    {
      if (a != null)
      {
        TextView localTextView1 = (TextView)a.findViewById(2131361992);
        TextView localTextView2 = (TextView)a.findViewById(2131361993);
        SeekBar localSeekBar = (SeekBar)a.findViewById(2131361991);
        if ((b != null) && (b.isPlaying()))
        {
          localTextView1.setText(a.a(b.getCurrentPosition()));
          localTextView2.setText(a.a(b.getDuration()));
          localSeekBar.setMax(b.getDuration());
          localSeekBar.setProgress(b.getCurrentPosition());
        }
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */