package com.inmobi.monetization;

public enum IMErrorCode
{
  private String a;
  
  static
  {
    INTERNAL_ERROR = new IMErrorCode("INTERNAL_ERROR", 1, "An error occurred while fetching the ad");
    NO_FILL = new IMErrorCode("NO_FILL", 2, "The ad request was successful, but no ad was returned");
  }
  
  private IMErrorCode(String paramString)
  {
    a = paramString;
  }
  
  public final void setMessage(String paramString)
  {
    a = paramString;
  }
  
  public final String toString()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMErrorCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */