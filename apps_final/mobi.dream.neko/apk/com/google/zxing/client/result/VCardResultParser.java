package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class VCardResultParser
  extends ResultParser
{
  private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
  private static final Pattern CR_LF_SPACE_TAB;
  private static final Pattern EQUALS = Pattern.compile("=");
  private static final Pattern NEWLINE_ESCAPE;
  private static final Pattern SEMICOLON = Pattern.compile(";");
  private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
  private static final Pattern VCARD_ESCAPES;
  private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
  
  static
  {
    CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
  }
  
  private static String decodeQuotedPrintable(CharSequence paramCharSequence, String paramString)
  {
    int k = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(k);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    if (i < k)
    {
      char c1 = paramCharSequence.charAt(i);
      int j = i;
      switch (c1)
      {
      default: 
        maybeAppendFragment(localByteArrayOutputStream, paramString, localStringBuilder);
        localStringBuilder.append(c1);
        j = i;
      }
      for (;;)
      {
        i = j + 1;
        break;
        j = i;
        if (i < k - 2)
        {
          c1 = paramCharSequence.charAt(i + 1);
          j = i;
          if (c1 != '\r')
          {
            j = i;
            if (c1 != '\n')
            {
              char c2 = paramCharSequence.charAt(i + 2);
              j = parseHexDigit(c1);
              int m = parseHexDigit(c2);
              if ((j >= 0) && (m >= 0)) {
                localByteArrayOutputStream.write((j << 4) + m);
              }
              j = i + 2;
            }
          }
        }
      }
    }
    maybeAppendFragment(localByteArrayOutputStream, paramString, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  private static void formatNames(Iterable<List<String>> paramIterable)
  {
    if (paramIterable != null)
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        List localList = (List)paramIterable.next();
        Object localObject = (String)localList.get(0);
        String[] arrayOfString = new String[5];
        int j = 0;
        int i = 0;
        while (i < arrayOfString.length - 1)
        {
          int k = ((String)localObject).indexOf(';', j);
          if (k <= 0) {
            break;
          }
          arrayOfString[i] = ((String)localObject).substring(j, k);
          i += 1;
          j = k + 1;
        }
        arrayOfString[i] = ((String)localObject).substring(j);
        localObject = new StringBuilder(100);
        maybeAppendComponent(arrayOfString, 3, (StringBuilder)localObject);
        maybeAppendComponent(arrayOfString, 1, (StringBuilder)localObject);
        maybeAppendComponent(arrayOfString, 2, (StringBuilder)localObject);
        maybeAppendComponent(arrayOfString, 0, (StringBuilder)localObject);
        maybeAppendComponent(arrayOfString, 4, (StringBuilder)localObject);
        localList.set(0, ((StringBuilder)localObject).toString().trim());
      }
    }
  }
  
  private static boolean isLikeVCardDate(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (VCARD_LIKE_DATE.matcher(paramCharSequence).matches());
  }
  
  static List<String> matchSingleVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramCharSequence = matchVCardPrefixedField(paramCharSequence, paramString, paramBoolean1, paramBoolean2);
    if ((paramCharSequence == null) || (paramCharSequence.isEmpty())) {
      return null;
    }
    return (List)paramCharSequence.get(0);
  }
  
  static List<List<String>> matchVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject4 = null;
    int i = 0;
    int m = paramString.length();
    for (;;)
    {
      if (i < m)
      {
        localObject1 = Pattern.compile("(?:^|\n)" + paramCharSequence + "(?:;([^:]*))?:", 2).matcher(paramString);
        j = i;
        if (i > 0) {
          j = i - 1;
        }
        if (((Matcher)localObject1).find(j)) {}
      }
      else
      {
        return (List<List<String>>)localObject4;
      }
      int n = ((Matcher)localObject1).end(0);
      Object localObject6 = ((Matcher)localObject1).group(1);
      Object localObject3 = null;
      Object localObject2 = null;
      int j = 0;
      i = 0;
      Object localObject5 = null;
      Object localObject1 = null;
      int k;
      if (localObject6 != null)
      {
        localObject6 = SEMICOLON.split((CharSequence)localObject6);
        int i1 = localObject6.length;
        k = 0;
        localObject3 = localObject2;
        j = i;
        localObject5 = localObject1;
        if (k < i1)
        {
          localObject5 = localObject6[k];
          localObject3 = localObject2;
          if (localObject2 == null) {
            localObject3 = new ArrayList(1);
          }
          ((List)localObject3).add(localObject5);
          localObject2 = EQUALS.split((CharSequence)localObject5, 2);
          j = i;
          localObject5 = localObject1;
          String str;
          if (localObject2.length > 1)
          {
            str = localObject2[0];
            localObject2 = localObject2[1];
            if ((!"ENCODING".equalsIgnoreCase(str)) || (!"QUOTED-PRINTABLE".equalsIgnoreCase((String)localObject2))) {
              break label279;
            }
            j = 1;
            localObject5 = localObject1;
          }
          for (;;)
          {
            k += 1;
            localObject2 = localObject3;
            i = j;
            localObject1 = localObject5;
            break;
            label279:
            j = i;
            localObject5 = localObject1;
            if ("CHARSET".equalsIgnoreCase(str))
            {
              localObject5 = localObject2;
              j = i;
            }
          }
        }
      }
      i = n;
      for (;;)
      {
        k = paramString.indexOf('\n', i);
        if (k < 0) {
          break;
        }
        if ((k < paramString.length() - 1) && ((paramString.charAt(k + 1) == ' ') || (paramString.charAt(k + 1) == '\t')))
        {
          i = k + 2;
        }
        else
        {
          if ((j == 0) || (((k < 1) || (paramString.charAt(k - 1) != '=')) && ((k < 2) || (paramString.charAt(k - 2) != '=')))) {
            break;
          }
          i = k + 1;
        }
      }
      if (k < 0)
      {
        i = m;
      }
      else
      {
        if (k > n)
        {
          localObject2 = localObject4;
          if (localObject4 == null) {
            localObject2 = new ArrayList(1);
          }
          i = k;
          if (k >= 1)
          {
            i = k;
            if (paramString.charAt(k - 1) == '\r') {
              i = k - 1;
            }
          }
          localObject4 = paramString.substring(n, i);
          localObject1 = localObject4;
          if (paramBoolean1) {
            localObject1 = ((String)localObject4).trim();
          }
          if (j != 0)
          {
            localObject4 = decodeQuotedPrintable((CharSequence)localObject1, (String)localObject5);
            localObject1 = localObject4;
            if (paramBoolean2) {
              localObject1 = UNESCAPED_SEMICOLONS.matcher((CharSequence)localObject4).replaceAll("\n").trim();
            }
            label561:
            if (localObject3 != null) {
              break label683;
            }
            localObject3 = new ArrayList(1);
            ((List)localObject3).add(localObject1);
            ((List)localObject2).add(localObject3);
          }
          for (;;)
          {
            i += 1;
            localObject4 = localObject2;
            break;
            localObject4 = localObject1;
            if (paramBoolean2) {
              localObject4 = UNESCAPED_SEMICOLONS.matcher((CharSequence)localObject1).replaceAll("\n").trim();
            }
            localObject1 = CR_LF_SPACE_TAB.matcher((CharSequence)localObject4).replaceAll("");
            localObject1 = NEWLINE_ESCAPE.matcher((CharSequence)localObject1).replaceAll("\n");
            localObject1 = VCARD_ESCAPES.matcher((CharSequence)localObject1).replaceAll("$1");
            break label561;
            label683:
            ((List)localObject3).add(0, localObject1);
            ((List)localObject2).add(localObject3);
          }
        }
        i = k + 1;
      }
    }
  }
  
  private static void maybeAppendComponent(String[] paramArrayOfString, int paramInt, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString[paramInt] != null)
    {
      paramStringBuilder.append(' ');
      paramStringBuilder.append(paramArrayOfString[paramInt]);
    }
  }
  
  private static void maybeAppendFragment(ByteArrayOutputStream paramByteArrayOutputStream, String paramString, StringBuilder paramStringBuilder)
  {
    byte[] arrayOfByte;
    if (paramByteArrayOutputStream.size() > 0)
    {
      arrayOfByte = paramByteArrayOutputStream.toByteArray();
      if (paramString != null) {
        break label36;
      }
      paramString = new String(arrayOfByte);
    }
    for (;;)
    {
      paramByteArrayOutputStream.reset();
      paramStringBuilder.append(paramString);
      return;
      try
      {
        label36:
        paramString = new String(arrayOfByte, paramString);
      }
      catch (UnsupportedEncodingException paramString)
      {
        paramString = new String(arrayOfByte);
      }
    }
  }
  
  private static String toPrimaryValue(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return null;
    }
    return (String)paramList.get(0);
  }
  
  private static String[] toPrimaryValues(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((List)localIterator.next()).get(0));
    }
    return (String[])localArrayList.toArray(new String[paramCollection.size()]);
  }
  
  private static String[] toTypes(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      List localList = (List)localIterator.next();
      Object localObject2 = null;
      int i = 1;
      for (;;)
      {
        Object localObject1 = localObject2;
        int j;
        if (i < localList.size())
        {
          localObject1 = (String)localList.get(i);
          j = ((String)localObject1).indexOf('=');
          if (j >= 0) {
            break label115;
          }
        }
        for (;;)
        {
          localArrayList.add(localObject1);
          break;
          label115:
          if (!"TYPE".equalsIgnoreCase(((String)localObject1).substring(0, j))) {
            break label143;
          }
          localObject1 = ((String)localObject1).substring(j + 1);
        }
        label143:
        i += 1;
      }
    }
    return (String[])localArrayList.toArray(new String[paramCollection.size()]);
  }
  
  public AddressBookParsedResult parse(Result paramResult)
  {
    Object localObject2 = getMassagedText(paramResult);
    paramResult = BEGIN_VCARD.matcher((CharSequence)localObject2);
    if ((!paramResult.find()) || (paramResult.start() != 0)) {
      return null;
    }
    Object localObject1 = matchVCardPrefixedField("FN", (String)localObject2, true, false);
    paramResult = (Result)localObject1;
    if (localObject1 == null)
    {
      paramResult = matchVCardPrefixedField("N", (String)localObject2, true, false);
      formatNames(paramResult);
    }
    List localList2 = matchVCardPrefixedField("TEL", (String)localObject2, true, false);
    List localList3 = matchVCardPrefixedField("EMAIL", (String)localObject2, true, false);
    List localList4 = matchSingleVCardPrefixedField("NOTE", (String)localObject2, false, false);
    List localList5 = matchVCardPrefixedField("ADR", (String)localObject2, true, true);
    List localList6 = matchSingleVCardPrefixedField("ORG", (String)localObject2, true, true);
    List localList1 = matchSingleVCardPrefixedField("BDAY", (String)localObject2, true, false);
    localObject1 = localList1;
    if (localList1 != null)
    {
      localObject1 = localList1;
      if (!isLikeVCardDate((CharSequence)localList1.get(0))) {
        localObject1 = null;
      }
    }
    localList1 = matchSingleVCardPrefixedField("TITLE", (String)localObject2, true, false);
    List localList7 = matchSingleVCardPrefixedField("URL", (String)localObject2, true, false);
    localObject2 = matchSingleVCardPrefixedField("IMPP", (String)localObject2, true, false);
    return new AddressBookParsedResult(toPrimaryValues(paramResult), null, toPrimaryValues(localList2), toTypes(localList2), toPrimaryValues(localList3), toTypes(localList3), toPrimaryValue((List)localObject2), toPrimaryValue(localList4), toPrimaryValues(localList5), toTypes(localList5), toPrimaryValue(localList6), toPrimaryValue((List)localObject1), toPrimaryValue(localList1), toPrimaryValue(localList7));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.VCardResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */