package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class WalletFragment
  extends Fragment
{
  private final Fragment Mg = this;
  private WalletFragmentOptions akh;
  private WalletFragmentInitParams aki;
  private MaskedWalletRequest akj;
  private MaskedWallet akk;
  private Boolean akl;
  private WalletFragment.b akq;
  private final b akr = b.a(this);
  private final WalletFragment.c aks = new WalletFragment.c(this, null);
  private WalletFragment.a akt = new WalletFragment.a(this);
  private boolean mCreated = false;
  
  public static WalletFragment newInstance(WalletFragmentOptions paramWalletFragmentOptions)
  {
    WalletFragment localWalletFragment = new WalletFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extraWalletFragmentOptions", paramWalletFragmentOptions);
    Mg.setArguments(localBundle);
    return localWalletFragment;
  }
  
  public final int getState()
  {
    if (akq != null) {
      return WalletFragment.b.a(akq);
    }
    return 0;
  }
  
  public final void initialize(WalletFragmentInitParams paramWalletFragmentInitParams)
  {
    if (akq != null)
    {
      WalletFragment.b.a(akq, paramWalletFragmentInitParams);
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
        Log.w("WalletFragment", "updateMaskedWalletRequest() was called before initialize()");
      }
    } while (akk == null);
    Log.w("WalletFragment", "updateMaskedWallet() was called before initialize()");
    return;
    Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (akq != null) {
      WalletFragment.b.a(akq, paramInt1, paramInt2, paramIntent);
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
          Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
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
      aks.onCreate(paramBundle);
      return;
      if (Mg.getArguments() != null)
      {
        localObject = (WalletFragmentOptions)Mg.getArguments().getParcelable("extraWalletFragmentOptions");
        if (localObject != null)
        {
          ((WalletFragmentOptions)localObject).N(Mg.getActivity());
          akh = ((WalletFragmentOptions)localObject);
        }
      }
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return aks.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
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
    aks.onInflate(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public final void onPause()
  {
    super.onPause();
    aks.onPause();
  }
  
  public final void onResume()
  {
    super.onResume();
    aks.onResume();
    FragmentManager localFragmentManager = Mg.getActivity().getFragmentManager();
    Fragment localFragment = localFragmentManager.findFragmentByTag("GooglePlayServicesErrorDialog");
    if (localFragment != null)
    {
      localFragmentManager.beginTransaction().remove(localFragment).commit();
      GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(Mg.getActivity()), Mg.getActivity(), -1);
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
    aks.onSaveInstanceState(paramBundle);
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
    aks.onStart();
  }
  
  public final void onStop()
  {
    super.onStop();
    aks.onStop();
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    if (akq != null)
    {
      WalletFragment.b.a(akq, paramBoolean);
      akl = null;
      return;
    }
    akl = Boolean.valueOf(paramBoolean);
  }
  
  public final void setOnStateChangedListener(WalletFragment.OnStateChangedListener paramOnStateChangedListener)
  {
    akt.a(paramOnStateChangedListener);
  }
  
  public final void updateMaskedWallet(MaskedWallet paramMaskedWallet)
  {
    if (akq != null)
    {
      WalletFragment.b.a(akq, paramMaskedWallet);
      akk = null;
      return;
    }
    akk = paramMaskedWallet;
  }
  
  public final void updateMaskedWalletRequest(MaskedWalletRequest paramMaskedWalletRequest)
  {
    if (akq != null)
    {
      WalletFragment.b.a(akq, paramMaskedWalletRequest);
      akj = null;
      return;
    }
    akj = paramMaskedWalletRequest;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */