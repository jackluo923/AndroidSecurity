package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class r
{
  static final v a = new s();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new u();
      return;
    }
  }
  
  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
  
  public static boolean b(KeyEvent paramKeyEvent)
  {
    return a.c(paramKeyEvent.getMetaState());
  }
  
  public static void c(KeyEvent paramKeyEvent)
  {
    a.a(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */