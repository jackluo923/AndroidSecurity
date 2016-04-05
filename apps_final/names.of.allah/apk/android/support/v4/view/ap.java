package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class ap
{
  static final as a = new aq();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new ar();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */