package com.google.zxing.client.android.encode;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

abstract class ContactEncoder
{
  static void doAppend(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString1, String paramString2, Formatter paramFormatter, char paramChar)
  {
    paramString2 = trim(paramString2);
    if (paramString2 != null)
    {
      paramStringBuilder1.append(paramString1).append(':').append(paramFormatter.format(paramString2)).append(paramChar);
      paramStringBuilder2.append(paramString2).append('\n');
    }
  }
  
  static void doAppendUpToUnique(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString, Iterable<String> paramIterable, int paramInt, Formatter paramFormatter1, Formatter paramFormatter2, char paramChar)
  {
    if (paramIterable == null) {
      return;
    }
    int i = 0;
    HashSet localHashSet = new HashSet(2);
    Iterator localIterator = paramIterable.iterator();
    label26:
    String str;
    while (localIterator.hasNext())
    {
      str = trim((String)localIterator.next());
      if ((str != null) && (!localHashSet.contains(str)))
      {
        paramStringBuilder1.append(paramString).append(':').append(paramFormatter2.format(str)).append(paramChar);
        if (paramFormatter1 != null) {
          break label141;
        }
      }
    }
    label141:
    for (paramIterable = str;; paramIterable = paramFormatter1.format(str))
    {
      paramStringBuilder2.append(paramIterable).append('\n');
      i += 1;
      if (i == paramInt) {
        break;
      }
      localHashSet.add(str);
      break label26;
      break;
    }
  }
  
  static String trim(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String str = paramString.trim();
    paramString = str;
    if (str.length() == 0) {
      paramString = null;
    }
    return paramString;
  }
  
  abstract String[] encode(Iterable<String> paramIterable1, String paramString1, Iterable<String> paramIterable2, Iterable<String> paramIterable3, Iterable<String> paramIterable4, String paramString2, String paramString3);
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.ContactEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */