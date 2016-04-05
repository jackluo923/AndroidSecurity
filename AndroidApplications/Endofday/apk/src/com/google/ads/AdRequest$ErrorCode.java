package com.google.ads;

public enum AdRequest$ErrorCode
{
  private static final ErrorCode[] b;
  private String a;
  
  static
  {
    int n = 3;
    int m = 2;
    int k = 1;
    int j = 0;
    ErrorCode localErrorCode = new com/google/ads/AdRequest$ErrorCode;
    Object localObject = "INVALID_REQUEST";
    String str = "Invalid Google Ad request.";
    localErrorCode.<init>((String)localObject, j, str);
    INVALID_REQUEST = localErrorCode;
    localErrorCode = new com/google/ads/AdRequest$ErrorCode;
    localObject = "NO_FILL";
    str = "No ad to show.";
    localErrorCode.<init>((String)localObject, k, str);
    NO_FILL = localErrorCode;
    localErrorCode = new com/google/ads/AdRequest$ErrorCode;
    localObject = "NETWORK_ERROR";
    str = "A network error occurred.";
    localErrorCode.<init>((String)localObject, m, str);
    NETWORK_ERROR = localErrorCode;
    localErrorCode = new com/google/ads/AdRequest$ErrorCode;
    localObject = "INTERNAL_ERROR";
    str = "There was an internal error.";
    localErrorCode.<init>((String)localObject, n, str);
    INTERNAL_ERROR = localErrorCode;
    int i = 4;
    ErrorCode[] arrayOfErrorCode = new ErrorCode[i];
    localObject = INVALID_REQUEST;
    arrayOfErrorCode[j] = localObject;
    localObject = NO_FILL;
    arrayOfErrorCode[k] = localObject;
    localObject = NETWORK_ERROR;
    arrayOfErrorCode[m] = localObject;
    localObject = INTERNAL_ERROR;
    arrayOfErrorCode[n] = localObject;
    b = arrayOfErrorCode;
  }
  
  private AdRequest$ErrorCode(String paramString)
  {
    a = paramString;
  }
  
  public final String toString()
  {
    String str = a;
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdRequest.ErrorCode
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */