package org.kobjects.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class Util
{
  public static String buildUrl(String paramString1, String paramString2)
  {
    int i1 = 58;
    int i = paramString2.indexOf(i1);
    String str1 = "/";
    int j = paramString2.startsWith(str1);
    String str2;
    if (j == 0)
    {
      j = 1;
      if (i != j) {}
    }
    else
    {
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      str2 = "file:///";
      localObject1 = ((StringBuilder)localObject1).append(str2);
      localObject1 = ((StringBuilder)localObject1).append(paramString2);
    }
    Object localObject2;
    for (Object localObject1 = ((StringBuilder)localObject1).toString();; localObject2 = paramString2)
    {
      return (String)localObject1;
      int k = 2;
      if (i <= k) {
        break;
      }
      int m = 6;
      if (i >= m) {
        break;
      }
    }
    if (paramString1 == null) {
      paramString1 = "file:///";
    }
    for (;;)
    {
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject2 = ((StringBuilder)localObject2).append(paramString1);
      localObject2 = ((StringBuilder)localObject2).append(paramString2);
      localObject2 = ((StringBuilder)localObject2).toString();
      break;
      int n = paramString1.indexOf(str2);
      int i2 = -1;
      String str3;
      if (n == i2)
      {
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        str3 = "file:///";
        localObject3 = ((StringBuilder)localObject3).append(str3);
        localObject3 = ((StringBuilder)localObject3).append(paramString1);
        paramString1 = ((StringBuilder)localObject3).toString();
      }
      Object localObject3 = "/";
      boolean bool = paramString1.endsWith((String)localObject3);
      if (!bool)
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder = localStringBuilder.append(paramString1);
        str3 = "/";
        localStringBuilder = localStringBuilder.append(str3);
        paramString1 = localStringBuilder.toString();
      }
    }
  }
  
  public static int indexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    int i = 0;
    int j = paramArrayOfObject.length;
    if (i < j)
    {
      Object localObject = paramArrayOfObject[i];
      k = localObject.equals(paramObject);
      if (k == 0) {}
    }
    int m;
    for (int k = i;; m = -1)
    {
      return k;
      i += 1;
      break;
    }
  }
  
  public static void sort(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    int i7 = 2;
    int i2 = paramInt2 - paramInt1;
    Object localObject1;
    int i4;
    if (i2 <= i7)
    {
      i2 = paramInt2 - paramInt1;
      if (i2 == i7)
      {
        Object localObject2 = paramArrayOfObject[paramInt1];
        localObject2 = localObject2.toString();
        i7 = paramInt1 + 1;
        Object localObject6 = paramArrayOfObject[i7];
        localObject6 = localObject6.toString();
        int i3 = ((String)localObject2).compareTo((String)localObject6);
        if (i3 > 0)
        {
          localObject1 = paramArrayOfObject[paramInt1];
          i3 = paramInt1 + 1;
          Object localObject3 = paramArrayOfObject[i3];
          paramArrayOfObject[paramInt1] = localObject3;
          i4 = paramInt1 + 1;
          paramArrayOfObject[i4] = localObject1;
        }
      }
    }
    for (;;)
    {
      return;
      i4 = paramInt2 - paramInt1;
      int i8 = 3;
      if (i4 == i8)
      {
        i4 = paramInt1 + 2;
        sort(paramArrayOfObject, paramInt1, i4);
        i4 = paramInt1 + 1;
        i8 = paramInt1 + 3;
        sort(paramArrayOfObject, i4, i8);
        i4 = paramInt1 + 2;
        sort(paramArrayOfObject, paramInt1, i4);
      }
      else
      {
        i4 = paramInt1 + paramInt2;
        int i1 = i4 / 2;
        sort(paramArrayOfObject, paramInt1, i1);
        sort(paramArrayOfObject, i1, paramInt2);
        i4 = paramInt2 - paramInt1;
        localObject1 = new Object[i4];
        int j = paramInt1;
        int m = i1;
        int i = 0;
        i4 = localObject1.length;
        if (i < i4)
        {
          int n;
          Object localObject4;
          if (j == i1)
          {
            n = m + 1;
            localObject4 = paramArrayOfObject[m];
            localObject1[i] = localObject4;
            m = n;
          }
          for (;;)
          {
            i += 1;
            break;
            if (m != paramInt2)
            {
              localObject4 = paramArrayOfObject[j];
              localObject4 = localObject4.toString();
              Object localObject7 = paramArrayOfObject[m];
              localObject7 = localObject7.toString();
              int i5 = ((String)localObject4).compareTo((String)localObject7);
              if (i5 >= 0) {}
            }
            else
            {
              int k = j + 1;
              localObject5 = paramArrayOfObject[j];
              localObject1[i] = localObject5;
              j = k;
              continue;
            }
            n = m + 1;
            Object localObject5 = paramArrayOfObject[m];
            localObject1[i] = localObject5;
            m = n;
          }
        }
        int i6 = 0;
        int i9 = localObject1.length;
        System.arraycopy(localObject1, i6, paramArrayOfObject, paramInt1, i9);
      }
    }
  }
  
  public static OutputStream streamcopy(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    int k = 0;
    Runtime localRuntime = Runtime.getRuntime();
    long l1 = localRuntime.freeMemory();
    long l2 = 1048576L;
    boolean bool = l1 < l2;
    int j;
    byte[] arrayOfByte;
    if (!bool)
    {
      j = 16384;
      arrayOfByte = new byte[j];
    }
    for (;;)
    {
      j = arrayOfByte.length;
      int i = paramInputStream.read(arrayOfByte, k, j);
      j = -1;
      if (i == j)
      {
        paramInputStream.close();
        return paramOutputStream;
        j = 128;
        break;
      }
      paramOutputStream.write(arrayOfByte, k, i);
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.util.Util
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */