package com.squareup.okhttp;

public enum ResponseSource
{
  CACHE,  CONDITIONAL_CACHE,  NETWORK;
  
  private ResponseSource() {}
  
  public boolean requiresConnection()
  {
    return (this == CONDITIONAL_CACHE) || (this == NETWORK);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.ResponseSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */