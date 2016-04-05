package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class RawHeaders
{
  private static final Comparator<String> FIELD_NAME_COMPARATOR = new Comparator()
  {
    public int compare(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (paramAnonymousString1 == paramAnonymousString2) {
        return 0;
      }
      if (paramAnonymousString1 == null) {
        return -1;
      }
      if (paramAnonymousString2 == null) {
        return 1;
      }
      return String.CASE_INSENSITIVE_ORDER.compare(paramAnonymousString1, paramAnonymousString2);
    }
  };
  private int httpMinorVersion = 1;
  private final List<String> namesAndValues = new ArrayList(20);
  private String requestLine;
  private int responseCode = -1;
  private String responseMessage;
  private String statusLine;
  
  public RawHeaders() {}
  
  public RawHeaders(RawHeaders paramRawHeaders)
  {
    namesAndValues.addAll(namesAndValues);
    requestLine = requestLine;
    statusLine = statusLine;
    httpMinorVersion = httpMinorVersion;
    responseCode = responseCode;
    responseMessage = responseMessage;
  }
  
  private void addLenient(String paramString1, String paramString2)
  {
    namesAndValues.add(paramString1);
    namesAndValues.add(paramString2.trim());
  }
  
  public static RawHeaders fromBytes(InputStream paramInputStream)
    throws IOException
  {
    RawHeaders localRawHeaders;
    do
    {
      localRawHeaders = new RawHeaders();
      localRawHeaders.setStatusLine(Util.readAsciiLine(paramInputStream));
      readHeaders(paramInputStream, localRawHeaders);
    } while (localRawHeaders.getResponseCode() == 100);
    return localRawHeaders;
  }
  
  public static RawHeaders fromMultimap(Map<String, List<String>> paramMap, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean) {
      throw new UnsupportedOperationException();
    }
    RawHeaders localRawHeaders = new RawHeaders();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (List)((Map.Entry)localObject).getValue();
      if (str != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          localRawHeaders.addLenient(str, (String)((Iterator)localObject).next());
        }
      }
      else if (!((List)localObject).isEmpty())
      {
        localRawHeaders.setStatusLine((String)((List)localObject).get(((List)localObject).size() - 1));
      }
    }
    return localRawHeaders;
  }
  
  public static RawHeaders fromNameValueBlock(List<String> paramList)
  {
    if (paramList.size() % 2 != 0) {
      throw new IllegalArgumentException("Unexpected name value block: " + paramList);
    }
    RawHeaders localRawHeaders = new RawHeaders();
    int i = 0;
    while (i < paramList.size())
    {
      String str1 = (String)paramList.get(i);
      String str2 = (String)paramList.get(i + 1);
      int k;
      for (int j = 0; j < str2.length(); j = k + 1)
      {
        int m = str2.indexOf(0, j);
        k = m;
        if (m == -1) {
          k = str2.length();
        }
        namesAndValues.add(str1);
        namesAndValues.add(str2.substring(j, k));
      }
      i += 2;
    }
    return localRawHeaders;
  }
  
  public static void readHeaders(InputStream paramInputStream, RawHeaders paramRawHeaders)
    throws IOException
  {
    for (;;)
    {
      String str = Util.readAsciiLine(paramInputStream);
      if (str.length() == 0) {
        break;
      }
      paramRawHeaders.addLine(str);
    }
  }
  
  public void add(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("fieldname == null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("value == null");
    }
    if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1)) {
      throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
    }
    addLenient(paramString1, paramString2);
  }
  
  public void addAll(String paramString, List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      add(paramString, (String)paramList.next());
    }
  }
  
  public void addLine(String paramString)
  {
    int i = paramString.indexOf(":");
    if (i == -1)
    {
      addLenient("", paramString);
      return;
    }
    addLenient(paramString.substring(0, i), paramString.substring(i + 1));
  }
  
  public void addSpdyRequestHeaders(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    add(":method", paramString1);
    add(":scheme", paramString5);
    add(":path", paramString2);
    add(":version", paramString3);
    add(":host", paramString4);
  }
  
  public void computeResponseStatusLineFromSpdyHeaders()
    throws IOException
  {
    Object localObject1 = null;
    String str1 = null;
    int i = 0;
    if (i < namesAndValues.size())
    {
      String str2 = (String)namesAndValues.get(i);
      Object localObject2;
      if (":status".equals(str2)) {
        localObject2 = (String)namesAndValues.get(i + 1);
      }
      for (;;)
      {
        i += 2;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
        if (":version".equals(str2))
        {
          str1 = (String)namesAndValues.get(i + 1);
          localObject2 = localObject1;
        }
      }
    }
    if ((localObject1 == null) || (str1 == null)) {
      throw new ProtocolException("Expected ':status' and ':version' headers not present");
    }
    setStatusLine(str1 + " " + (String)localObject1);
  }
  
  public String get(String paramString)
  {
    int i = namesAndValues.size() - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase((String)namesAndValues.get(i))) {
        return (String)namesAndValues.get(i + 1);
      }
      i -= 2;
    }
    return null;
  }
  
  public RawHeaders getAll(Set<String> paramSet)
  {
    RawHeaders localRawHeaders = new RawHeaders();
    int i = 0;
    while (i < namesAndValues.size())
    {
      String str = (String)namesAndValues.get(i);
      if (paramSet.contains(str)) {
        localRawHeaders.add(str, (String)namesAndValues.get(i + 1));
      }
      i += 2;
    }
    return localRawHeaders;
  }
  
  public String getFieldName(int paramInt)
  {
    paramInt *= 2;
    if ((paramInt < 0) || (paramInt >= namesAndValues.size())) {
      return null;
    }
    return (String)namesAndValues.get(paramInt);
  }
  
  public int getHttpMinorVersion()
  {
    if (httpMinorVersion != -1) {
      return httpMinorVersion;
    }
    return 1;
  }
  
  public int getResponseCode()
  {
    return responseCode;
  }
  
  public String getResponseMessage()
  {
    return responseMessage;
  }
  
  public String getStatusLine()
  {
    return statusLine;
  }
  
  public String getValue(int paramInt)
  {
    paramInt = paramInt * 2 + 1;
    if ((paramInt < 0) || (paramInt >= namesAndValues.size())) {
      return null;
    }
    return (String)namesAndValues.get(paramInt);
  }
  
  public int length()
  {
    return namesAndValues.size() / 2;
  }
  
  public void removeAll(String paramString)
  {
    int i = 0;
    while (i < namesAndValues.size())
    {
      if (paramString.equalsIgnoreCase((String)namesAndValues.get(i)))
      {
        namesAndValues.remove(i);
        namesAndValues.remove(i);
      }
      i += 2;
    }
  }
  
  public void set(String paramString1, String paramString2)
  {
    removeAll(paramString1);
    add(paramString1, paramString2);
  }
  
  public void setRequestLine(String paramString)
  {
    requestLine = paramString.trim();
  }
  
  public void setStatusLine(String paramString)
    throws IOException
  {
    if (responseMessage != null) {
      throw new IllegalStateException("statusLine is already set");
    }
    if (paramString.length() > 13) {}
    for (int i = 1; (!paramString.startsWith("HTTP/1.")) || (paramString.length() < 12) || (paramString.charAt(8) != ' ') || ((i != 0) && (paramString.charAt(12) != ' ')); i = 0) {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    int j = paramString.charAt(7) - '0';
    if ((j < 0) || (j > 9)) {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    for (;;)
    {
      try
      {
        int k = Integer.parseInt(paramString.substring(9, 12));
        if (i != 0)
        {
          String str1 = paramString.substring(13);
          responseMessage = str1;
          responseCode = k;
          statusLine = paramString;
          httpMinorVersion = j;
          return;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      String str2 = "";
    }
  }
  
  public byte[] toBytes()
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append(requestLine).append("\r\n");
    int i = 0;
    while (i < namesAndValues.size())
    {
      localStringBuilder.append((String)namesAndValues.get(i)).append(": ").append((String)namesAndValues.get(i + 1)).append("\r\n");
      i += 2;
    }
    localStringBuilder.append("\r\n");
    return localStringBuilder.toString().getBytes("ISO-8859-1");
  }
  
  public Map<String, List<String>> toMultimap(boolean paramBoolean)
  {
    TreeMap localTreeMap = new TreeMap(FIELD_NAME_COMPARATOR);
    int i = 0;
    while (i < namesAndValues.size())
    {
      String str1 = (String)namesAndValues.get(i);
      String str2 = (String)namesAndValues.get(i + 1);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null) {
        localArrayList.addAll(localList);
      }
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
      i += 2;
    }
    if ((paramBoolean) && (statusLine != null)) {
      localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(statusLine)));
    }
    for (;;)
    {
      return Collections.unmodifiableMap(localTreeMap);
      if (requestLine != null) {
        localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(requestLine)));
      }
    }
  }
  
  public List<String> toNameValueBlock()
  {
    HashSet localHashSet = new HashSet();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < namesAndValues.size())
    {
      String str1 = ((String)namesAndValues.get(i)).toLowerCase(Locale.US);
      String str2 = (String)namesAndValues.get(i + 1);
      if ((str1.equals("connection")) || (str1.equals("host")) || (str1.equals("keep-alive")) || (str1.equals("proxy-connection")) || (str1.equals("transfer-encoding"))) {}
      label248:
      for (;;)
      {
        i += 2;
        break;
        if (localHashSet.add(str1))
        {
          localArrayList.add(str1);
          localArrayList.add(str2);
        }
        else
        {
          int j = 0;
          for (;;)
          {
            if (j >= localArrayList.size()) {
              break label248;
            }
            if (str1.equals(localArrayList.get(j)))
            {
              localArrayList.set(j + 1, (String)localArrayList.get(j + 1) + "\000" + str2);
              break;
            }
            j += 2;
          }
        }
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.RawHeaders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */