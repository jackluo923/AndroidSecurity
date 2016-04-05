package com.inmobi.re.configs;

import android.graphics.Color;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.HashMap;
import java.util.Map;

public class ConfigParams
{
  static int g = 5;
  static String h = "[\"video/mp4\"]";
  String a = "#00000000";
  int b = 320;
  int c = 480;
  int d = 100;
  int e = 20;
  int f = 5;
  HashMap<String, Object> i = new HashMap();
  
  public String getAllowedContentType()
  {
    return h;
  }
  
  public int getMaxSaveContentSize()
  {
    return g;
  }
  
  public int getMaxVibDuration()
  {
    return f * 1000;
  }
  
  public int getMaxVibPatternLength()
  {
    return e;
  }
  
  public int getPicHeight()
  {
    return c;
  }
  
  public int getPicQuality()
  {
    return d;
  }
  
  public int getPicWidth()
  {
    return b;
  }
  
  public UID getUID()
  {
    return UID.getCommonsUid();
  }
  
  public int getWebviewBgColor()
  {
    try
    {
      int j = Color.parseColor(a);
      return j;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Invalid bg color. Reverting to default", localException);
    }
    return Color.parseColor("#00000000");
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    Object localObject;
    for (;;)
    {
      int j;
      try
      {
        i = ((HashMap)paramMap.get("savecontent"));
        g = InternalSDKUtil.getIntFromMap(i, "maxl", 1, 2147483647L);
        localObject = i.get("ctp").toString();
        h = (String)localObject;
        localObject = ((String)localObject).replace("\\", "");
        localObject = ((String)localObject).substring(1, ((String)localObject).length() - 1);
        if (!((String)localObject).contains(",")) {
          break;
        }
        localObject = ((String)localObject).split(",");
        j = 0;
        if (j >= localObject.length) {
          break label175;
        }
        if (localObject[j].substring(1, localObject[j].length() - 1).equals("")) {
          throw new IllegalArgumentException();
        }
      }
      catch (IllegalArgumentException paramMap)
      {
        g = 5;
        h = "[\"video/mp4\"]";
        throw new IllegalArgumentException();
      }
      j += 1;
    }
    if (new String[] { localObject }[0].equals("")) {
      throw new IllegalArgumentException();
    }
    label175:
    a = InternalSDKUtil.getStringFromMap(paramMap, "wthc");
    c = InternalSDKUtil.getIntFromMap(paramMap, "picH", 1, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "picW", 1, 2147483647L);
    d = InternalSDKUtil.getIntFromMap(paramMap, "picA", 1, 100L);
    f = InternalSDKUtil.getIntFromMap(paramMap, "mvd", 0, 2147483647L);
    e = InternalSDKUtil.getIntFromMap(paramMap, "mvp", 0, 2147483647L);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.configs.ConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */