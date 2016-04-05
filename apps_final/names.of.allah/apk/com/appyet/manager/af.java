package com.appyet.manager;

import android.net.Uri;
import android.os.Environment;
import android.webkit.MimeTypeMap;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.d.e;
import java.io.File;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.UUID;

public final class af
{
  public static String a = "Wzo7Wyv3Pr1wJlF5C";
  static final int[] b;
  private String c = "";
  private String d = "";
  private ApplicationContext e;
  
  static
  {
    int[] arrayOfInt = new int[41];
    arrayOfInt[0] = 34;
    arrayOfInt[1] = 60;
    arrayOfInt[2] = 62;
    arrayOfInt[3] = 124;
    arrayOfInt[4] = 0;
    arrayOfInt[5] = 1;
    arrayOfInt[6] = 2;
    arrayOfInt[7] = 3;
    arrayOfInt[8] = 4;
    arrayOfInt[9] = 5;
    arrayOfInt[10] = 6;
    arrayOfInt[11] = 7;
    arrayOfInt[12] = 8;
    arrayOfInt[13] = 9;
    arrayOfInt[14] = 10;
    arrayOfInt[15] = 11;
    arrayOfInt[16] = 12;
    arrayOfInt[17] = 13;
    arrayOfInt[18] = 14;
    arrayOfInt[19] = 15;
    arrayOfInt[20] = 16;
    arrayOfInt[21] = 17;
    arrayOfInt[22] = 18;
    arrayOfInt[23] = 19;
    arrayOfInt[24] = 20;
    arrayOfInt[25] = 21;
    arrayOfInt[26] = 22;
    arrayOfInt[27] = 23;
    arrayOfInt[28] = 24;
    arrayOfInt[29] = 25;
    arrayOfInt[30] = 26;
    arrayOfInt[31] = 27;
    arrayOfInt[32] = 28;
    arrayOfInt[33] = 29;
    arrayOfInt[34] = 30;
    arrayOfInt[35] = 31;
    arrayOfInt[36] = 58;
    arrayOfInt[37] = 42;
    arrayOfInt[38] = 63;
    arrayOfInt[39] = 92;
    arrayOfInt[40] = 47;
    arrayOfInt;
    b = arrayOfInt;
    Arrays.sort(arrayOfInt);
  }
  
  public af(ApplicationContext paramApplicationContext)
  {
    e = paramApplicationContext;
    c = (Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/");
    d = e.getPackageName();
  }
  
  public static String a(File paramFile)
  {
    String str = null;
    try
    {
      int i = paramFile.getName().indexOf('_');
      if (i != -1) {
        str = paramFile.getName().substring(i + 1);
      }
      return str;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return paramFile.getName();
  }
  
  private static String e(String paramString)
  {
    int j = 0;
    paramString = paramString.split("[\\\\/]");
    if (paramString != null)
    {
      int k = paramString.length;
      System.out.println("Path Contents Length: " + k);
      int i = 0;
      while (i < paramString.length)
      {
        System.out.println("Path " + i + ": " + paramString[i]);
        i += 1;
      }
      String[] arrayOfString = paramString[(k - 1)].split("\\.");
      if ((arrayOfString != null) && (arrayOfString.length > 1))
      {
        k = arrayOfString.length;
        System.out.println("Last Part Length: " + k);
        paramString = "";
        i = j;
        for (;;)
        {
          str = paramString;
          if (i >= k) {
            break;
          }
          System.out.println("Last Part " + i + ": " + arrayOfString[i]);
          str = paramString;
          if (i < arrayOfString.length - 1)
          {
            paramString = paramString + arrayOfString[i];
            str = paramString;
            if (i < k - 2) {
              str = paramString + ".";
            }
          }
          i += 1;
          paramString = str;
        }
      }
    }
    String str = "";
    return f(str);
  }
  
  private static String f(String paramString)
  {
    for (;;)
    {
      int i;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        i = 0;
        if (i < paramString.length())
        {
          int j = paramString.charAt(i);
          if (Arrays.binarySearch(b, j) < 0) {
            localStringBuilder.append((char)j);
          }
        }
        else
        {
          paramString = localStringBuilder.toString();
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        return null;
      }
      i += 1;
    }
  }
  
  public final String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return new File(c + d, paramString).getAbsolutePath();
  }
  
  public final String a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = null;
    try
    {
      str = URLEncoder.encode(paramString2, "UTF-8");
      localObject = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        String str;
        localUnsupportedEncodingException.printStackTrace();
        continue;
        paramString3 = "." + (String)localObject;
      }
      int i = 0;
      while (i < 100)
      {
        localObject = paramString1 + i;
        if (!c((String)localObject)) {
          return (String)localObject + paramString3;
        }
        i += 1;
      }
      paramString1 = e(paramString2);
      if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
        break label328;
      }
      if (c(paramString1)) {
        break label259;
      }
      return paramString1 + paramString3;
      i = 0;
      while (i < 100)
      {
        localObject = paramString1 + i;
        if (!c((String)localObject)) {
          return (String)localObject + paramString3;
        }
        i += 1;
      }
      paramString1 = f(e.a(paramString2)) + paramString3;
      if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
        break label465;
      }
      if (c(paramString1)) {
        break label394;
      }
      return paramString1 + paramString3;
      i = 0;
      while (i < 100)
      {
        paramString2 = i + "_" + paramString1;
        if (!c(paramString2)) {
          return paramString2 + paramString3;
        }
        i += 1;
      }
    }
    str = MimeTypeMap.getFileExtensionFromUrl((String)localObject);
    if (str != null)
    {
      localObject = str;
      if (str.trim().length() != 0) {}
    }
    else
    {
      localObject = str;
      if (paramString3 != null) {
        localObject = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString3);
      }
    }
    if (localObject == null)
    {
      paramString3 = "";
      paramString1 = f(paramString1);
      if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
        break label213;
      }
      if (c(paramString1)) {
        break label144;
      }
      return paramString1 + paramString3;
    }
    label144:
    label213:
    label259:
    label328:
    label394:
    label465:
    return f(UUID.randomUUID().toString()) + paramString3;
  }
  
  public final ArrayList<File> a(ak paramak)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Object localObject1 = new File(c + d);
      if (!((File)localObject1).isDirectory()) {
        ((File)localObject1).mkdirs();
      }
      localObject1 = ((File)localObject1).listFiles();
      int j = localObject1.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          Object localObject2 = localObject1[i];
          try
          {
            if (((File)localObject2).isFile()) {
              localArrayList.add(localObject2);
            }
            i += 1;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              d.a(localException);
            }
          }
        }
      }
      switch (aj.a[paramak.ordinal()])
      {
      }
    }
    catch (Exception paramak)
    {
      d.a(paramak);
      return localArrayList;
    }
    Collections.sort(localArrayList, new ag(this));
    return localArrayList;
    Collections.sort(localArrayList, new ah(this));
    return localArrayList;
    Collections.sort(localArrayList, new ai(this));
    return localArrayList;
    return localArrayList;
  }
  
  public final boolean a()
  {
    try
    {
      File localFile = new File(c + d);
      if (!localFile.isDirectory()) {
        localFile.mkdirs();
      }
      return true;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return false;
  }
  
  public final Uri b(String paramString)
  {
    return Uri.fromFile(new File(c + d, paramString));
  }
  
  public final boolean c(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = new File(c + d, paramString);
    } while ((!paramString.isFile()) && (!paramString.isDirectory()));
    return true;
  }
  
  public final String d(String paramString)
  {
    Object localObject = null;
    try
    {
      str1 = URLEncoder.encode(paramString, "UTF-8");
      localObject = str1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        String str1;
        localUnsupportedEncodingException.printStackTrace();
        continue;
        localObject = "." + (String)localObject;
      }
      int i = 0;
      while (i < 100)
      {
        String str3 = localUnsupportedEncodingException + i;
        if (!c(str3)) {
          return str3 + (String)localObject;
        }
        i += 1;
      }
      paramString = f(e.a(paramString));
      if ((paramString == null) || (paramString.trim().length() <= 0)) {
        break label286;
      }
      if (c(paramString)) {
        break label215;
      }
      return paramString + (String)localObject;
      i = 0;
      while (i < 100)
      {
        String str2 = i + "_" + paramString;
        if (!c(str2)) {
          return str2 + (String)localObject;
        }
        i += 1;
      }
    }
    localObject = MimeTypeMap.getFileExtensionFromUrl((String)localObject);
    if (localObject == null)
    {
      localObject = "";
      str1 = e(paramString);
      if ((str1 == null) || (str1.trim().length() <= 0)) {
        break label166;
      }
      if (c(str1)) {
        break label97;
      }
      return str1 + (String)localObject;
    }
    label97:
    label166:
    label215:
    label286:
    return f(UUID.randomUUID().toString());
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */