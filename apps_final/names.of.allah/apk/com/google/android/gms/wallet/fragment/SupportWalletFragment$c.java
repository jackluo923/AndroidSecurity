package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
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

class SupportWalletFragment$c
  extends a<SupportWalletFragment.b>
  implements View.OnClickListener
{
  private SupportWalletFragment$c(SupportWalletFragment paramSupportWalletFragment) {}
  
  protected void a(FrameLayout paramFrameLayout)
  {
    int k = -1;
    int m = -2;
    Button localButton = new Button(SupportWalletFragment.a(akp).getActivity());
    localButton.setText(R.string.wallet_buy_button_place_holder);
    int j = m;
    int i = k;
    if (SupportWalletFragment.e(akp) != null)
    {
      WalletFragmentStyle localWalletFragmentStyle = SupportWalletFragment.e(akp).getFragmentStyle();
      j = m;
      i = k;
      if (localWalletFragmentStyle != null)
      {
        DisplayMetrics localDisplayMetrics = SupportWalletFragment.a(akp).getResources().getDisplayMetrics();
        i = localWalletFragmentStyle.a("buyButtonWidth", localDisplayMetrics, -1);
        j = localWalletFragmentStyle.a("buyButtonHeight", localDisplayMetrics, -2);
      }
    }
    localButton.setLayoutParams(new ViewGroup.LayoutParams(i, j));
    localButton.setOnClickListener(this);
    paramFrameLayout.addView(localButton);
  }
  
  protected void a(f<SupportWalletFragment.b> paramf)
  {
    Object localObject = SupportWalletFragment.a(akp).getActivity();
    if ((SupportWalletFragment.b(akp) == null) && (SupportWalletFragment.c(akp)) && (localObject != null)) {}
    try
    {
      localObject = lt.a((Activity)localObject, SupportWalletFragment.d(akp), SupportWalletFragment.e(akp), SupportWalletFragment.f(akp));
      SupportWalletFragment.a(akp, new SupportWalletFragment.b((ll)localObject, null));
      SupportWalletFragment.a(akp, null);
      paramf.a(SupportWalletFragment.b(akp));
      if (SupportWalletFragment.g(akp) != null)
      {
        SupportWalletFragment.b.a(SupportWalletFragment.b(akp), SupportWalletFragment.g(akp));
        SupportWalletFragment.a(akp, null);
      }
      if (SupportWalletFragment.h(akp) != null)
      {
        SupportWalletFragment.b.a(SupportWalletFragment.b(akp), SupportWalletFragment.h(akp));
        SupportWalletFragment.a(akp, null);
      }
      if (SupportWalletFragment.i(akp) != null)
      {
        SupportWalletFragment.b.a(SupportWalletFragment.b(akp), SupportWalletFragment.i(akp));
        SupportWalletFragment.a(akp, null);
      }
      if (SupportWalletFragment.j(akp) != null)
      {
        SupportWalletFragment.b.a(SupportWalletFragment.b(akp), SupportWalletFragment.j(akp).booleanValue());
        SupportWalletFragment.a(akp, null);
      }
      return;
    }
    catch (GooglePlayServicesNotAvailableException paramf) {}
  }
  
  public void onClick(View paramView)
  {
    paramView = SupportWalletFragment.a(akp).getActivity();
    GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramView), paramView, -1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.SupportWalletFragment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */