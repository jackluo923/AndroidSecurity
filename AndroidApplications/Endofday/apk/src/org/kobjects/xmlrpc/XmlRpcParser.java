package org.kobjects.xmlrpc;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.kobjects.base64.Base64;
import org.kobjects.isodate.IsoDate;
import org.kobjects.xml.XmlReader;

public class XmlRpcParser
{
  private XmlReader parser;
  
  public XmlRpcParser(XmlReader paramXmlReader)
  {
    XmlReader localXmlReader = null;
    parser = localXmlReader;
    parser = paramXmlReader;
  }
  
  private final int nextTag()
    throws IOException
  {
    XmlReader localXmlReader1 = parser;
    int i = localXmlReader1.getType();
    localXmlReader1 = parser;
    i = localXmlReader1.next();
    int j = 4;
    if (i == j)
    {
      XmlReader localXmlReader2 = parser;
      boolean bool = localXmlReader2.isWhitespace();
      if (bool)
      {
        XmlReader localXmlReader3 = parser;
        i = localXmlReader3.next();
      }
    }
    int k = 3;
    if (i != k)
    {
      k = 2;
      if (i != k)
      {
        IOException localIOException = new java/io/IOException;
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str = "unexpected type: ";
        localObject = ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).append(i);
        localObject = ((StringBuilder)localObject).toString();
        localIOException.<init>((String)localObject);
        throw localIOException;
      }
    }
    return i;
  }
  
  private final String nextText()
    throws IOException
  {
    XmlReader localXmlReader1 = parser;
    int i = localXmlReader1.getType();
    int j = 2;
    String str2;
    if (i != j)
    {
      localObject = new java/io/IOException;
      str2 = "precondition: START_TAG";
      ((IOException)localObject).<init>(str2);
      throw ((Throwable)localObject);
    }
    Object localObject = parser;
    i = ((XmlReader)localObject).next();
    int k = 4;
    String str1;
    if (i == k)
    {
      XmlReader localXmlReader2 = parser;
      str1 = localXmlReader2.getText();
      localXmlReader2 = parser;
      i = localXmlReader2.next();
    }
    for (;;)
    {
      int m = 3;
      if (i == m) {
        break;
      }
      IOException localIOException = new java/io/IOException;
      str2 = "END_TAG expected";
      localIOException.<init>(str2);
      throw localIOException;
      str1 = "";
    }
    return str1;
  }
  
  private final Vector parseArray()
    throws IOException
  {
    nextTag();
    int i = nextTag();
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    for (;;)
    {
      int j = 3;
      if (i == j) {
        break;
      }
      Object localObject = parseValue();
      localVector.addElement(localObject);
      localObject = parser;
      i = ((XmlReader)localObject).getType();
    }
    nextTag();
    nextTag();
    return localVector;
  }
  
  private final Object parseFault()
    throws IOException
  {
    nextTag();
    Object localObject = parseValue();
    nextTag();
    return localObject;
  }
  
  private final Object parseParams()
    throws IOException
  {
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    for (int i = nextTag();; i = nextTag())
    {
      int j = 3;
      if (i == j) {
        break;
      }
      nextTag();
      Object localObject = parseValue();
      localVector.addElement(localObject);
    }
    nextTag();
    return localVector;
  }
  
  public final Object parseResponse()
    throws IOException
  {
    Object localObject1 = null;
    nextTag();
    int i = nextTag();
    int j = 2;
    Object localObject2;
    if (i == j)
    {
      String str1 = "fault";
      localObject2 = parser;
      localObject2 = ((XmlReader)localObject2).getName();
      boolean bool1 = str1.equals(localObject2);
      if (!bool1) {
        break label54;
      }
      localObject1 = parseFault();
    }
    for (;;)
    {
      return localObject1;
      label54:
      String str2 = "params";
      localObject2 = parser;
      localObject2 = ((XmlReader)localObject2).getName();
      boolean bool2 = str2.equals(localObject2);
      if (bool2) {
        localObject1 = parseParams();
      }
    }
  }
  
  private final Hashtable parseStruct()
    throws IOException
  {
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    for (int i = nextTag();; i = nextTag())
    {
      int j = 3;
      if (i == j) {
        break;
      }
      nextTag();
      String str = nextText();
      nextTag();
      Object localObject = parseValue();
      localHashtable.put(str, localObject);
    }
    nextTag();
    return localHashtable;
  }
  
  private final Object parseValue()
    throws IOException
  {
    Object localObject1 = null;
    XmlReader localXmlReader1 = parser;
    int i = localXmlReader1.next();
    int j = 4;
    if (i == j)
    {
      XmlReader localXmlReader2 = parser;
      localObject1 = localXmlReader2.getText();
      localXmlReader2 = parser;
      i = localXmlReader2.next();
    }
    int k = 2;
    String str1;
    Object localObject3;
    if (i == k)
    {
      Object localObject2 = parser;
      str1 = ((XmlReader)localObject2).getName();
      localObject2 = "array";
      boolean bool1 = str1.equals(localObject2);
      if (bool1)
      {
        localObject1 = parseArray();
        localObject3 = localObject1;
      }
    }
    for (;;)
    {
      nextTag();
      return localObject3;
      localObject3 = "struct";
      boolean bool2 = str1.equals(localObject3);
      Object localObject4;
      if (bool2)
      {
        localObject1 = parseStruct();
        localObject4 = localObject1;
      }
      else
      {
        localObject4 = "string";
        boolean bool3 = str1.equals(localObject4);
        Object localObject5;
        if (bool3)
        {
          localObject1 = nextText();
          localObject5 = localObject1;
        }
        for (;;)
        {
          nextTag();
          break;
          localObject5 = "i4";
          boolean bool4 = str1.equals(localObject5);
          if (!bool4)
          {
            String str2 = "int";
            boolean bool5 = str1.equals(str2);
            if (!bool5) {}
          }
          else
          {
            localObject1 = new java/lang/Integer;
            String str3 = nextText();
            str3 = str3.trim();
            int m = Integer.parseInt(str3);
            ((Integer)localObject1).<init>(m);
            localObject6 = localObject1;
            continue;
          }
          Object localObject6 = "boolean";
          boolean bool6 = str1.equals(localObject6);
          Object localObject7;
          if (bool6)
          {
            localObject1 = new java/lang/Boolean;
            String str4 = nextText();
            str4 = str4.trim();
            String str5 = "1";
            boolean bool7 = str4.equals(str5);
            ((Boolean)localObject1).<init>(bool7);
            localObject7 = localObject1;
          }
          else
          {
            localObject7 = "dateTime.iso8601";
            boolean bool8 = str1.equals(localObject7);
            Object localObject8;
            if (bool8)
            {
              localObject8 = nextText();
              int n = 3;
              localObject1 = IsoDate.stringToDate((String)localObject8, n);
              localObject8 = localObject1;
            }
            else
            {
              localObject8 = "base64";
              boolean bool9 = str1.equals(localObject8);
              Object localObject9;
              if (bool9)
              {
                localObject9 = nextText();
                localObject1 = Base64.decode((String)localObject9);
                localObject9 = localObject1;
              }
              else
              {
                localObject9 = "double";
                boolean bool10 = str1.equals(localObject9);
                if (bool10)
                {
                  localObject1 = nextText();
                  localObject10 = localObject1;
                }
                else
                {
                  localObject10 = localObject1;
                }
              }
            }
          }
        }
        Object localObject10 = localObject1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.xmlrpc.XmlRpcParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */