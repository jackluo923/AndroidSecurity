package com.google.b.a.a;

public final class e<T>
{
  public final int a;
  public boolean b;
  public Class<T> c;
  public Class<T> d;
  
  private e(int paramInt, f<T> paramf)
  {
    a = paramInt;
    b = f.access$000(paramf);
    c = f.access$100(paramf);
    if (b) {}
    for (paramf = f.access$200(paramf);; paramf = null)
    {
      d = paramf;
      return;
    }
  }
  
  public static <T> e<T> a(int paramInt, f<T> paramf)
  {
    return new e(paramInt, paramf);
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */