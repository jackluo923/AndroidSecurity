package org.codehaus.jackson.org.objectweb.asm;

final class Item
{
  int a;
  int b;
  int c;
  long d;
  String g;
  String h;
  String i;
  int j;
  Item k;
  
  Item() {}
  
  Item(int paramInt)
  {
    a = paramInt;
  }
  
  Item(int paramInt, Item paramItem)
  {
    a = paramInt;
    b = b;
    c = c;
    d = d;
    g = g;
    h = h;
    i = i;
    j = j;
  }
  
  void a(double paramDouble)
  {
    b = 6;
    d = Double.doubleToRawLongBits(paramDouble);
    j = (0x7FFFFFFF & b + (int)paramDouble);
  }
  
  void a(float paramFloat)
  {
    b = 4;
    c = Float.floatToRawIntBits(paramFloat);
    j = (0x7FFFFFFF & b + (int)paramFloat);
  }
  
  void a(int paramInt)
  {
    b = 3;
    c = paramInt;
    j = (0x7FFFFFFF & b + paramInt);
  }
  
  void a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    b = paramInt;
    g = paramString1;
    h = paramString2;
    i = paramString3;
    switch (paramInt)
    {
    default: 
      j = (paramString1.hashCode() * paramString2.hashCode() * paramString3.hashCode() + paramInt & 0x7FFFFFFF);
      return;
    case 1: 
    case 7: 
    case 8: 
    case 13: 
      j = (paramString1.hashCode() + paramInt & 0x7FFFFFFF);
      return;
    }
    j = (paramString1.hashCode() * paramString2.hashCode() + paramInt & 0x7FFFFFFF);
  }
  
  void a(long paramLong)
  {
    b = 5;
    d = paramLong;
    j = (0x7FFFFFFF & b + (int)paramLong);
  }
  
  boolean a(Item paramItem)
  {
    switch (b)
    {
    case 2: 
    case 9: 
    case 10: 
    case 11: 
    default: 
      if ((!g.equals(g)) || (!h.equals(h)) || (!i.equals(i))) {
        break;
      }
    case 1: 
    case 7: 
    case 8: 
    case 13: 
    case 5: 
    case 6: 
    case 15: 
    case 3: 
    case 4: 
    case 14: 
    case 12: 
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
              return g.equals(g);
            } while (d == d);
            return false;
          } while (c == c);
          return false;
        } while ((c == c) && (g.equals(g)));
        return false;
      } while ((g.equals(g)) && (h.equals(h)));
      return false;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.Item
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */