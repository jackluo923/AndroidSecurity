package org.ksoap2.serialization;

import java.util.Hashtable;

class MarshalHashtable$ItemSoapObject
  extends SoapObject
{
  Hashtable h;
  int resolvedIndex;
  final MarshalHashtable this$0;
  
  MarshalHashtable$ItemSoapObject(MarshalHashtable paramMarshalHashtable, Hashtable paramHashtable)
  {
    super(str2, str2);
    int i = -1;
    resolvedIndex = i;
    h = paramHashtable;
    String str1 = "key";
    addProperty(str1, str2);
    str1 = "value";
    addProperty(str1, str2);
  }
  
  public void setProperty(int paramInt, Object paramObject)
  {
    int i = resolvedIndex;
    int k = -1;
    if (i == k)
    {
      super.setProperty(paramInt, paramObject);
      resolvedIndex = paramInt;
    }
    for (;;)
    {
      return;
      i = resolvedIndex;
      Object localObject2;
      if (i == 0)
      {
        i = 0;
        localObject2 = getProperty(i);
      }
      for (Object localObject1 = localObject2;; localObject1 = localObject3)
      {
        if (paramInt != 0) {
          break label92;
        }
        localObject2 = h;
        ((Hashtable)localObject2).put(paramObject, localObject1);
        break;
        int j = 1;
        localObject3 = getProperty(j);
      }
      label92:
      Object localObject3 = h;
      ((Hashtable)localObject3).put(localObject1, paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.MarshalHashtable.ItemSoapObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */