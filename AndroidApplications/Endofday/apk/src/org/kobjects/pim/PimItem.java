package org.kobjects.pim;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public abstract class PimItem
{
  public static final int TYPE_STRING = 0;
  public static final int TYPE_STRING_ARRAY = 1;
  Hashtable fields;
  
  public PimItem()
  {
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    fields = localHashtable;
  }
  
  public PimItem(PimItem paramPimItem)
  {
    Hashtable localHashtable = new java/util/Hashtable;
    localHashtable.<init>();
    fields = localHashtable;
    Enumeration localEnumeration = paramPimItem.fields();
    for (;;)
    {
      boolean bool = localEnumeration.hasMoreElements();
      if (!bool) {
        break;
      }
      PimField localPimField = new org/kobjects/pim/PimField;
      Object localObject = localEnumeration.nextElement();
      localObject = (PimField)localObject;
      localPimField.<init>((PimField)localObject);
      addField(localPimField);
    }
  }
  
  public void addField(PimField paramPimField)
  {
    Hashtable localHashtable = fields;
    String str = name;
    Object localObject = localHashtable.get(str);
    localObject = (Vector)localObject;
    if (localObject == null)
    {
      localObject = new java/util/Vector;
      ((Vector)localObject).<init>();
      localHashtable = fields;
      str = name;
      localHashtable.put(str, localObject);
    }
    ((Vector)localObject).addElement(paramPimField);
  }
  
  public Enumeration fieldNames()
  {
    Object localObject = fields;
    localObject = ((Hashtable)localObject).keys();
    return (Enumeration)localObject;
  }
  
  public Enumeration fields()
  {
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    Enumeration localEnumeration1 = fieldNames();
    boolean bool = localEnumeration1.hasMoreElements();
    if (bool)
    {
      Object localObject1 = localEnumeration1.nextElement();
      localObject1 = (String)localObject1;
      Enumeration localEnumeration2 = fields((String)localObject1);
      for (;;)
      {
        bool = localEnumeration2.hasMoreElements();
        if (!bool) {
          break;
        }
        localObject2 = localEnumeration2.nextElement();
        localVector.addElement(localObject2);
      }
    }
    Object localObject2 = localVector.elements();
    return (Enumeration)localObject2;
  }
  
  public Enumeration fields(String paramString)
  {
    Object localObject2 = fields;
    Object localObject1 = ((Hashtable)localObject2).get(paramString);
    localObject1 = (Vector)localObject1;
    if (localObject1 == null)
    {
      localObject1 = new java/util/Vector;
      ((Vector)localObject1).<init>();
    }
    localObject2 = ((Vector)localObject1).elements();
    return (Enumeration)localObject2;
  }
  
  public abstract int getArraySize(String paramString);
  
  public PimField getField(String paramString, int paramInt)
  {
    Hashtable localHashtable = fields;
    this = localHashtable.get(paramString);
    this = (Vector)this;
    this = elementAt(paramInt);
    this = (PimField)this;
    return this;
  }
  
  public int getFieldCount(String paramString)
  {
    Hashtable localHashtable = fields;
    Object localObject = localHashtable.get(paramString);
    localObject = (Vector)localObject;
    if (localObject == null) {}
    for (int i = 0;; i = ((Vector)localObject).size()) {
      return i;
    }
  }
  
  public int getType(String paramString)
  {
    int i = getArraySize(paramString);
    int j = -1;
    if (i == j) {}
    for (i = 0;; i = 1) {
      return i;
    }
  }
  
  public abstract String getType();
  
  public void removeField(String paramString, int paramInt)
  {
    Hashtable localHashtable = fields;
    this = localHashtable.get(paramString);
    this = (Vector)this;
    removeElementAt(paramInt);
  }
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = getType();
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = ":";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = fields;
    localObject2 = ((Hashtable)localObject2).toString();
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    return (String)localObject1;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.pim.PimItem
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */