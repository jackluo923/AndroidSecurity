package android.support.v4.a;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public final class b
{
  private static final c a = new d();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new f();
      return;
    }
    if (i >= 11)
    {
      a = new e();
      return;
    }
  }
  
  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */