package org.kobjects.pim;

import java.util.Enumeration;
import java.util.Hashtable;

public class PimField
{
  String name;
  Hashtable properties;
  Object value;
  
  public PimField(String paramString)
  {
    name = paramString;
  }
  
  public PimField(PimField paramPimField)
  {
    this((String)localObject2);
    localObject2 = value;
    boolean bool1 = localObject2 instanceof String[];
    String[] arrayOfString;
    Object localObject4;
    if (bool1)
    {
      Object localObject3 = value;
      localObject3 = (String[])localObject3;
      localObject3 = (String[])localObject3;
      int i = localObject3.length;
      arrayOfString = new String[i];
      localObject4 = value;
      localObject4 = (String[])localObject4;
      localObject4 = (String[])localObject4;
      int j = arrayOfString.length;
      System.arraycopy(localObject4, k, arrayOfString, k, j);
    }
    Object localObject5;
    for (value = arrayOfString;; value = localObject5)
    {
      localObject4 = properties;
      if (localObject4 == null) {
        break;
      }
      localObject4 = new java/util/Hashtable;
      ((Hashtable)localObject4).<init>();
      properties = ((Hashtable)localObject4);
      localObject4 = properties;
      Enumeration localEnumeration = ((Hashtable)localObject4).keys();
      for (;;)
      {
        boolean bool2 = localEnumeration.hasMoreElements();
        if (!bool2) {
          break;
        }
        Object localObject1 = localEnumeration.nextElement();
        localObject1 = (String)localObject1;
        localObject5 = properties;
        Object localObject6 = properties;
        localObject6 = ((Hashtable)localObject6).get(localObject1);
        ((Hashtable)localObject5).put(localObject1, localObject6);
      }
      localObject5 = value;
    }
  }
  
  public boolean getAttribute(String paramString)
  {
    String str3 = 0;
    String str2 = "type";
    String str1 = getProperty(str2);
    if (str1 == null) {
      str2 = str3;
    }
    for (;;)
    {
      return str2;
      int i = str1.indexOf(paramString);
      int j = -1;
      if (i != j) {
        i = 1;
      } else {
        i = str3;
      }
    }
  }
  
  public String getProperty(String paramString)
  {
    Object localObject = properties;
    if (localObject == null) {}
    for (localObject = null;; localObject = this)
    {
      return (String)localObject;
      localObject = properties;
      this = ((Hashtable)localObject).get(paramString);
      this = (String)this;
    }
  }
  
  public Object getValue()
  {
    Object localObject = value;
    return localObject;
  }
  
  public Enumeration propertyNames()
  {
    Object localObject = properties;
    localObject = ((Hashtable)localObject).keys();
    return (Enumeration)localObject;
  }
  
  public void setAttribute(String paramString, boolean paramBoolean)
  {
    boolean bool = getAttribute(paramString);
    if (bool == paramBoolean) {
      return;
    }
    String str2 = "type";
    String str1 = getProperty(str2);
    if (paramBoolean) {
      if (str1 != null)
      {
        int j = str1.length();
        if (j != 0) {}
      }
      else
      {
        str1 = paramString;
      }
    }
    for (;;)
    {
      Object localObject = "type";
      setProperty((String)localObject, str1);
      break;
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      localObject = ((StringBuilder)localObject).append(str1);
      localObject = ((StringBuilder)localObject).append(paramString);
      str1 = ((StringBuilder)localObject).toString();
      continue;
      int i = str1.indexOf(paramString);
      if (i > 0) {
        i += -1;
      }
      int k = -1;
      if (i != k)
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        int m = 0;
        String str3 = str1.substring(m, i);
        localStringBuilder = localStringBuilder.append(str3);
        int n = paramString.length();
        n += i;
        n += 1;
        String str4 = str1.substring(n);
        localStringBuilder = localStringBuilder.append(str4);
        str1 = localStringBuilder.toString();
      }
    }
  }
  
  public void setProperty(String paramString1, String paramString2)
  {
    Hashtable localHashtable = properties;
    if (localHashtable == null) {
      if (paramString2 != null) {}
    }
    for (;;)
    {
      return;
      localHashtable = new java/util/Hashtable;
      localHashtable.<init>();
      properties = localHashtable;
      if (paramString2 == null)
      {
        localHashtable = properties;
        localHashtable.remove(paramString1);
      }
      else
      {
        localHashtable = properties;
        localHashtable.put(paramString1, paramString2);
      }
    }
  }
  
  public void setValue(Object paramObject)
  {
    value = paramObject;
  }
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = name;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = properties;
    if (localObject2 != null)
    {
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = ";";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = properties;
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
    }
    for (localObject2 = ((StringBuilder)localObject2).toString();; localObject2 = "")
    {
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = ":";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = value;
      localObject1 = ((StringBuilder)localObject1).append(localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.pim.PimField
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */