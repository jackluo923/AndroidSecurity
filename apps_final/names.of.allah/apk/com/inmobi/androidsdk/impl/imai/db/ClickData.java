package com.inmobi.androidsdk.impl.imai.db;

import com.inmobi.androidsdk.impl.imai.IMAICore;

public class ClickData
{
  private long a;
  private String b;
  private boolean c;
  private int d;
  private boolean e;
  private long f;
  
  public ClickData() {}
  
  public ClickData(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    setClickId(IMAICore.getRandomNumber());
    setClickUrl(paramString);
    setFollowRedirect(paramBoolean1);
    setPingWv(paramBoolean2);
    setRetryCount(paramInt);
    setTimestamp(System.currentTimeMillis());
  }
  
  public long getClickId()
  {
    return a;
  }
  
  public String getClickUrl()
  {
    return b;
  }
  
  public int getRetryCount()
  {
    return d;
  }
  
  public long getTimestamp()
  {
    return f;
  }
  
  public boolean isFollowRedirects()
  {
    return e;
  }
  
  public boolean isPingWv()
  {
    return c;
  }
  
  public void setClickId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setClickUrl(String paramString)
  {
    b = paramString;
  }
  
  public void setFollowRedirect(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setPingWv(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setRetryCount(int paramInt)
  {
    d = paramInt;
  }
  
  public void setTimestamp(long paramLong)
  {
    f = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.imai.db.ClickData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */