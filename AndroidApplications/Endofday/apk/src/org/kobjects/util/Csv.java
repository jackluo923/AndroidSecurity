package org.kobjects.util;

import java.util.Vector;

public class Csv
{
  public static String[] decode(String paramString)
  {
    int i11 = 94;
    int i10 = 44;
    int i9 = 32;
    int i8 = 34;
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    int i1 = 0;
    int n = paramString.length();
    while (i1 < n)
    {
      i4 = paramString.charAt(i1);
      if (i4 > i9) {
        break;
      }
      i1 += 1;
    }
    label74:
    String[] arrayOfString;
    if (i1 >= n)
    {
      i4 = localVector.size();
      arrayOfString = new String[i4];
      int k = 0;
      for (;;)
      {
        i4 = arrayOfString.length;
        if (k >= i4) {
          break;
        }
        paramString = localVector.elementAt(k);
        paramString = (String)paramString;
        arrayOfString[k] = paramString;
        int m;
        k += 1;
      }
    }
    int i4 = paramString.charAt(i1);
    StringBuffer localStringBuffer;
    label160:
    int i2;
    int i;
    int i6;
    if (i4 == i8)
    {
      i1 += 1;
      localStringBuffer = new java/lang/StringBuffer;
      localStringBuffer.<init>();
      i2 = i1 + 1;
      i = paramString.charAt(i1);
      int i5;
      if ((i == i11) && (i2 < n))
      {
        i1 = i2 + 1;
        int j = paramString.charAt(i2);
        if (j == i11) {}
        for (i4 = j;; i5 = (char)i5)
        {
          localStringBuffer.append(i4);
          break;
          i5 = 64;
          i5 = j - i5;
        }
      }
      if (i != i8) {
        break label514;
      }
      if (i2 != n)
      {
        i5 = paramString.charAt(i2);
        if (i5 == i8) {}
      }
      else
      {
        String str1 = localStringBuffer.toString();
        localVector.addElement(str1);
        i1 = i2;
        while (i1 < n)
        {
          i6 = paramString.charAt(i1);
          if (i6 > i9) {
            break;
          }
          i1 += 1;
        }
      }
    }
    label514:
    for (i1 = i2 + 1;; i1 = i2)
    {
      localStringBuffer.append(i);
      break label160;
      if (i1 >= n) {
        break label74;
      }
      i6 = paramString.charAt(i1);
      if (i6 != i10)
      {
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str3 = "Comma expected at ";
        localObject = ((StringBuilder)localObject).append(str3);
        localObject = ((StringBuilder)localObject).append(i1);
        str3 = " line: ";
        localObject = ((StringBuilder)localObject).append(str3);
        localObject = ((StringBuilder)localObject).append(paramString);
        localObject = ((StringBuilder)localObject).toString();
        localRuntimeException.<init>((String)localObject);
        throw localRuntimeException;
      }
      i1 += 1;
      break;
      int i3 = paramString.indexOf(i10, i1);
      int i7 = -1;
      if (i3 == i7)
      {
        str2 = paramString.substring(i1);
        str2 = str2.trim();
        localVector.addElement(str2);
        break label74;
      }
      String str2 = paramString.substring(i1, i3);
      str2 = str2.trim();
      localVector.addElement(str2);
      i1 = i3 + 1;
      break;
      return arrayOfString;
    }
  }
  
  public static String encode(String paramString, char paramChar)
  {
    char c3 = '^';
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int i = 0;
    char c2 = paramString.length();
    if (i < c2)
    {
      char c1 = paramString.charAt(i);
      if ((c1 == paramChar) || (c1 == c3))
      {
        localStringBuffer.append(c1);
        localStringBuffer.append(c1);
      }
      for (;;)
      {
        i += 1;
        break;
        c2 = ' ';
        if (c1 < c2)
        {
          localStringBuffer.append(c3);
          c2 = c1 + '@';
          c2 = (char)c2;
          localStringBuffer.append(c2);
        }
        else
        {
          localStringBuffer.append(c1);
        }
      }
    }
    String str = localStringBuffer.toString();
    return str;
  }
  
  public static String encode(Object[] paramArrayOfObject)
  {
    char c = '"';
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int i = 0;
    int j = paramArrayOfObject.length;
    if (i < j)
    {
      if (i != 0)
      {
        j = 44;
        localStringBuffer.append(j);
      }
      Object localObject = paramArrayOfObject[i];
      boolean bool = localObject instanceof Number;
      if (!bool)
      {
        bool = localObject instanceof Boolean;
        if (!bool) {}
      }
      else
      {
        str = localObject.toString();
        localStringBuffer.append(str);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append(c);
        str = localObject.toString();
        str = encode(str, c);
        localStringBuffer.append(str);
        localStringBuffer.append(c);
      }
    }
    String str = localStringBuffer.toString();
    return str;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.util.Csv
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */