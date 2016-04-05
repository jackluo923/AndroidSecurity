package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.d.a;
import com.google.a.d.c;
import com.google.a.x;
import java.net.URI;
import java.net.URISyntaxException;

final class aj
  extends ak<URI>
{
  private static URI b(a parama)
  {
    if (parama.f() == c.i) {
      parama.j();
    }
    for (;;)
    {
      return null;
      try
      {
        parama = parama.h();
        if ("null".equals(parama)) {
          continue;
        }
        parama = new URI(parama);
        return parama;
      }
      catch (URISyntaxException parama)
      {
        throw new x(parama);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */