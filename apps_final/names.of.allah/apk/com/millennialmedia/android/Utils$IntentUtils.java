package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.lang.ref.WeakReference;

class Utils$IntentUtils
{
  private static void fixDataAndTypeForVideo(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getData();
    if (paramContext != null)
    {
      paramContext = paramContext.getLastPathSegment();
      if ((TextUtils.isEmpty(paramIntent.getStringExtra("class"))) && (!TextUtils.isEmpty(paramContext)) && ((paramContext.endsWith(".mp4")) || (paramContext.endsWith(".3gp")) || (paramContext.endsWith(".mkv")) || (paramContext.endsWith("content.once")))) {
        paramIntent.setDataAndType(paramIntent.getData(), "video/*");
      }
    }
  }
  
  static Intent getIntentForUri(HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    if (paramRedirectionListenerImpl == null) {
      return null;
    }
    Uri localUri = destinationUri;
    Context localContext = (Context)weakContext.get();
    Object localObject1;
    if (localContext != null) {
      if (localUri != null)
      {
        localObject1 = localUri.getScheme();
        if (localObject1 != null) {
          if (((String)localObject1).equalsIgnoreCase("market"))
          {
            MMSDK.Log.v("Creating Android Market intent.");
            localObject1 = new Intent("android.intent.action.VIEW", localUri);
            MMSDK.Event.intentStarted(localContext, "market", creatorAdImplInternalId);
            paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
            if (paramRedirectionListenerImpl == null) {
              break label711;
            }
            MMSDK.Log.v("%s resolved to Intent: %s", new Object[] { localUri, paramRedirectionListenerImpl });
          }
        }
      }
    }
    for (;;)
    {
      return paramRedirectionListenerImpl;
      if (((String)localObject1).equalsIgnoreCase("rtsp"))
      {
        MMSDK.Log.v("Creating streaming video player intent.");
        paramRedirectionListenerImpl = new Intent(localContext, MMActivity.class);
        paramRedirectionListenerImpl.setData(localUri);
        paramRedirectionListenerImpl.putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("tel"))
      {
        MMSDK.Log.v("Creating telephone intent.");
        localObject1 = new Intent("android.intent.action.DIAL", localUri);
        MMSDK.Event.intentStarted(localContext, "tel", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
        break;
      }
      Object localObject2;
      if (((String)localObject1).equalsIgnoreCase("sms"))
      {
        MMSDK.Log.v("Creating txt message intent.");
        localObject2 = new Intent("android.intent.action.VIEW");
        String str = localUri.getSchemeSpecificPart();
        int i = str.indexOf("?body=");
        localObject1 = str;
        if (i != -1) {
          localObject1 = str.substring(0, i);
        }
        ((Intent)localObject2).putExtra("address", ((String)localObject1).replace(',', ';'));
        if (i != -1) {
          ((Intent)localObject2).putExtra("sms_body", localUri.getSchemeSpecificPart().substring(i + 6));
        }
        ((Intent)localObject2).setType("vnd.android-dir/mms-sms");
        MMSDK.Event.intentStarted(localContext, "sms", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject2;
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("mailto"))
      {
        localObject1 = new Intent("android.intent.action.VIEW", localUri);
        MMSDK.Event.intentStarted(localContext, "email", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("geo"))
      {
        MMSDK.Log.v("Creating Google Maps intent.");
        localObject1 = new Intent("android.intent.action.VIEW", localUri);
        MMSDK.Event.intentStarted(localContext, "geo", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("https"))
      {
        MMSDK.Log.v("Creating launch browser intent.");
        localObject1 = new Intent("android.intent.action.VIEW", localUri);
        MMSDK.Event.intentStarted(localContext, "browser", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("mmbrowser"))
      {
        localObject2 = localUri.toString().substring(12);
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (!((String)localObject2).contains("://")) {
            localObject1 = ((String)localObject2).replaceFirst("//", "://");
          }
        }
        MMSDK.Log.v("MMBrowser - Creating launch browser intent.");
        localObject1 = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject1));
        MMSDK.Event.intentStarted(localContext, "browser", creatorAdImplInternalId);
        paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
        break;
      }
      if (((String)localObject1).equalsIgnoreCase("http"))
      {
        if ((localUri.getLastPathSegment() != null) && ((localUri.getLastPathSegment().endsWith(".mp4")) || (localUri.getLastPathSegment().endsWith(".3gp"))))
        {
          MMSDK.Log.v("Creating video player intent.");
          localObject1 = new Intent(localContext, MMActivity.class);
          ((Intent)localObject1).setData(localUri);
          ((Intent)localObject1).putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
          MMSDK.Event.intentStarted(localContext, "streamingVideo", creatorAdImplInternalId);
          paramRedirectionListenerImpl = (HttpRedirection.RedirectionListenerImpl)localObject1;
          break;
        }
        if (paramRedirectionListenerImpl.canOpenOverlay())
        {
          MMSDK.Log.v("Creating launch overlay intent.");
          paramRedirectionListenerImpl = new Intent(localContext, MMActivity.class);
          paramRedirectionListenerImpl.putExtra("class", AdViewOverlayActivity.class.getCanonicalName());
          paramRedirectionListenerImpl.setData(localUri);
          return paramRedirectionListenerImpl;
        }
        MMSDK.Log.v("Creating launch browser intent.");
        MMSDK.Event.intentStarted(localContext, "browser", creatorAdImplInternalId);
        paramRedirectionListenerImpl = new Intent("android.intent.action.VIEW", localUri);
        break;
      }
      MMSDK.Log.v("Creating intent for unrecognized URI. %s", new Object[] { localUri });
      paramRedirectionListenerImpl = new Intent("android.intent.action.VIEW", localUri);
      break;
      label711:
      MMSDK.Log.v("%s", new Object[] { localUri });
      continue;
      paramRedirectionListenerImpl = null;
      break;
      paramRedirectionListenerImpl = null;
    }
  }
  
  static void startActionView(Context paramContext, String paramString)
  {
    startActivity(paramContext, new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  static void startActivity(Context paramContext, Intent paramIntent)
  {
    if (!(paramContext instanceof Activity)) {
      paramIntent.addFlags(268435456);
    }
    fixDataAndTypeForVideo(paramContext, paramIntent);
    paramContext.startActivity(paramIntent);
  }
  
  static void startAdViewOverlayActivity(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, MMActivity.class);
    localIntent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
    startActivity(paramContext, localIntent);
  }
  
  static void startAdViewOverlayActivity(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, MMActivity.class);
    paramIntent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
    startActivity(paramContext, paramIntent);
  }
  
  static void startAdViewOverlayActivityWithData(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, MMActivity.class);
    localIntent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
    localIntent.setData(Uri.parse(paramString));
    startActivity(paramContext, localIntent);
  }
  
  static void startCachedVideoPlayerActivity(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, MMActivity.class);
    paramIntent.putExtra("class", "com.millennialmedia.android.CachedVideoPlayerActivity");
    startActivity(paramContext, paramIntent);
  }
  
  static void startPickerActivity(Context paramContext, File paramFile, String paramString)
  {
    Intent localIntent = new Intent(paramContext, MMActivity.class);
    localIntent.setData(Uri.fromFile(paramFile));
    localIntent.putExtra("type", paramString);
    localIntent.putExtra("class", "com.millennialmedia.android.BridgeMMMedia$PickerActivity");
    startActivity(paramContext, localIntent);
  }
  
  static void startVideoPlayerActivityWithData(Context paramContext, Uri paramUri)
  {
    Intent localIntent = new Intent(paramContext, MMActivity.class);
    localIntent.setData(paramUri);
    localIntent.putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
    startActivity(paramContext, localIntent);
  }
  
  static void startVideoPlayerActivityWithData(Context paramContext, File paramFile)
  {
    startVideoPlayerActivityWithData(paramContext, Uri.fromFile(paramFile));
  }
  
  static void startVideoPlayerActivityWithData(Context paramContext, String paramString)
  {
    startVideoPlayerActivityWithData(paramContext, Uri.parse(paramString));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.Utils.IntentUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */