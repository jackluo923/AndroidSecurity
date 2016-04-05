package com.millennialmedia.android;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import java.lang.ref.WeakReference;

final class HttpRedirection$1
  implements Runnable
{
  HttpRedirection$1(WeakReference paramWeakReference) {}
  
  private void handleDestinationUri(HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    Object localObject2 = null;
    Context localContext = (Context)weakContext.get();
    Object localObject1;
    if (localContext != null)
    {
      String str = destinationUri.getScheme();
      localObject1 = localObject2;
      if (str != null)
      {
        if (str.equalsIgnoreCase("mmvideo")) {
          break label139;
        }
        localObject1 = Utils.IntentUtils.getIntentForUri(paramRedirectionListenerImpl);
      }
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        localObject2 = paramRedirectionListenerImpl.getOverlaySettings();
        if ((localObject1 != null) && (localObject2 != null))
        {
          if (orientation != null) {
            orientation = orientation;
          }
          ((Intent)localObject1).putExtra("settings", (Parcelable)localObject2);
        }
        localObject2 = ((Intent)localObject1).getStringExtra("class");
        if ((localObject2 != null) && (((String)localObject2).equals(AdViewOverlayActivity.class.getCanonicalName()))) {}
      }
      try
      {
        if (paramRedirectionListenerImpl.isActivityStartable(destinationUri))
        {
          Utils.IntentUtils.startActivity(localContext, (Intent)localObject1);
          paramRedirectionListenerImpl.startingActivity(destinationUri);
        }
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        label139:
        MMSDK.Log.e("No activity found for %s", new Object[] { destinationUri });
      }
      localObject1 = localObject2;
      if (!paramRedirectionListenerImpl.isHandlingMMVideo(destinationUri))
      {
        VideoAd.playAd(localContext, destinationUri.getHost(), paramRedirectionListenerImpl);
        localObject1 = localObject2;
      }
    }
  }
  
  public final void run()
  {
    HttpRedirection.RedirectionListenerImpl localRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)val$listenerReference.get();
    String str;
    if (localRedirectionListenerImpl != null)
    {
      str = HttpRedirection.navigateRedirects(url);
      if (str != null)
      {
        destinationUri = Uri.parse(str);
        if (destinationUri == null) {
          break label48;
        }
        handleDestinationUri(localRedirectionListenerImpl);
      }
    }
    return;
    label48:
    MMSDK.Log.v("Could not start activity for %s", new Object[] { str });
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpRedirection.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */