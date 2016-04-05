package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.List;

class NoopDispatcher
  implements Dispatcher
{
  public void close() {}
  
  public int dispatchHits(List<Hit> paramList)
  {
    if (paramList == null) {
      return 0;
    }
    int j = Math.min(paramList.size(), 40);
    if (Log.isVerbose())
    {
      Log.v("Hits not actually being sent as dispatch is false...");
      int i = 0;
      if (i < j)
      {
        String str2;
        label63:
        String str1;
        if (TextUtils.isEmpty(((Hit)paramList.get(i)).getHitParams()))
        {
          str2 = "";
          if (!TextUtils.isEmpty(str2)) {
            break label124;
          }
          str1 = "Hit couldn't be read, wouldn't be sent:";
        }
        for (;;)
        {
          Log.v(str1 + str2);
          i += 1;
          break;
          str2 = HitBuilder.postProcessHit((Hit)paramList.get(i), System.currentTimeMillis());
          break label63;
          label124:
          if (str2.length() <= 2036) {
            str1 = "GET would be sent:";
          } else if (str2.length() > 8192) {
            str1 = "Would be too big:";
          } else {
            str1 = "POST would be sent:";
          }
        }
      }
    }
    return j;
  }
  
  public boolean okToDispatch()
  {
    return true;
  }
  
  public void overrideHostUrl(String paramString) {}
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.NoopDispatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */