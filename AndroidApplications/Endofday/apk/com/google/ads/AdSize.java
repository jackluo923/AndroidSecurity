package com.google.ads;

public class AdSize
{
  public static final AdSize BANNER;
  public static final AdSize IAB_BANNER;
  public static final AdSize IAB_LEADERBOARD;
  public static final AdSize IAB_MRECT;
  private int a;
  private int b;
  private String c;
  
  static
  {
    AdSize localAdSize = new com/google/ads/AdSize;
    int i = 320;
    int j = 50;
    String str = "320x50_mb";
    localAdSize.<init>(i, j, str);
    BANNER = localAdSize;
    localAdSize = new com/google/ads/AdSize;
    i = 300;
    j = 250;
    str = "300x250_as";
    localAdSize.<init>(i, j, str);
    IAB_MRECT = localAdSize;
    localAdSize = new com/google/ads/AdSize;
    i = 468;
    j = 60;
    str = "468x60_as";
    localAdSize.<init>(i, j, str);
    IAB_BANNER = localAdSize;
    localAdSize = new com/google/ads/AdSize;
    i = 728;
    j = 90;
    str = "728x90_as";
    localAdSize.<init>(i, j, str);
    IAB_LEADERBOARD = localAdSize;
  }
  
  public AdSize(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, str);
  }
  
  private AdSize(int paramInt1, int paramInt2, String paramString)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramString;
  }
  
  public int getHeight()
  {
    int i = b;
    return i;
  }
  
  public int getWidth()
  {
    int i = a;
    return i;
  }
  
  public String toString()
  {
    String str = c;
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdSize
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */