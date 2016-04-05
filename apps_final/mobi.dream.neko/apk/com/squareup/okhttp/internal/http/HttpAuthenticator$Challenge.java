package com.squareup.okhttp.internal.http;

final class HttpAuthenticator$Challenge
{
  final String realm;
  final String scheme;
  
  HttpAuthenticator$Challenge(String paramString1, String paramString2)
  {
    scheme = paramString1;
    realm = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof Challenge)) && (scheme.equals(scheme)) && (realm.equals(realm));
  }
  
  public int hashCode()
  {
    return scheme.hashCode() + realm.hashCode() * 31;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpAuthenticator.Challenge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */