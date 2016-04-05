package com.google.a.b.a;

import com.google.a.ae;
import com.google.a.d.a;
import com.google.a.d.c;
import java.util.BitSet;

final class ak
  extends com.google.a.ak<BitSet>
{
  private static BitSet b(a parama)
  {
    if (parama.f() == c.i)
    {
      parama.j();
      return null;
    }
    BitSet localBitSet = new BitSet();
    parama.a();
    Object localObject = parama.f();
    int i = 0;
    if (localObject != c.b)
    {
      boolean bool;
      switch (ay.a[localObject.ordinal()])
      {
      default: 
        throw new ae("Invalid bitset value type: " + localObject);
      case 1: 
        if (parama.m() != 0) {
          bool = true;
        }
        break;
      }
      for (;;)
      {
        if (bool) {
          localBitSet.set(i);
        }
        i += 1;
        localObject = parama.f();
        break;
        bool = false;
        continue;
        bool = parama.i();
        continue;
        localObject = parama.h();
        try
        {
          int j = Integer.parseInt((String)localObject);
          if (j != 0) {
            bool = true;
          } else {
            bool = false;
          }
        }
        catch (NumberFormatException parama)
        {
          throw new ae("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
        }
      }
    }
    parama.b();
    return localBitSet;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */