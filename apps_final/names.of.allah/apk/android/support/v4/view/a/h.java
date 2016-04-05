package android.support.v4.view.a;

import android.os.Build.VERSION;
import java.util.List;

public final class h
{
  private static final i a = new n();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new l();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new j();
      return;
    }
  }
  
  public h()
  {
    b = a.a(this);
  }
  
  public h(Object paramObject)
  {
    b = paramObject;
  }
  
  public static a b()
  {
    return null;
  }
  
  public static boolean c()
  {
    return false;
  }
  
  public static List<a> d()
  {
    return null;
  }
  
  public final Object a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */