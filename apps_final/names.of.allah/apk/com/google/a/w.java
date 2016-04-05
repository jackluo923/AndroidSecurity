package com.google.a;

import com.google.a.b.ag;
import com.google.a.d.d;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class w
{
  public Number a()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String b()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double c()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long d()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int e()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean f()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public final boolean g()
  {
    return this instanceof t;
  }
  
  public final boolean h()
  {
    return this instanceof z;
  }
  
  public final boolean i()
  {
    return this instanceof ab;
  }
  
  public final boolean j()
  {
    return this instanceof y;
  }
  
  public final z k()
  {
    if ((this instanceof z)) {
      return (z)this;
    }
    throw new IllegalStateException("Not a JSON Object: " + this);
  }
  
  public final t l()
  {
    if ((this instanceof t)) {
      return (t)this;
    }
    throw new IllegalStateException("This is not a JSON Array.");
  }
  
  public final ab m()
  {
    if ((this instanceof ab)) {
      return (ab)this;
    }
    throw new IllegalStateException("This is not a JSON Primitive.");
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringWriter();
      d locald = new d((Writer)localObject);
      locald.g();
      ag.a(this, locald);
      localObject = ((StringWriter)localObject).toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */