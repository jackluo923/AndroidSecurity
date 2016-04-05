package org.kobjects.util;

public class Strings
{
  public static String beautify(String paramString)
  {
    int i2 = 1;
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int j = paramString.length();
    if (j > 0)
    {
      j = 0;
      j = paramString.charAt(j);
      char c2 = Character.toUpperCase(j);
      localStringBuffer.append(c2);
      int i = 1;
      for (;;)
      {
        int k = paramString.length();
        k -= i2;
        if (i >= k) {
          break;
        }
        char c1 = paramString.charAt(i);
        boolean bool1 = Character.isUpperCase(c1);
        if (bool1)
        {
          int m = i - i2;
          m = paramString.charAt(m);
          boolean bool2 = Character.isLowerCase(m);
          if (bool2)
          {
            int n = i + 1;
            n = paramString.charAt(n);
            boolean bool3 = Character.isLowerCase(n);
            if (bool3)
            {
              String str1 = " ";
              localStringBuffer.append(str1);
            }
          }
        }
        localStringBuffer.append(c1);
        i += 1;
      }
      int i1 = paramString.length();
      if (i1 > i2)
      {
        i1 = paramString.length();
        i1 -= i2;
        i1 = paramString.charAt(i1);
        localStringBuffer.append(i1);
      }
    }
    String str2 = localStringBuffer.toString();
    return str2;
  }
  
  public static String fill(String paramString, int paramInt, char paramChar)
  {
    int i;
    String str1;
    if (paramInt < 0)
    {
      int j = 1;
      i = j;
      paramInt = Math.abs(paramInt);
      j = paramString.length();
      if (j < paramInt) {
        break label45;
      }
      str1 = paramString;
    }
    for (;;)
    {
      return str1;
      int k = 0;
      i = k;
      break;
      label45:
      StringBuffer localStringBuffer = new java/lang/StringBuffer;
      localStringBuffer.<init>();
      k = paramString.length();
      paramInt -= k;
      while (paramInt > 0)
      {
        localStringBuffer.append(paramChar);
        paramInt += -1;
      }
      Object localObject;
      if (i != 0)
      {
        localStringBuffer.append(paramString);
        localObject = localStringBuffer.toString();
      }
      else
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        localObject = ((StringBuilder)localObject).append(paramString);
        String str2 = localStringBuffer.toString();
        localObject = ((StringBuilder)localObject).append(str2);
        localObject = ((StringBuilder)localObject).toString();
      }
    }
  }
  
  public static String lTrim(String paramString1, String paramString2)
  {
    int i = 0;
    int j = paramString1.length();
    if (i < j)
    {
      int k;
      int m;
      if (paramString2 == null)
      {
        k = paramString1.charAt(i);
        m = 32;
        if (k > m) {}
      }
      else
      {
        do
        {
          i += 1;
          break;
          k = paramString1.charAt(i);
          k = paramString2.indexOf(k);
          m = -1;
        } while (k != m);
      }
    }
    if (i == 0) {}
    for (String str = paramString1;; str = paramString1.substring(i)) {
      return str;
    }
  }
  
  public static String rTrim(String paramString1, String paramString2)
  {
    int n = 1;
    int j = paramString1.length();
    int i = j - n;
    int m;
    if (i >= 0) {
      if (paramString2 == null)
      {
        j = paramString1.charAt(i);
        m = 32;
        if (j > m) {}
      }
      else
      {
        do
        {
          i += -1;
          break;
          j = paramString1.charAt(i);
          j = paramString2.indexOf(j);
          m = -1;
        } while (j != m);
      }
    }
    j = paramString1.length();
    j -= n;
    if (i == j) {}
    int k;
    String str2;
    for (String str1 = paramString1;; str2 = paramString1.substring(k, m))
    {
      return str1;
      k = 0;
      m = i + 1;
    }
  }
  
  public static String replace(String paramString1, String paramString2, String paramString3)
  {
    int n = -1;
    int i = paramString1.indexOf(paramString2);
    if (i == n)
    {
      String str1 = paramString1;
      return str1;
    }
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    int k = 0;
    String str2 = paramString1.substring(k, i);
    localStringBuffer.<init>(str2);
    for (;;)
    {
      localStringBuffer.append(paramString3);
      int m = paramString2.length();
      i += m;
      int j = paramString1.indexOf(paramString2, i);
      if (j == n)
      {
        str3 = paramString1.substring(i);
        localStringBuffer.append(str3);
        str3 = localStringBuffer.toString();
        break;
      }
      String str3 = paramString1.substring(i, j);
      localStringBuffer.append(str3);
      i = j;
    }
  }
  
  public static String toAscii(String paramString)
  {
    char c = ' ';
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int j = 0;
    int k = paramString.length();
    if (j < k)
    {
      int i = paramString.charAt(j);
      if (i <= c) {
        localStringBuffer.append(c);
      }
      for (;;)
      {
        j += 1;
        break;
        k = 127;
        if (i < k) {
          localStringBuffer.append(i);
        } else {
          switch (i)
          {
          default: 
            k = 63;
            localStringBuffer.append(k);
            break;
          case 196: 
            str = "Ae";
            localStringBuffer.append(str);
            break;
          case 228: 
            str = "ae";
            localStringBuffer.append(str);
            break;
          case 214: 
            str = "Oe";
            localStringBuffer.append(str);
            break;
          case 246: 
            str = "oe";
            localStringBuffer.append(str);
            break;
          case 220: 
            str = "Ue";
            localStringBuffer.append(str);
            break;
          case 252: 
            str = "ue";
            localStringBuffer.append(str);
            break;
          case 223: 
            str = "ss";
            localStringBuffer.append(str);
          }
        }
      }
    }
    String str = localStringBuffer.toString();
    return str;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.util.Strings
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */