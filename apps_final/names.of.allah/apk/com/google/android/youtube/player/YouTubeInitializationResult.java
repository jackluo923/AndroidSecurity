package com.google.android.youtube.player;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnCancelListener;
import com.google.android.youtube.player.internal.m;
import com.google.android.youtube.player.internal.z;

public enum YouTubeInitializationResult
{
  static
  {
    INTERNAL_ERROR = new YouTubeInitializationResult("INTERNAL_ERROR", 1);
    UNKNOWN_ERROR = new YouTubeInitializationResult("UNKNOWN_ERROR", 2);
    SERVICE_MISSING = new YouTubeInitializationResult("SERVICE_MISSING", 3);
    SERVICE_VERSION_UPDATE_REQUIRED = new YouTubeInitializationResult("SERVICE_VERSION_UPDATE_REQUIRED", 4);
    SERVICE_DISABLED = new YouTubeInitializationResult("SERVICE_DISABLED", 5);
    SERVICE_INVALID = new YouTubeInitializationResult("SERVICE_INVALID", 6);
    ERROR_CONNECTING_TO_SERVICE = new YouTubeInitializationResult("ERROR_CONNECTING_TO_SERVICE", 7);
    CLIENT_LIBRARY_UPDATE_REQUIRED = new YouTubeInitializationResult("CLIENT_LIBRARY_UPDATE_REQUIRED", 8);
    NETWORK_ERROR = new YouTubeInitializationResult("NETWORK_ERROR", 9);
  }
  
  private YouTubeInitializationResult() {}
  
  public final Dialog getErrorDialog(Activity paramActivity, int paramInt)
  {
    return getErrorDialog(paramActivity, paramInt, null);
  }
  
  public final Dialog getErrorDialog(Activity paramActivity, int paramInt, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    if (paramOnCancelListener != null) {
      localBuilder.setOnCancelListener(paramOnCancelListener);
    }
    switch (YouTubeInitializationResult.1.a[ordinal()])
    {
    default: 
      paramOnCancelListener = null;
    }
    for (;;)
    {
      paramOnCancelListener = new YouTubeInitializationResult.a(paramActivity, paramOnCancelListener, paramInt);
      paramActivity = new m(paramActivity);
      switch (YouTubeInitializationResult.1.a[ordinal()])
      {
      default: 
        throw new IllegalArgumentException("Unexpected errorReason: " + name());
        paramOnCancelListener = z.b(z.a(paramActivity));
        continue;
        paramOnCancelListener = z.a(z.a(paramActivity));
      }
    }
    return localBuilder.setTitle(b).setMessage(c).setPositiveButton(d, paramOnCancelListener).create();
    return localBuilder.setTitle(e).setMessage(f).setPositiveButton(g, paramOnCancelListener).create();
    return localBuilder.setTitle(h).setMessage(i).setPositiveButton(j, paramOnCancelListener).create();
  }
  
  public final boolean isUserRecoverableError()
  {
    switch (YouTubeInitializationResult.1.a[ordinal()])
    {
    default: 
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeInitializationResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */