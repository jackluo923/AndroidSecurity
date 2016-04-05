package com.inmobi.androidsdk;

public enum AdRequest$ErrorCode
{
  static
  {
    AD_DOWNLOAD_IN_PROGRESS = new ErrorCode("AD_DOWNLOAD_IN_PROGRESS", 1);
    AD_CLICK_IN_PROGRESS = new ErrorCode("AD_CLICK_IN_PROGRESS", 2);
    AD_FETCH_TIMEOUT = new ErrorCode("AD_FETCH_TIMEOUT", 3);
    AD_RENDERING_TIMEOUT = new ErrorCode("AD_RENDERING_TIMEOUT", 4);
    NETWORK_ERROR = new ErrorCode("NETWORK_ERROR", 5);
    INTERNAL_ERROR = new ErrorCode("INTERNAL_ERROR", 6);
    NO_FILL = new ErrorCode("NO_FILL", 7);
  }
  
  private AdRequest$ErrorCode() {}
  
  public final int getErrorCode()
  {
    int i = 3;
    if (this == AD_FETCH_TIMEOUT) {
      i = 1;
    }
    if (this == NETWORK_ERROR) {
      i = 2;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.AdRequest.ErrorCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */