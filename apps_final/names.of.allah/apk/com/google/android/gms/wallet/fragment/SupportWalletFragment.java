package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class SupportWalletFragment
  extends Fragment
{
  private final Fragment FS = this;
  private SupportWalletFragment.b akd;
  private final h ake = h.a(this);
  private final SupportWalletFragment.c akf = new SupportWalletFragment.c(this, null);
  private SupportWalletFragment.a akg = new SupportWalletFragment.a(this);
  private WalletFragmentOptions akh;
  private WalletFragmentInitParams aki;
  private MaskedWalletRequest akj;
  private MaskedWallet akk;
  private Boolean akl;
  private boolean mCreated = false;
  
  public static SupportWalletFragment newInstance(WalletFragmentOptions paramWalletFragmentOptions)
  {
    SupportWalletFragment localSupportWalletFragment = new SupportWalletFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extraWalletFragmentOptions", paramWalletFragmentOptions);
    FS.setArguments(localBundle);
    return localSupportWalletFragment;
  }
  
  public final int getState()
  {
    if (akd != null) {
      return SupportWalletFragment.b.a(akd);
    }
    return 0;
  }
  
  public final void initialize(WalletFragmentInitParams paramWalletFragmentInitParams)
  {
    if (akd != null)
    {
      SupportWalletFragment.b.a(akd, paramWalletFragmentInitParams);
      aki = null;
    }
    do
    {
      return;
      if (aki != null) {
        break;
      }
      aki = paramWalletFragmentInitParams;
      if (akj != null) {
        Log.w("SupportWalletFragment", "updateMaskedWalletRequest() was called before initialize()");
      }
    } while (akk == null);
    Log.w("SupportWalletFragment", "updateMaskedWallet() was called before initialize()");
    return;
    Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (akd != null) {
      SupportWalletFragment.b.a(akd, paramInt1, paramInt2, paramIntent);
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject;
    if (paramBundle != null)
    {
      paramBundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
      localObject = (WalletFragmentInitParams)paramBundle.getParcelable("walletFragmentInitParams");
      if (localObject != null)
      {
        if (aki != null) {
          Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
        }
        aki = ((WalletFragmentInitParams)localObject);
      }
      if (akj == null) {
        akj = ((MaskedWalletRequest)paramBundle.getParcelable("maskedWalletRequest"));
      }
      if (akk == null) {
        akk = ((MaskedWallet)paramBundle.getParcelable("maskedWallet"));
      }
      if (paramBundle.containsKey("walletFragmentOptions")) {
        akh = ((WalletFragmentOptions)paramBundle.getParcelable("walletFragmentOptions"));
      }
      if (paramBundle.containsKey("enabled")) {
        akl = Boolean.valueOf(paramBundle.getBoolean("enabled"));
      }
    }
    for (;;)
    {
      mCreated = true;
      akf.onCreate(paramBundle);
      return;
      if (FS.getArguments() != null)
      {
        localObject = (WalletFragmentOptions)FS.getArguments().getParcelable("extraWalletFragmentOptions");
        if (localObject != null)
        {
          ((WalletFragmentOptions)localObject).N(FS.getActivity());
          akh = ((WalletFragmentOptions)localObject);
        }
      }
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return akf.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    mCreated = false;
  }
  
  public final void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    if (akh == null) {
      akh = WalletFragmentOptions.a(paramActivity, paramAttributeSet);
    }
    paramAttributeSet = new Bundle();
    paramAttributeSet.putParcelable("attrKeyWalletFragmentOptions", akh);
    akf.onInflate(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public final void onPause()
  {
    super.onPause();
    akf.onPause();
  }
  
  public final void onResume()
  {
    super.onResume();
    akf.onResume();
    FragmentManager localFragmentManager = FS.getActivity().getSupportFragmentManager();
    Fragment localFragment = localFragmentManager.findFragmentByTag("GooglePlayServicesErrorDialog");
    if (localFragment != null)
    {
      localFragmentManager.beginTransaction().remove(localFragment).commit();
      GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(FS.getActivity()), FS.getActivity(), -1);
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
    akf.onSaveInstanceState(paramBundle);
    if (aki != null)
    {
      paramBundle.putParcelable("walletFragmentInitParams", aki);
      aki = null;
    }
    if (akj != null)
    {
      paramBundle.putParcelable("maskedWalletRequest", akj);
      akj = null;
    }
    if (akk != null)
    {
      paramBundle.putParcelable("maskedWallet", akk);
      akk = null;
    }
    if (akh != null)
    {
      paramBundle.putParcelable("walletFragmentOptions", akh);
      akh = null;
    }
    if (akl != null)
    {
      paramBundle.putBoolean("enabled", akl.booleanValue());
      akl = null;
    }
  }
  
  public final void onStart()
  {
    super.onStart();
    akf.onStart();
  }
  
  public final void onStop()
  {
    super.onStop();
    akf.onStop();
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    if (akd != null)
    {
      SupportWalletFragment.b.a(akd, paramBoolean);
      akl = null;
      return;
    }
    akl = Boolean.valueOf(paramBoolean);
  }
  
  public final void setOnStateChangedListener(SupportWalletFragment.OnStateChangedListener paramOnStateChangedListener)
  {
    akg.a(paramOnStateChangedListener);
  }
  
  public final void updateMaskedWallet(MaskedWallet paramMaskedWallet)
  {
    if (akd != null)
    {
      SupportWalletFragment.b.a(akd, paramMaskedWallet);
      akk = null;
      return;
    }
    akk = paramMaskedWallet;
  }
  
  public final void updateMaskedWalletRequest(MaskedWalletRequest paramMaskedWalletRequest)
  {
    if (akd != null)
    {
      SupportWalletFragment.b.a(akd, paramMaskedWalletRequest);
      akj = null;
      return;
    }
    akj = paramMaskedWalletRequest;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.SupportWalletFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */