package com.google.android.gms.appindexing;

import android.net.Uri;
import android.view.View;

public final class AppIndexApi$AppIndexingLink
{
  public final Uri appIndexingUrl;
  public final int viewId;
  public final Uri webUrl;
  
  public AppIndexApi$AppIndexingLink(Uri paramUri1, Uri paramUri2, View paramView)
  {
    appIndexingUrl = paramUri1;
    webUrl = paramUri2;
    viewId = paramView.getId();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */