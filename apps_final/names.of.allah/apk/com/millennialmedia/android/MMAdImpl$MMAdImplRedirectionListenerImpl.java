package com.millennialmedia.android;

import android.app.Activity;
import android.net.Uri;
import org.json.JSONObject;

class MMAdImpl$MMAdImplRedirectionListenerImpl
  extends HttpRedirection.RedirectionListenerImpl
{
  public MMAdImpl$MMAdImplRedirectionListenerImpl(MMAdImpl paramMMAdImpl)
  {
    creatorAdImplInternalId = internalId;
  }
  
  public JSONObject getAdProperties()
  {
    return this$0.getAdProperties();
  }
  
  public boolean isActivityStartable(Uri paramUri)
  {
    paramUri = this$0.getContext();
    return (paramUri == null) || (!(paramUri instanceof Activity)) || (!((Activity)paramUri).isFinishing());
  }
  
  public void startingActivity(Uri paramUri)
  {
    super.startingActivity(paramUri);
    if ((paramUri.getScheme().equalsIgnoreCase("http")) || (paramUri.getScheme().equalsIgnoreCase("https"))) {
      MMSDK.Event.overlayOpened(this$0);
    }
  }
  
  public void updateLastVideoViewedTime()
  {
    if (this$0.adType != null) {
      HandShake.sharedHandShake(this$0.getContext()).updateLastVideoViewedTime(this$0.getContext(), this$0.adType);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdImpl.MMAdImplRedirectionListenerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */