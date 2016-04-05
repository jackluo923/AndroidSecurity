package com.appyet.activity;

import android.app.Dialog;
import android.content.Intent;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer.OnInitializedListener;
import com.google.android.youtube.player.YouTubePlayer.Provider;

public abstract class au
  extends SherlockFragmentActivity
  implements YouTubePlayer.OnInitializedListener
{
  protected abstract YouTubePlayer.Provider a();
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1) {
      a().initialize("AIzaSyAUXIsUMWrKnCggcFBPkitgjsRsoBktRfI", this);
    }
  }
  
  public void onInitializationFailure(YouTubePlayer.Provider paramProvider, YouTubeInitializationResult paramYouTubeInitializationResult)
  {
    if (paramYouTubeInitializationResult.isUserRecoverableError())
    {
      paramYouTubeInitializationResult.getErrorDialog(this, 1).show();
      return;
    }
    Toast.makeText(this, String.format(getString(2131230848), new Object[] { paramYouTubeInitializationResult.toString() }), 1).show();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */