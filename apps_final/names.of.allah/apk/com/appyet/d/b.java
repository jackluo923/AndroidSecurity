package com.appyet.d;

import java.io.UnsupportedEncodingException;
import org.a.a.a.g;
import org.a.a.a.j;
import org.a.a.a.k;
import org.a.a.a.l;

public final class b
{
  public static String a(byte[] paramArrayOfByte)
  {
    int j = 0;
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      int i;
      try
      {
        org.a.a.c localc = new org.a.a.c();
        int k = paramArrayOfByte.length;
        int m;
        int n;
        int i1;
        if (!b)
        {
          if (k > 0) {
            d = true;
          }
          if (c)
          {
            c = false;
            if (k > 3)
            {
              i = paramArrayOfByte[0];
              m = paramArrayOfByte[1] & 0xFF;
              n = paramArrayOfByte[2] & 0xFF;
              i1 = paramArrayOfByte[3] & 0xFF;
            }
          }
        }
        else
        {
          switch (i & 0xFF)
          {
          case 239: 
            if (f == null) {
              break label810;
            }
            b = true;
            if (d)
            {
              if (f == null) {
                continue;
              }
              b = true;
              if (i != null)
              {
                paramArrayOfByte = i;
                paramArrayOfByte = f;
              }
            }
            paramArrayOfByte = f;
            localc.a();
            return paramArrayOfByte;
            if ((m != 187) || (n != 191)) {
              continue;
            }
            f = org.a.a.b.u;
            break;
          case 254: 
            if ((m == 255) && (n == 0) && (i1 == 0))
            {
              f = org.a.a.b.A;
              continue;
            }
            if (m != 255) {
              continue;
            }
            f = org.a.a.b.v;
            break;
          case 0: 
            if ((m == 0) && (n == 254) && (i1 == 255))
            {
              f = org.a.a.b.x;
              continue;
            }
            if ((m != 0) || (n != 255) || (i1 != 254)) {
              continue;
            }
            f = org.a.a.b.B;
            break;
          case 255: 
            if ((m == 254) && (n == 0) && (i1 == 0))
            {
              f = org.a.a.b.y;
              continue;
            }
            if (m != 254) {
              continue;
            }
            f = org.a.a.b.w;
            continue;
            if (i < k + 0)
            {
              m = paramArrayOfByte[i] & 0xFF;
              if (((m & 0x80) != 0) && (m != 160))
              {
                if (a == org.a.a.d.c) {
                  break label816;
                }
                a = org.a.a.d.c;
                if (h != null) {
                  h = null;
                }
                if (g[0] == null) {
                  g[0] = new k();
                }
                if (g[1] == null) {
                  g[1] = new l();
                }
                if (g[2] != null) {
                  break label816;
                }
                g[2] = new j();
                break label816;
              }
              if ((a == org.a.a.d.a) && ((m == 27) || ((m == 123) && (e == 126)))) {
                a = org.a.a.d.b;
              }
              e = paramArrayOfByte[i];
              break label816;
            }
            if (a == org.a.a.d.b)
            {
              if (h == null) {
                h = new g();
              }
              if (h.a(paramArrayOfByte, k) != org.a.a.a.c.b) {
                continue;
              }
              b = true;
              f = h.a();
              continue;
            }
            if (a != org.a.a.d.c) {
              continue;
            }
            i = 0;
            if (i >= g.length) {
              continue;
            }
            if (g[i].a(paramArrayOfByte, k) != org.a.a.a.c.b) {
              break label825;
            }
            b = true;
            f = g[i].a();
            continue;
            if (a == org.a.a.d.c)
            {
              float f1 = 0.0F;
              k = 0;
              i = j;
              j = k;
              if (i < g.length)
              {
                float f2 = g[i].b();
                if (f2 > f1)
                {
                  j = i;
                  f1 = f2;
                  break label834;
                }
              }
              else
              {
                if (f1 <= 0.2F) {
                  continue;
                }
                f = g[j].a();
                if (i == null) {
                  continue;
                }
                paramArrayOfByte = i;
                paramArrayOfByte = f;
              }
            }
            else
            {
              paramArrayOfByte = a;
              paramArrayOfByte = org.a.a.d.b;
              continue;
              return null;
            }
            break;
          }
          continue;
        }
        i = 0;
      }
      catch (Exception paramArrayOfByte)
      {
        return null;
      }
      label810:
      continue;
      label816:
      i += 1;
      continue;
      label825:
      i += 1;
      continue;
      label834:
      i += 1;
    }
  }
  
  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    if ((paramArrayOfByte != null) && (paramString != null)) {}
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, paramString);
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      d.a(paramArrayOfByte);
    }
    return null;
    return null;
  }
  
  /* Error */
  public static byte[] a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 126	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 127	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: sipush 16384
    //   11: newarray <illegal type>
    //   13: astore_1
    //   14: aload_0
    //   15: aload_1
    //   16: iconst_0
    //   17: aload_1
    //   18: arraylength
    //   19: invokevirtual 133	java/io/InputStream:read	([BII)I
    //   22: istore_3
    //   23: iload_3
    //   24: iconst_m1
    //   25: if_icmpeq +34 -> 59
    //   28: aload_2
    //   29: aload_1
    //   30: iconst_0
    //   31: iload_3
    //   32: invokevirtual 137	java/io/ByteArrayOutputStream:write	([BII)V
    //   35: goto -21 -> 14
    //   38: astore_1
    //   39: aload_1
    //   40: invokestatic 121	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   43: aload_2
    //   44: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   47: aload_0
    //   48: ifnull +7 -> 55
    //   51: aload_0
    //   52: invokevirtual 141	java/io/InputStream:close	()V
    //   55: aconst_null
    //   56: astore_2
    //   57: aload_2
    //   58: areturn
    //   59: aload_2
    //   60: invokevirtual 144	java/io/ByteArrayOutputStream:flush	()V
    //   63: aload_2
    //   64: invokevirtual 148	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   67: astore_1
    //   68: aload_2
    //   69: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   72: aload_1
    //   73: astore_2
    //   74: aload_0
    //   75: ifnull -18 -> 57
    //   78: aload_0
    //   79: invokevirtual 141	java/io/InputStream:close	()V
    //   82: aload_1
    //   83: areturn
    //   84: astore_0
    //   85: aload_0
    //   86: invokestatic 121	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   89: aload_1
    //   90: areturn
    //   91: astore_1
    //   92: aload_2
    //   93: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   96: aload_0
    //   97: ifnull +7 -> 104
    //   100: aload_0
    //   101: invokevirtual 141	java/io/InputStream:close	()V
    //   104: aload_1
    //   105: athrow
    //   106: astore_0
    //   107: aload_0
    //   108: invokestatic 121	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   111: goto -7 -> 104
    //   114: astore_0
    //   115: aload_0
    //   116: invokestatic 121	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   119: goto -64 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	paramInputStream	java.io.InputStream
    //   13	17	1	arrayOfByte1	byte[]
    //   38	2	1	localException	Exception
    //   67	23	1	arrayOfByte2	byte[]
    //   91	14	1	localObject1	Object
    //   7	86	2	localObject2	Object
    //   22	10	3	i	int
    // Exception table:
    //   from	to	target	type
    //   14	23	38	java/lang/Exception
    //   28	35	38	java/lang/Exception
    //   59	68	38	java/lang/Exception
    //   68	72	84	java/io/IOException
    //   78	82	84	java/io/IOException
    //   14	23	91	finally
    //   28	35	91	finally
    //   39	43	91	finally
    //   59	68	91	finally
    //   92	96	106	java/io/IOException
    //   100	104	106	java/io/IOException
    //   43	47	114	java/io/IOException
    //   51	55	114	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.appyet.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */