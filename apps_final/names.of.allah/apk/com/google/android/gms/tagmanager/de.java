package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;

class de
{
  private GoogleAnalytics aig;
  private Context mContext;
  private Tracker tM;
  
  de(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private void cn(String paramString)
  {
    try
    {
      if (aig == null)
      {
        aig = GoogleAnalytics.getInstance(mContext);
        aig.setLogger(new de.a());
        tM = aig.newTracker(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public Tracker cm(String paramString)
  {
    cn(paramString);
    return tM;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */