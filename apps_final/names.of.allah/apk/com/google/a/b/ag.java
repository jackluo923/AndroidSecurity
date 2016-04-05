package com.google.a.b;

import com.google.a.ae;
import com.google.a.ak;
import com.google.a.d.a;
import com.google.a.d.d;
import com.google.a.d.e;
import com.google.a.w;
import com.google.a.x;
import java.io.EOFException;
import java.io.IOException;

public final class ag
{
  public static w a(a parama)
  {
    int i = 1;
    try
    {
      parama.f();
      i = 0;
      parama = (w)com.google.a.b.a.y.P.a(parama);
      return parama;
    }
    catch (EOFException parama)
    {
      if (i != 0) {
        return com.google.a.y.a;
      }
      throw new ae(parama);
    }
    catch (e parama)
    {
      throw new ae(parama);
    }
    catch (IOException parama)
    {
      throw new x(parama);
    }
    catch (NumberFormatException parama)
    {
      throw new ae(parama);
    }
  }
  
  public static void a(w paramw, d paramd)
  {
    com.google.a.b.a.y.P.a(paramd, paramw);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */