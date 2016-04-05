package net.simonvt.menudrawer;

import android.os.Build.VERSION;
import android.view.View;

final class al
{
  public static int a(View paramView)
  {
    if (MenuDrawer.q) {
      return (int)(paramView.getLeft() + paramView.getTranslationX());
    }
    return paramView.getLeft();
  }
  
  public static int b(View paramView)
  {
    if (MenuDrawer.q) {
      return (int)(paramView.getTop() + paramView.getTranslationY());
    }
    return paramView.getTop();
  }
  
  public static int c(View paramView)
  {
    if (MenuDrawer.q) {
      return (int)(paramView.getRight() + paramView.getTranslationX());
    }
    return paramView.getRight();
  }
  
  public static int d(View paramView)
  {
    if (MenuDrawer.q) {
      return (int)(paramView.getBottom() + paramView.getTranslationY());
    }
    return paramView.getBottom();
  }
  
  public static int e(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getLayoutDirection();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */