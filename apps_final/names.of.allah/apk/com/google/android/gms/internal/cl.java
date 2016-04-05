package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;

public final class cl
  extends FrameLayout
  implements View.OnClickListener
{
  private final ImageButton oP;
  private final Activity oe;
  
  public cl(Activity paramActivity, int paramInt)
  {
    super(paramActivity);
    oe = paramActivity;
    setOnClickListener(this);
    oP = new ImageButton(paramActivity);
    oP.setImageResource(17301527);
    oP.setBackgroundColor(0);
    oP.setOnClickListener(this);
    oP.setPadding(0, 0, 0, 0);
    paramInt = eu.a(paramActivity, paramInt);
    addView(oP, new FrameLayout.LayoutParams(paramInt, paramInt, 17));
  }
  
  public final void j(boolean paramBoolean)
  {
    ImageButton localImageButton = oP;
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      localImageButton.setVisibility(i);
      return;
    }
  }
  
  public final void onClick(View paramView)
  {
    oe.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */