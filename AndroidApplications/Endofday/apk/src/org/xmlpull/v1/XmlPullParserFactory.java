package org.xmlpull.v1;

import java.io.InputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class XmlPullParserFactory
{
  public static final String PROPERTY_NAME = "org.xmlpull.v1.XmlPullParserFactory";
  private static final String RESOURCE_NAME = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory";
  static final Class referenceContextClass;
  protected String classNamesLocation;
  protected Hashtable features;
  protected Vector parserClasses;
  protected Vector serializerClasses;
  
  static
  {
    XmlPullParserFactory localXmlPullParserFactory = new org/xmlpull/v1/XmlPullParserFactory;
    localXmlPullParserFactory.<init>();
    Class localClass = localXmlPullParserFactory.getClass();
    referenceContextClass = localClass;
  }
  
  protected XmlPullParserFactory()
  {
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    features = localHashtable;
  }
  
  public boolean getFeature(String paramString)
  {
    Hashtable localHashtable = features;
    Object localObject = localHashtable.get(paramString);
    localObject = (Boolean)localObject;
    if (localObject != null) {}
    for (boolean bool = ((Boolean)localObject).booleanValue();; bool = false) {
      return bool;
    }
  }
  
  public boolean isNamespaceAware()
  {
    String str = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    boolean bool = getFeature(str);
    return bool;
  }
  
  public boolean isValidating()
  {
    String str = "http://xmlpull.org/v1/doc/features.html#validation";
    boolean bool = getFeature(str);
    return bool;
  }
  
  public static XmlPullParserFactory newInstance()
    throws XmlPullParserException
  {
    Object localObject = null;
    localObject = newInstance((String)localObject, (Class)localObject);
    return (XmlPullParserFactory)localObject;
  }
  
  public static XmlPullParserFactory newInstance(String paramString, Class paramClass)
    throws XmlPullParserException
  {
    if (paramClass == null) {
      paramClass = referenceContextClass;
    }
    int i = 0;
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0)
      {
        String str1 = "DEFAULT";
        boolean bool1 = str1.equals(paramString);
        if (!bool1) {
          break label392;
        }
      }
    }
    try
    {
      paramString = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory";
      paramClass = paramClass.getResourceAsStream(paramString);
      if (paramClass == null)
      {
        paramString = new org/xmlpull/v1/XmlPullParserException;
        paramClass = "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available";
        paramString.<init>(paramClass);
        throw paramString;
      }
    }
    catch (Exception paramString)
    {
      paramClass = new org/xmlpull/v1/XmlPullParserException;
      localObject2 = null;
      XmlPullParser localXmlPullParser = null;
      paramClass.<init>((String)localObject2, localXmlPullParser, paramString);
      throw paramClass;
    }
    Object localObject2 = new java/lang/StringBuffer;
    ((StringBuffer)localObject2).<init>();
    paramString = paramClass.read();
    label149:
    Vector localVector1;
    Vector localVector2;
    Object localObject3;
    Class localClass2;
    if (paramString < 0)
    {
      paramClass.close();
      paramString = ((StringBuffer)localObject2).toString();
      paramClass = new java/lang/StringBuilder;
      paramClass.<init>();
      localObject2 = "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained '";
      paramClass = paramClass.append((String)localObject2);
      paramClass = paramClass.append(paramString);
      localObject2 = "'";
      paramClass = paramClass.append((String)localObject2);
      paramClass = paramClass.toString();
      localObject2 = paramClass;
      paramClass = null;
      localVector1 = new java/util/Vector;
      localVector1.<init>();
      localVector2 = new java/util/Vector;
      localVector2.<init>();
      Class localClass1 = 0;
      localObject3 = localClass1;
      localClass2 = paramClass;
      label181:
      paramClass = paramString.length();
      if (localObject3 >= paramClass) {
        break label453;
      }
      paramClass = 44;
      paramClass = paramString.indexOf(paramClass, localObject3);
      localClass1 = -1;
      if (paramClass != localClass1) {
        break label521;
      }
      paramClass = paramString.length();
    }
    label392:
    label437:
    label453:
    label521:
    int m;
    for (int j = paramClass;; m = paramClass)
    {
      String str3 = paramString.substring(localObject3, j);
      paramClass = null;
      localObject3 = null;
      try
      {
        paramClass = Class.forName(str3);
        localObject3 = paramClass.newInstance();
      }
      catch (Exception localException)
      {
        for (;;)
        {
          boolean bool2;
          boolean bool3;
          Object localObject1;
          int n;
          String str2;
          int k;
          continue;
          paramString = localClass3;
          continue;
          paramClass = localClass3;
          continue;
          Class localClass4 = paramClass;
          paramClass = localClass3;
          Class localClass3 = localClass4;
          continue;
          paramClass = localException;
        }
      }
      if (paramClass != null)
      {
        bool2 = false;
        bool3 = localObject3 instanceof XmlPullParser;
        if (bool3)
        {
          localVector1.addElement(paramClass);
          bool2 = true;
        }
        bool3 = localObject3 instanceof XmlSerializer;
        if (!bool3) {
          continue;
        }
        localVector2.addElement(paramClass);
        paramClass = 1;
        bool2 = localObject3 instanceof XmlPullParserFactory;
        if (!bool2) {
          continue;
        }
        if (localClass2 != null) {
          continue;
        }
        localObject1 = localObject3;
        localObject1 = (XmlPullParserFactory)localObject1;
        paramClass = (Class)localObject1;
        n = 1;
        if (n != 0) {
          break label437;
        }
        paramString = new org/xmlpull/v1/XmlPullParserException;
        paramClass = new java/lang/StringBuilder;
        paramClass.<init>();
        localObject2 = "incompatible class: ";
        paramClass = paramClass.append((String)localObject2);
        paramClass = paramClass.append(str3);
        paramClass = paramClass.toString();
        paramString.<init>(paramClass);
        throw paramString;
        str2 = 32;
        if (paramString <= str2) {
          break;
        }
        paramString = (char)paramString;
        ((StringBuffer)localObject2).append(paramString);
        break;
        paramClass = new java/lang/StringBuilder;
        paramClass.<init>();
        localObject2 = "parameter classNames to newInstance() that contained '";
        paramClass = paramClass.append((String)localObject2);
        paramClass = paramClass.append(paramString);
        localObject2 = "'";
        paramClass = paramClass.append((String)localObject2);
        paramClass = paramClass.toString();
        localObject2 = paramClass;
        break label149;
      }
      paramClass = n;
      str2 += 1;
      localObject3 = k;
      localClass3 = paramClass;
      break label181;
      if (localClass3 == null)
      {
        paramString = new org/xmlpull/v1/XmlPullParserFactory;
        paramString.<init>();
        parserClasses = localVector1;
        serializerClasses = localVector2;
        classNamesLocation = ((String)localObject2);
        return paramString;
      }
    }
  }
  
  public XmlPullParser newPullParser()
    throws XmlPullParserException
  {
    Object localObject5 = parserClasses;
    if (localObject5 == null)
    {
      localObject5 = new org/xmlpull/v1/XmlPullParserException;
      localObject9 = new java/lang/StringBuilder;
      ((StringBuilder)localObject9).<init>();
      str = "Factory initialization was incomplete - has not tried ";
      localObject9 = ((StringBuilder)localObject9).append(str);
      str = classNamesLocation;
      localObject9 = ((StringBuilder)localObject9).append(str);
      localObject9 = ((StringBuilder)localObject9).toString();
      ((XmlPullParserException)localObject5).<init>((String)localObject9);
      throw ((Throwable)localObject5);
    }
    localObject5 = parserClasses;
    int j = ((Vector)localObject5).size();
    Object localObject6;
    if (j == 0)
    {
      localObject6 = new org/xmlpull/v1/XmlPullParserException;
      localObject9 = new java/lang/StringBuilder;
      ((StringBuilder)localObject9).<init>();
      str = "No valid parser classes found in ";
      localObject9 = ((StringBuilder)localObject9).append(str);
      str = classNamesLocation;
      localObject9 = ((StringBuilder)localObject9).append(str);
      localObject9 = ((StringBuilder)localObject9).toString();
      ((XmlPullParserException)localObject6).<init>((String)localObject9);
      throw ((Throwable)localObject6);
    }
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int i = 0;
    Object localObject2;
    for (;;)
    {
      localObject6 = parserClasses;
      int k = ((Vector)localObject6).size();
      if (i < k)
      {
        Object localObject7 = parserClasses;
        Object localObject3 = ((Vector)localObject7).elementAt(i);
        localObject3 = (Class)localObject3;
        try
        {
          localObject2 = ((Class)localObject3).newInstance();
          localObject2 = (XmlPullParser)localObject2;
          localObject7 = features;
          Enumeration localEnumeration = ((Hashtable)localObject7).keys();
          for (;;)
          {
            boolean bool1 = localEnumeration.hasMoreElements();
            if (!bool1) {
              break;
            }
            Object localObject1 = localEnumeration.nextElement();
            localObject1 = (String)localObject1;
            Hashtable localHashtable = features;
            Object localObject4 = localHashtable.get(localObject1);
            localObject4 = (Boolean)localObject4;
            if (localObject4 != null)
            {
              boolean bool2 = ((Boolean)localObject4).booleanValue();
              if (bool2)
              {
                bool2 = true;
                ((XmlPullParser)localObject2).setFeature((String)localObject1, bool2);
              }
            }
          }
        }
        catch (Exception localException2)
        {
          Exception localException1 = localException2;
          localObject8 = new java/lang/StringBuilder;
          ((StringBuilder)localObject8).<init>();
          localObject9 = ((Class)localObject3).getName();
          localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
          localObject9 = ": ";
          localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
          localObject9 = localException1.toString();
          localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
          localObject9 = "; ";
          localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
          localObject8 = ((StringBuilder)localObject8).toString();
          localStringBuffer.append((String)localObject8);
          i += 1;
        }
      }
    }
    Object localObject8 = new org/xmlpull/v1/XmlPullParserException;
    Object localObject9 = new java/lang/StringBuilder;
    ((StringBuilder)localObject9).<init>();
    String str = "could not create parser: ";
    localObject9 = ((StringBuilder)localObject9).append(str);
    localObject9 = ((StringBuilder)localObject9).append(localStringBuffer);
    localObject9 = ((StringBuilder)localObject9).toString();
    ((XmlPullParserException)localObject8).<init>((String)localObject9);
    throw ((Throwable)localObject8);
    return (XmlPullParser)localObject2;
  }
  
  public XmlSerializer newSerializer()
    throws XmlPullParserException
  {
    Object localObject3 = serializerClasses;
    if (localObject3 == null)
    {
      localObject3 = new org/xmlpull/v1/XmlPullParserException;
      localObject6 = new java/lang/StringBuilder;
      ((StringBuilder)localObject6).<init>();
      str = "Factory initialization incomplete - has not tried ";
      localObject6 = ((StringBuilder)localObject6).append(str);
      str = classNamesLocation;
      localObject6 = ((StringBuilder)localObject6).append(str);
      localObject6 = ((StringBuilder)localObject6).toString();
      ((XmlPullParserException)localObject3).<init>((String)localObject6);
      throw ((Throwable)localObject3);
    }
    localObject3 = serializerClasses;
    int j = ((Vector)localObject3).size();
    Object localObject4;
    if (j == 0)
    {
      localObject4 = new org/xmlpull/v1/XmlPullParserException;
      localObject6 = new java/lang/StringBuilder;
      ((StringBuilder)localObject6).<init>();
      str = "No valid serializer classes found in ";
      localObject6 = ((StringBuilder)localObject6).append(str);
      str = classNamesLocation;
      localObject6 = ((StringBuilder)localObject6).append(str);
      localObject6 = ((StringBuilder)localObject6).toString();
      ((XmlPullParserException)localObject4).<init>((String)localObject6);
      throw ((Throwable)localObject4);
    }
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int i = 0;
    for (;;)
    {
      localObject4 = serializerClasses;
      int k = ((Vector)localObject4).size();
      if (i >= k) {
        break;
      }
      Vector localVector = serializerClasses;
      Object localObject1 = localVector.elementAt(i);
      localObject1 = (Class)localObject1;
      try
      {
        Object localObject2 = ((Class)localObject1).newInstance();
        localObject2 = (XmlSerializer)localObject2;
        return (XmlSerializer)localObject2;
      }
      catch (Exception localException2)
      {
        Exception localException1 = localException2;
        localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        localObject6 = ((Class)localObject1).getName();
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject6 = ": ";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject6 = localException1.toString();
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject6 = "; ";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject5 = ((StringBuilder)localObject5).toString();
        localStringBuffer.append((String)localObject5);
        i += 1;
      }
    }
    Object localObject5 = new org/xmlpull/v1/XmlPullParserException;
    Object localObject6 = new java/lang/StringBuilder;
    ((StringBuilder)localObject6).<init>();
    String str = "could not create serializer: ";
    localObject6 = ((StringBuilder)localObject6).append(str);
    localObject6 = ((StringBuilder)localObject6).append(localStringBuffer);
    localObject6 = ((StringBuilder)localObject6).toString();
    ((XmlPullParserException)localObject5).<init>((String)localObject6);
    throw ((Throwable)localObject5);
  }
  
  public void setFeature(String paramString, boolean paramBoolean)
    throws XmlPullParserException
  {
    Hashtable localHashtable = features;
    Boolean localBoolean = new java/lang/Boolean;
    localBoolean.<init>(paramBoolean);
    localHashtable.put(paramString, localBoolean);
  }
  
  public void setNamespaceAware(boolean paramBoolean)
  {
    Hashtable localHashtable = features;
    String str = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    Boolean localBoolean = new java/lang/Boolean;
    localBoolean.<init>(paramBoolean);
    localHashtable.put(str, localBoolean);
  }
  
  public void setValidating(boolean paramBoolean)
  {
    Hashtable localHashtable = features;
    String str = "http://xmlpull.org/v1/doc/features.html#validation";
    Boolean localBoolean = new java/lang/Boolean;
    localBoolean.<init>(paramBoolean);
    localHashtable.put(str, localBoolean);
  }
}

/* Location:
 * Qualified Name:     org.xmlpull.v1.XmlPullParserFactory
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */