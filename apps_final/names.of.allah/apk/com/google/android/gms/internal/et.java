package com.google.android.gms.internal;

import android.content.Context;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class et
  extends en
{
  private final String lp;
  private final Context mContext;
  private final String qV;
  
  public et(Context paramContext, String paramString1, String paramString2)
  {
    mContext = paramContext;
    lp = paramString1;
    qV = paramString2;
  }
  
  public final void bc()
  {
    try
    {
      ev.C("Pinging URL: " + qV);
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(qV).openConnection();
      try
      {
        ep.a(mContext, lp, true, localHttpURLConnection);
        int i = localHttpURLConnection.getResponseCode();
        if ((i < 200) || (i >= 300)) {
          ev.D("Received non-success response code " + i + " from pinging URL: " + qV);
        }
        return;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      ev.D("Error while parsing ping URL: " + qV + ". " + localIndexOutOfBoundsException.getMessage());
      return;
    }
    catch (IOException localIOException)
    {
      ev.D("Error while pinging URL: " + qV + ". " + localIOException.getMessage());
    }
  }
  
  public final void onStop() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */