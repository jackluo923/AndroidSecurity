package com.google.a;

import com.google.a.b.a;
import com.google.a.b.v;
import java.math.BigInteger;

public final class ab
  extends w
{
  private static final Class<?>[] a = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object b;
  
  public ab(Boolean paramBoolean)
  {
    a(paramBoolean);
  }
  
  public ab(Number paramNumber)
  {
    a(paramNumber);
  }
  
  public ab(String paramString)
  {
    a(paramString);
  }
  
  private void a(Object paramObject)
  {
    boolean bool = false;
    if ((paramObject instanceof Character))
    {
      b = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    int i;
    if (!(paramObject instanceof Number))
    {
      if (!(paramObject instanceof String)) {
        break label61;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {
        bool = true;
      }
      a.a(bool);
      b = paramObject;
      return;
      label61:
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = a;
      int j = arrayOfClass.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label110;
        }
        if (arrayOfClass[i].isAssignableFrom(localClass))
        {
          i = 1;
          break;
        }
        i += 1;
      }
      label110:
      i = 0;
    }
  }
  
  private static boolean a(ab paramab)
  {
    if ((b instanceof Number))
    {
      paramab = (Number)b;
      return ((paramab instanceof BigInteger)) || ((paramab instanceof Long)) || ((paramab instanceof Integer)) || ((paramab instanceof Short)) || ((paramab instanceof Byte));
    }
    return false;
  }
  
  public final Number a()
  {
    if ((b instanceof String)) {
      return new v((String)b);
    }
    return (Number)b;
  }
  
  public final String b()
  {
    if ((b instanceof Number)) {
      return a().toString();
    }
    if ((b instanceof Boolean)) {
      return ((Boolean)b).toString();
    }
    return (String)b;
  }
  
  public final double c()
  {
    if ((b instanceof Number)) {
      return a().doubleValue();
    }
    return Double.parseDouble(b());
  }
  
  public final long d()
  {
    if ((b instanceof Number)) {
      return a().longValue();
    }
    return Long.parseLong(b());
  }
  
  public final int e()
  {
    if ((b instanceof Number)) {
      return a().intValue();
    }
    return Integer.parseInt(b());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    double d1;
    double d2;
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (ab)paramObject;
          if (b != null) {
            break;
          }
        } while (b == null);
        return false;
        if ((!a(this)) || (!a((ab)paramObject))) {
          break;
        }
      } while (a().longValue() == ((ab)paramObject).a().longValue());
      return false;
      if ((!(b instanceof Number)) || (!(b instanceof Number))) {
        break;
      }
      d1 = a().doubleValue();
      d2 = ((ab)paramObject).a().doubleValue();
    } while ((d1 == d2) || ((Double.isNaN(d1)) && (Double.isNaN(d2))));
    return false;
    return b.equals(b);
  }
  
  public final boolean f()
  {
    if ((b instanceof Boolean)) {
      return ((Boolean)b).booleanValue();
    }
    return Boolean.parseBoolean(b());
  }
  
  public final int hashCode()
  {
    if (b == null) {
      return 31;
    }
    long l;
    if (a(this))
    {
      l = a().longValue();
      return (int)(l ^ l >>> 32);
    }
    if ((b instanceof Number))
    {
      l = Double.doubleToLongBits(a().doubleValue());
      return (int)(l ^ l >>> 32);
    }
    return b.hashCode();
  }
  
  public final boolean n()
  {
    return b instanceof Boolean;
  }
  
  public final boolean o()
  {
    return b instanceof Number;
  }
  
  public final boolean p()
  {
    return b instanceof String;
  }
}

/* Location:
 * Qualified Name:     com.google.a.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */