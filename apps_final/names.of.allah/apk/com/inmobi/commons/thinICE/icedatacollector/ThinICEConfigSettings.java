package com.inmobi.commons.thinICE.icedatacollector;

public class ThinICEConfigSettings
{
  public static final int CELL_OP_FLAG_DISABLE_CURRENT_DETAILS = 2;
  public static final int CELL_OP_FLAG_DISABLE_SIM_DETAILS = 1;
  public static final int WIFI_FLAG_DISABLE_NOMAP_EXCLUSION = 2;
  public static final int WIFI_FLAG_DISABLE_SSID_COLLECTION = 1;
  private boolean a = true;
  private boolean b = true;
  private boolean c = true;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private long g = 60000L;
  private long h = 3000L;
  private int i = 50;
  private int j = 0;
  private int k = 0;
  
  public ThinICEConfigSettings() {}
  
  public ThinICEConfigSettings(ThinICEConfigSettings paramThinICEConfigSettings)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
  }
  
  public static boolean bitTest(int paramInt1, int paramInt2)
  {
    return (paramInt1 & paramInt2) == paramInt2;
  }
  
  public int getCellOpFlags()
  {
    return k;
  }
  
  public int getSampleHistorySize()
  {
    return i;
  }
  
  public long getSampleInterval()
  {
    return g;
  }
  
  public long getStopRequestTimeout()
  {
    return h;
  }
  
  public int getWifiFlags()
  {
    return j;
  }
  
  public boolean isEnabled()
  {
    return a;
  }
  
  public boolean isSampleCellEnabled()
  {
    return c;
  }
  
  public boolean isSampleCellOperatorEnabled()
  {
    return b;
  }
  
  public boolean isSampleConnectedWifiEnabled()
  {
    return d;
  }
  
  public boolean isSampleLocationEnabled()
  {
    return e;
  }
  
  public boolean isSampleVisibleWifiEnabled()
  {
    return f;
  }
  
  public ThinICEConfigSettings setCellOpFlags(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  public ThinICEConfigSettings setEnabled(boolean paramBoolean)
  {
    a = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setSampleCellEnabled(boolean paramBoolean)
  {
    c = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setSampleCellOperatorEnabled(boolean paramBoolean)
  {
    b = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setSampleConnectedWifiEnabled(boolean paramBoolean)
  {
    d = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setSampleHistorySize(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Sample history size must be greater than 0");
    }
    i = paramInt;
    return this;
  }
  
  public ThinICEConfigSettings setSampleInterval(long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Sample interval must be greater than 0");
    }
    g = paramLong;
    return this;
  }
  
  public ThinICEConfigSettings setSampleLocationEnabled(boolean paramBoolean)
  {
    e = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setSampleVisibleWifiEnabled(boolean paramBoolean)
  {
    f = paramBoolean;
    return this;
  }
  
  public ThinICEConfigSettings setStopRequestTimeout(long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Stop request timeout must be greater than 0");
    }
    h = paramLong;
    return this;
  }
  
  public ThinICEConfigSettings setWifiFlags(int paramInt)
  {
    j = paramInt;
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    localStringBuilder.append("mEnabled=").append(a).append(", ");
    localStringBuilder.append("mSampleCellOperatorEnabled=").append(b).append(", ");
    localStringBuilder.append("mSampleCellEnabled=").append(c).append(", ");
    localStringBuilder.append("mSampleConnectedWifiEnabled=").append(d).append(", ");
    localStringBuilder.append("mSampleLocationEnabled=").append(e).append(", ");
    localStringBuilder.append("mSampleVisibleWifiEnabled=").append(f).append(", ");
    localStringBuilder.append("mSampleInterval=").append(g).append(", ");
    localStringBuilder.append("mStopRequestTimeout=").append(h).append(", ");
    localStringBuilder.append("mWifiFlags=").append(Integer.toBinaryString(j)).append(", ");
    localStringBuilder.append("mCellOpFlags=").append(Integer.toBinaryString(k));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.icedatacollector.ThinICEConfigSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */