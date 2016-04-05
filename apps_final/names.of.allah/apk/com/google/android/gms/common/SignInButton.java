package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.g.a;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.ho;
import com.google.android.gms.internal.hp;

public final class SignInButton
  extends FrameLayout
  implements View.OnClickListener
{
  public static final int COLOR_DARK = 0;
  public static final int COLOR_LIGHT = 1;
  public static final int SIZE_ICON_ONLY = 2;
  public static final int SIZE_STANDARD = 0;
  public static final int SIZE_WIDE = 1;
  private int Dg;
  private View Dh;
  private View.OnClickListener Di = null;
  private int mSize;
  
  public SignInButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setStyle(0, 0);
  }
  
  private static Button a(Context paramContext, int paramInt1, int paramInt2)
  {
    hp localhp = new hp(paramContext);
    localhp.a(paramContext.getResources(), paramInt1, paramInt2);
    return localhp;
  }
  
  private void z(Context paramContext)
  {
    if (Dh != null) {
      removeView(Dh);
    }
    try
    {
      Dh = ho.b(paramContext, mSize, Dg);
      addView(Dh);
      Dh.setEnabled(isEnabled());
      Dh.setOnClickListener(this);
      return;
    }
    catch (g.a locala)
    {
      for (;;)
      {
        Log.w("SignInButton", "Sign in button not found, using placeholder instead");
        Dh = a(paramContext, mSize, Dg);
      }
    }
  }
  
  public final void onClick(View paramView)
  {
    if ((Di != null) && (paramView == Dh)) {
      Di.onClick(this);
    }
  }
  
  public final void setColorScheme(int paramInt)
  {
    setStyle(mSize, paramInt);
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    Dh.setEnabled(paramBoolean);
  }
  
  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    Di = paramOnClickListener;
    if (Dh != null) {
      Dh.setOnClickListener(this);
    }
  }
  
  public final void setSize(int paramInt)
  {
    setStyle(paramInt, Dg);
  }
  
  public final void setStyle(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < 3))
    {
      bool = true;
      hn.a(bool, "Unknown button size %d", new Object[] { Integer.valueOf(paramInt1) });
      if ((paramInt2 < 0) || (paramInt2 >= 2)) {
        break label80;
      }
    }
    label80:
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Unknown color scheme %s", new Object[] { Integer.valueOf(paramInt2) });
      mSize = paramInt1;
      Dg = paramInt2;
      z(getContext());
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.SignInButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */