package com.actionbarsherlock.internal.widget;

import android.view.View;

final class IcsView
{
  public static int getMeasuredStateInt(View paramView)
  {
    return paramView.getMeasuredWidth() & 0xFF000000 | paramView.getMeasuredHeight() >> 16 & 0xFF00;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */