package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

public class PlusOneButton$DefaultOnPlusOneClickListener
  implements View.OnClickListener, PlusOneButton.OnPlusOneClickListener
{
  private final PlusOneButton.OnPlusOneClickListener abC;
  
  public PlusOneButton$DefaultOnPlusOneClickListener(PlusOneButton paramPlusOneButton, PlusOneButton.OnPlusOneClickListener paramOnPlusOneClickListener)
  {
    abC = paramOnPlusOneClickListener;
  }
  
  public void onClick(View paramView)
  {
    paramView = (Intent)PlusOneButton.a(abD).getTag();
    if (abC != null)
    {
      abC.onPlusOneClick(paramView);
      return;
    }
    onPlusOneClick(paramView);
  }
  
  public void onPlusOneClick(Intent paramIntent)
  {
    Context localContext = abD.getContext();
    if (((localContext instanceof Activity)) && (paramIntent != null)) {
      ((Activity)localContext).startActivityForResult(paramIntent, PlusOneButton.b(abD));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusOneButton.DefaultOnPlusOneClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */