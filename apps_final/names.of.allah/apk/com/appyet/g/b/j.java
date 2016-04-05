package com.appyet.g.b;

import com.appyet.g.n;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

public final class j
{
  public static j a;
  private k b = new k();
  private c c = new c();
  private f d = new f();
  private g e = new g();
  private l f = new l();
  private e g = new e();
  private d h = new d();
  private a i = new a();
  private b j = new b();
  private h k = new h();
  private int l = 4;
  
  public static j a()
  {
    if (a == null) {
      throw new n("The SerializerHandler has not been initialized.");
    }
    return a;
  }
  
  public final com.appyet.g.c.b a(Object paramObject)
  {
    Object localObject;
    if (((l & 0x8) != 0) && (paramObject == null)) {
      localObject = k;
    }
    for (;;)
    {
      return ((i)localObject).a(paramObject);
      if ((paramObject instanceof String))
      {
        localObject = b;
      }
      else if ((paramObject instanceof Boolean))
      {
        localObject = c;
      }
      else if (((paramObject instanceof Double)) || ((paramObject instanceof Float)) || ((paramObject instanceof BigDecimal)))
      {
        localObject = g;
      }
      else if (((paramObject instanceof Integer)) || ((paramObject instanceof Short)) || ((paramObject instanceof Byte)))
      {
        localObject = d;
      }
      else if ((paramObject instanceof Long))
      {
        if ((l & 0x2) != 0)
        {
          localObject = e;
        }
        else
        {
          long l1 = ((Long)paramObject).longValue();
          if ((l1 > 2147483647L) || (l1 < -2147483648L)) {
            throw new com.appyet.g.l("FLAGS_8BYTE_INT must be set, if values outside the 4 byte integer range should be transfered.");
          }
          localObject = d;
        }
      }
      else if ((paramObject instanceof Date))
      {
        localObject = h;
      }
      else if ((paramObject instanceof Calendar))
      {
        paramObject = ((Calendar)paramObject).getTime();
        localObject = h;
      }
      else if ((paramObject instanceof Map))
      {
        localObject = f;
      }
      else if ((paramObject instanceof byte[]))
      {
        localObject = (byte[])paramObject;
        paramObject = new Byte[localObject.length];
        int m = 0;
        while (m < paramObject.length)
        {
          paramObject[m] = new Byte(localObject[m]);
          m += 1;
        }
        localObject = j;
      }
      else if ((paramObject instanceof Byte[]))
      {
        localObject = j;
      }
      else
      {
        if (!(paramObject instanceof Iterable)) {
          break;
        }
        localObject = i;
      }
    }
    throw new com.appyet.g.l("No serializer found for type '" + paramObject.getClass().getName() + "'.");
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */