package org.kobjects.rss;

import java.io.IOException;
import java.io.Reader;
import org.kobjects.xml.XmlReader;

public class RssReader
{
  public static final int AUTHOR = 4;
  public static final int DATE = 3;
  public static final int DESCRIPTION = 2;
  public static final int LINK = 1;
  public static final int TITLE = 0;
  XmlReader xr;
  
  public RssReader(Reader paramReader)
    throws IOException
  {
    XmlReader localXmlReader = new org/kobjects/xml/XmlReader;
    localXmlReader.<init>(paramReader);
    xr = localXmlReader;
  }
  
  public String[] next()
    throws IOException
  {
    int i6 = 3;
    int i5 = 1;
    int i4 = 2;
    int j = 5;
    String[] arrayOfString = new String[j];
    boolean bool2;
    do
    {
      int m;
      do
      {
        XmlReader localXmlReader1 = xr;
        int k = localXmlReader1.next();
        if (k == i5) {
          break;
        }
        XmlReader localXmlReader2 = xr;
        m = localXmlReader2.getType();
      } while (m != i4);
      Object localObject1 = xr;
      localObject1 = ((XmlReader)localObject1).getName();
      String str1 = ((String)localObject1).toLowerCase();
      localObject1 = "item";
      boolean bool1 = str1.equals(localObject1);
      if (bool1) {
        break;
      }
      String str4 = ":item";
      bool2 = str1.endsWith(str4);
    } while (!bool2);
    for (;;)
    {
      XmlReader localXmlReader3 = xr;
      int n = localXmlReader3.next();
      if (n == i6) {
        break;
      }
      XmlReader localXmlReader4 = xr;
      int i1 = localXmlReader4.getType();
      if (i1 == i4)
      {
        Object localObject2 = xr;
        localObject2 = ((XmlReader)localObject2).getName();
        String str2 = ((String)localObject2).toLowerCase();
        localObject2 = ":";
        int i = str2.indexOf((String)localObject2);
        int i2 = -1;
        if (i != i2)
        {
          i2 = i + 1;
          str2 = str2.substring(i2);
        }
        StringBuffer localStringBuffer = new java/lang/StringBuffer;
        localStringBuffer.<init>();
        readText(localStringBuffer);
        String str3 = localStringBuffer.toString();
        String str5 = "title";
        boolean bool3 = str2.equals(str5);
        if (bool3)
        {
          bool3 = false;
          arrayOfString[bool3] = str3;
        }
        else
        {
          String str6 = "link";
          boolean bool4 = str2.equals(str6);
          if (bool4)
          {
            arrayOfString[i5] = str3;
          }
          else
          {
            String str7 = "description";
            boolean bool5 = str2.equals(str7);
            if (bool5)
            {
              arrayOfString[i4] = str3;
            }
            else
            {
              String str8 = "date";
              boolean bool6 = str2.equals(str8);
              if (bool6)
              {
                arrayOfString[i6] = str3;
              }
              else
              {
                String str9 = "author";
                boolean bool7 = str2.equals(str9);
                if (bool7)
                {
                  int i3 = 4;
                  arrayOfString[i3] = str3;
                }
              }
            }
          }
        }
      }
    }
    for (Object localObject3 = arrayOfString;; localObject3 = null) {
      return (String[])localObject3;
    }
  }
  
  void readText(StringBuffer paramStringBuffer)
    throws IOException
  {
    for (;;)
    {
      XmlReader localXmlReader1 = xr;
      int i = localXmlReader1.next();
      int k = 3;
      if (i == k) {
        break;
      }
      XmlReader localXmlReader2 = xr;
      int j = localXmlReader2.getType();
      switch (j)
      {
      case 3: 
      default: 
        break;
      case 2: 
        readText(paramStringBuffer);
        break;
      case 4: 
        Object localObject = xr;
        localObject = ((XmlReader)localObject).getText();
        paramStringBuffer.append((String)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.rss.RssReader
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */