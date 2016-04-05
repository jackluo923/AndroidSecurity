package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R.string;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.ll;
import com.google.android.gms.internal.lt;

class WalletFragment$c
  extends a<WalletFragment.b>
  implements View.OnClickListener
{
  private WalletFragment$c(WalletFragment paramWalletFragment) {}
  
  protected void a(FrameLayout paramFrameLayout)
  {
    int k = -1;
    int m = -2;
    Button localButton = new Button(WalletFragment.a(akw).getActivity());
    localButton.setText(R.string.wallet_buy_button_place_holder);
    int j = m;
    int i = k;
    if (WalletFragment.e(akw) != null)
    {
      WalletFragmentStyle localWalletFragmentStyle = WalletFragment.e(akw).getFragmentStyle();
      j = m;
      i = k;
      if (localWalletFragmentStyle != null)
      {
        DisplayMetrics localDisplayMetrics = WalletFragment.a(akw).getResources().getDisplayMetrics();
        i = localWalletFragmentStyle.a("buyButtonWidth", localDisplayMetrics, -1);
        j = localWalletFragmentStyle.a("buyButtonHeight", localDisplayMetrics, -2);
      }
    }
    localButton.setLayoutParams(new ViewGroup.LayoutParams(i, j));
    localButton.setOnClickListener(this);
    paramFrameLayout.addView(localButton);
  }
  
  protected void a(f<WalletFragment.b> paramf)
  {
    Object localObject = WalletFragment.a(akw).getActivity();
    if ((WalletFragment.b(akw) == null) && (WalletFragment.c(akw)) && (localObject != null)) {}
    try
    {
      localObject = lt.a((Activity)localObject, WalletFragment.d(akw), WalletFragment.e(akw), WalletFragment.f(akw));
      WalletFragment.a(akw, new WalletFragment.b((ll)localObject, null));
      WalletFragment.a(akw, null);
      paramf.a(WalletFragment.b(akw));
      if (WalletFragment.g(akw) != null)
      {
        WalletFragment.b.a(WalletFragment.b(akw), WalletFragment.g(akw));
        WalletFragment.a(akw, null);
      }
      if (WalletFragment.h(akw) != null)
      {
        WalletFragment.b.a(WalletFragment.b(akw), WalletFragment.h(akw));
        WalletFragment.a(akw, null);
      }
      if (WalletFragment.i(akw) != null)
      {
        WalletFragment.b.a(WalletFragment.b(akw), WalletFragment.i(akw));
        WalletFragment.a(akw, null);
      }
      if (WalletFragment.j(akw) != null)
      {
        WalletFragment.b.a(WalletFragment.b(akw), WalletFragment.j(akw).booleanValue());
        WalletFragment.a(akw, null);
      }
      return;
    }
    catch (GooglePlayServicesNotAvailableException paramf) {}
  }
  
  public void onClick(View paramView)
  {
    paramView = WalletFragment.a(akw).getActivity();
    GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramView), paramView, -1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */