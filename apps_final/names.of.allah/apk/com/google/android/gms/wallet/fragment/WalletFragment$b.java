package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.ll;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

class WalletFragment$b
  implements LifecycleDelegate
{
  private final ll ako;
  
  private WalletFragment$b(ll paramll)
  {
    ako = paramll;
  }
  
  private int getState()
  {
    try
    {
      int i = ako.getState();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  private void initialize(WalletFragmentInitParams paramWalletFragmentInitParams)
  {
    try
    {
      ako.initialize(paramWalletFragmentInitParams);
      return;
    }
    catch (RemoteException paramWalletFragmentInitParams)
    {
      throw new RuntimeException(paramWalletFragmentInitParams);
    }
  }
  
  private void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      ako.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException paramIntent)
    {
      throw new RuntimeException(paramIntent);
    }
  }
  
  private void setEnabled(boolean paramBoolean)
  {
    try
    {
      ako.setEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  private void updateMaskedWallet(MaskedWallet paramMaskedWallet)
  {
    try
    {
      ako.updateMaskedWallet(paramMaskedWallet);
      return;
    }
    catch (RemoteException paramMaskedWallet)
    {
      throw new RuntimeException(paramMaskedWallet);
    }
  }
  
  private void updateMaskedWalletRequest(MaskedWalletRequest paramMaskedWalletRequest)
  {
    try
    {
      ako.updateMaskedWalletRequest(paramMaskedWalletRequest);
      return;
    }
    catch (RemoteException paramMaskedWalletRequest)
    {
      throw new RuntimeException(paramMaskedWalletRequest);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      ako.onCreate(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = (View)e.e(ako.onCreateView(e.h(paramLayoutInflater), e.h(paramViewGroup), paramBundle));
      return paramLayoutInflater;
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeException(paramLayoutInflater);
    }
  }
  
  public void onDestroy() {}
  
  public void onDestroyView() {}
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (WalletFragmentOptions)paramBundle1.getParcelable("extraWalletFragmentOptions");
    try
    {
      ako.a(e.h(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
  }
  
  public void onLowMemory() {}
  
  public void onPause()
  {
    try
    {
      ako.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void onResume()
  {
    try
    {
      ako.onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      ako.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeException(paramBundle);
    }
  }
  
  public void onStart()
  {
    try
    {
      ako.onStart();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void onStop()
  {
    try
    {
      ako.onStop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */