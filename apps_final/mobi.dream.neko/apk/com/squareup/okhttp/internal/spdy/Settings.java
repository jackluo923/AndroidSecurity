package com.squareup.okhttp.internal.spdy;

final class Settings
{
  static final int CLIENT_CERTIFICATE_VECTOR_SIZE = 8;
  static final int COUNT = 9;
  static final int CURRENT_CWND = 5;
  static final int DEFAULT_INITIAL_WINDOW_SIZE = 65536;
  static final int DOWNLOAD_BANDWIDTH = 2;
  static final int DOWNLOAD_RETRANS_RATE = 6;
  static final int FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS = 1;
  static final int INITIAL_WINDOW_SIZE = 7;
  static final int MAX_CONCURRENT_STREAMS = 4;
  static final int PERSISTED = 2;
  static final int PERSIST_VALUE = 1;
  static final int ROUND_TRIP_TIME = 3;
  static final int UPLOAD_BANDWIDTH = 1;
  private int persistValue;
  private int persisted;
  private int set;
  private final int[] values = new int[9];
  
  int flags(int paramInt)
  {
    int i = 0;
    if (isPersisted(paramInt)) {
      i = 0x0 | 0x2;
    }
    int j = i;
    if (persistValue(paramInt)) {
      j = i | 0x1;
    }
    return j;
  }
  
  int get(int paramInt)
  {
    return values[paramInt];
  }
  
  int getClientCertificateVectorSize(int paramInt)
  {
    if ((set & 0x100) != 0) {
      paramInt = values[8];
    }
    return paramInt;
  }
  
  int getCurrentCwnd(int paramInt)
  {
    if ((set & 0x20) != 0) {
      paramInt = values[5];
    }
    return paramInt;
  }
  
  int getDownloadBandwidth(int paramInt)
  {
    if ((set & 0x4) != 0) {
      paramInt = values[2];
    }
    return paramInt;
  }
  
  int getDownloadRetransRate(int paramInt)
  {
    if ((set & 0x40) != 0) {
      paramInt = values[6];
    }
    return paramInt;
  }
  
  int getInitialWindowSize(int paramInt)
  {
    if ((set & 0x80) != 0) {
      paramInt = values[7];
    }
    return paramInt;
  }
  
  int getMaxConcurrentStreams(int paramInt)
  {
    if ((set & 0x10) != 0) {
      paramInt = values[4];
    }
    return paramInt;
  }
  
  int getRoundTripTime(int paramInt)
  {
    if ((set & 0x8) != 0) {
      paramInt = values[3];
    }
    return paramInt;
  }
  
  int getUploadBandwidth(int paramInt)
  {
    if ((set & 0x2) != 0) {
      paramInt = values[1];
    }
    return paramInt;
  }
  
  boolean isPersisted(int paramInt)
  {
    return (persisted & 1 << paramInt) != 0;
  }
  
  boolean isSet(int paramInt)
  {
    return (set & 1 << paramInt) != 0;
  }
  
  void merge(Settings paramSettings)
  {
    int i = 0;
    if (i < 9)
    {
      if (!paramSettings.isSet(i)) {}
      for (;;)
      {
        i += 1;
        break;
        set(i, paramSettings.flags(i), paramSettings.get(i));
      }
    }
  }
  
  boolean persistValue(int paramInt)
  {
    return (persistValue & 1 << paramInt) != 0;
  }
  
  void set(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= values.length) {
      return;
    }
    int i = 1 << paramInt1;
    set |= i;
    if ((paramInt2 & 0x1) != 0)
    {
      persistValue |= i;
      if ((paramInt2 & 0x2) == 0) {
        break label84;
      }
    }
    label84:
    for (persisted |= i;; persisted &= (i ^ 0xFFFFFFFF))
    {
      values[paramInt1] = paramInt3;
      return;
      persistValue &= (i ^ 0xFFFFFFFF);
      break;
    }
  }
  
  int size()
  {
    return Integer.bitCount(set);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.Settings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */