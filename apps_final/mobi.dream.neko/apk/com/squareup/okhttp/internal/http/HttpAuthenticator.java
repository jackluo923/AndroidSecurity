package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Base64;
import java.io.IOException;
import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class HttpAuthenticator
{
  private static InetAddress getConnectToInetAddress(Proxy paramProxy, URL paramURL)
    throws IOException
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  private static String getCredentials(RawHeaders paramRawHeaders, String paramString, Proxy paramProxy, URL paramURL)
    throws IOException
  {
    paramString = parseChallenges(paramRawHeaders, paramString);
    if (paramString.isEmpty()) {
      return null;
    }
    Iterator localIterator = paramString.iterator();
    while (localIterator.hasNext())
    {
      Challenge localChallenge = (Challenge)localIterator.next();
      if (paramRawHeaders.getResponseCode() == 407) {
        paramString = (InetSocketAddress)paramProxy.address();
      }
      for (paramString = Authenticator.requestPasswordAuthentication(paramString.getHostName(), getConnectToInetAddress(paramProxy, paramURL), paramString.getPort(), paramURL.getProtocol(), realm, scheme, paramURL, Authenticator.RequestorType.PROXY); paramString != null; paramString = Authenticator.requestPasswordAuthentication(paramURL.getHost(), getConnectToInetAddress(paramProxy, paramURL), paramURL.getPort(), paramURL.getProtocol(), realm, scheme, paramURL, Authenticator.RequestorType.SERVER))
      {
        paramRawHeaders = Base64.encode((paramString.getUserName() + ":" + new String(paramString.getPassword())).getBytes("ISO-8859-1"));
        return scheme + " " + paramRawHeaders;
      }
    }
    return null;
  }
  
  private static List<Challenge> parseChallenges(RawHeaders paramRawHeaders, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramRawHeaders.length())
    {
      if (!paramString.equalsIgnoreCase(paramRawHeaders.getFieldName(i))) {}
      label176:
      for (;;)
      {
        i += 1;
        break;
        String str1 = paramRawHeaders.getValue(i);
        int j = 0;
        for (;;)
        {
          if (j >= str1.length()) {
            break label176;
          }
          int k = HeaderParser.skipUntil(str1, j, " ");
          String str2 = str1.substring(j, k).trim();
          j = HeaderParser.skipWhitespace(str1, k);
          if (!str1.regionMatches(j, "realm=\"", 0, "realm=\"".length())) {
            break;
          }
          j += "realm=\"".length();
          k = HeaderParser.skipUntil(str1, j, "\"");
          String str3 = str1.substring(j, k);
          j = HeaderParser.skipWhitespace(str1, HeaderParser.skipUntil(str1, k + 1, ",") + 1);
          localArrayList.add(new Challenge(str2, str3));
        }
      }
    }
    return localArrayList;
  }
  
  public static boolean processAuthHeader(int paramInt, RawHeaders paramRawHeaders1, RawHeaders paramRawHeaders2, Proxy paramProxy, URL paramURL)
    throws IOException
  {
    if ((paramInt != 407) && (paramInt != 401)) {
      throw new IllegalArgumentException();
    }
    if (paramInt == 407) {}
    for (String str = "Proxy-Authenticate";; str = "WWW-Authenticate")
    {
      paramProxy = getCredentials(paramRawHeaders1, str, paramProxy, paramURL);
      if (paramProxy != null) {
        break;
      }
      return false;
    }
    if (paramInt == 407) {}
    for (paramRawHeaders1 = "Proxy-Authorization";; paramRawHeaders1 = "Authorization")
    {
      paramRawHeaders2.set(paramRawHeaders1, paramProxy);
      return true;
    }
  }
  
  private static final class Challenge
  {
    final String realm;
    final String scheme;
    
    Challenge(String paramString1, String paramString2)
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
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpAuthenticator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */