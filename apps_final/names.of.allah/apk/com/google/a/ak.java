package com.google.a;

import com.google.a.b.a.i;
import com.google.a.d.a;
import com.google.a.d.d;
import java.io.IOException;

public abstract class ak<T>
{
  public final w a(T paramT)
  {
    try
    {
      i locali = new i();
      a(locali, paramT);
      paramT = locali.a();
      return paramT;
    }
    catch (IOException paramT)
    {
      throw new x(paramT);
    }
  }
  
  public abstract T a(a parama);
  
  public abstract void a(d paramd, T paramT);
}

/* Location:
 * Qualified Name:     com.google.a.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */