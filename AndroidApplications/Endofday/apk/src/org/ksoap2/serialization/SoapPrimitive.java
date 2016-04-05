package org.ksoap2.serialization;

public class SoapPrimitive
{
  String name;
  String namespace;
  String value;
  
  public SoapPrimitive(String paramString1, String paramString2, String paramString3)
  {
    namespace = paramString1;
    name = paramString2;
    value = paramString3;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool5 = false;
    boolean bool1 = paramObject instanceof SoapPrimitive;
    if (!bool1)
    {
      bool1 = bool5;
      return bool1;
    }
    Object localObject1 = paramObject;
    localObject1 = (SoapPrimitive)localObject1;
    Object localObject2 = localObject1;
    String str1 = name;
    String str5 = name;
    boolean bool2 = str1.equals(str5);
    if (bool2)
    {
      String str2 = namespace;
      if (str2 == null)
      {
        str2 = namespace;
        if (str2 != null) {
          break label133;
        }
        label79:
        str2 = value;
        if (str2 != null) {
          break label140;
        }
        str2 = value;
        if (str2 != null) {
          break label133;
        }
      }
    }
    for (;;)
    {
      int i = 1;
      break;
      String str3 = namespace;
      str5 = namespace;
      boolean bool3 = str3.equals(str5);
      if (bool3) {
        break label79;
      }
      label133:
      label140:
      boolean bool4;
      do
      {
        bool3 = bool5;
        break;
        String str4 = value;
        str5 = value;
        bool4 = str4.equals(str5);
      } while (!bool4);
    }
  }
  
  public String getName()
  {
    String str = name;
    return str;
  }
  
  public String getNamespace()
  {
    String str = namespace;
    return str;
  }
  
  public int hashCode()
  {
    String str1 = name;
    int i = str1.hashCode();
    String str2 = namespace;
    if (str2 == null) {}
    String str3;
    int k;
    for (int j = 0;; k = str3.hashCode())
    {
      i ^= j;
      return i;
      str3 = namespace;
    }
  }
  
  public String toString()
  {
    String str = value;
    return str;
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.serialization.SoapPrimitive
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */