package android.support.v4.a;

import android.support.v4.c.d;

public final class g<D>
{
  public int a;
  public h<D> b;
  public boolean c;
  public boolean d;
  public boolean e;
  public boolean f;
  public boolean g;
  
  public final void a(h<D> paramh)
  {
    if (b == null) {
      throw new IllegalStateException("No listener register");
    }
    if (b != paramh) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    b = null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    d.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */