import java.io.IOException;

public abstract class ao
{
  private static final ad a;
  
  static
  {
    ad localad = new ad;
    boolean bool = false;
    localad.<init>(bool);
    a = localad;
  }
  
  protected abstract void a(Appendable paramAppendable, ad paramad)
    throws IOException;
  
  public final boolean a()
  {
    boolean bool = this instanceof ak;
    return bool;
  }
  
  public final boolean b()
  {
    boolean bool = this instanceof at;
    return bool;
  }
  
  public final boolean c()
  {
    boolean bool = this instanceof as;
    return bool;
  }
  
  public final at d()
  {
    boolean bool = this instanceof at;
    if (bool)
    {
      this = (at)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Object.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public final ak e()
  {
    boolean bool = this instanceof ak;
    if (bool)
    {
      this = (ak)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Array.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public final au f()
  {
    boolean bool = this instanceof au;
    if (bool)
    {
      this = (au)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Primitive.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public final as g()
  {
    boolean bool = this instanceof as;
    if (bool)
    {
      this = (as)this;
      return this;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "This is not a JSON Null.";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public String toString()
  {
    try
    {
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      localObject2 = a;
      a((Appendable)localObject1, (ad)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    catch (IOException localIOException)
    {
      Object localObject2 = new java/lang/RuntimeException;
      ((RuntimeException)localObject2).<init>(localIOException);
      throw ((Throwable)localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     ao
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */