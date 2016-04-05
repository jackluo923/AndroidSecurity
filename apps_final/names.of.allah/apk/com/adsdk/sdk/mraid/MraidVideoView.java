package com.adsdk.sdk.mraid;

import android.content.Context;
import android.content.Intent;

class MraidVideoView
  extends BaseVideoView
{
  public MraidVideoView(Context paramContext, Intent paramIntent, BaseVideoView.BaseVideoViewListener paramBaseVideoViewListener)
  {
    super(paramContext);
    setOnCompletionListener(new MraidVideoView.1(this, paramBaseVideoViewListener));
    setOnErrorListener(new MraidVideoView.2(this, paramBaseVideoViewListener));
    setVideoPath(paramIntent.getStringExtra("video_url"));
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */