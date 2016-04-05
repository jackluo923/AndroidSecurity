package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class WalletFragmentInitParams
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletFragmentInitParams> CREATOR = new a();
  private MaskedWalletRequest akj;
  private MaskedWallet akk;
  private int akx;
  final int xJ;
  private String yN;
  
  private WalletFragmentInitParams()
  {
    xJ = 1;
    akx = -1;
  }
  
  WalletFragmentInitParams(int paramInt1, String paramString, MaskedWalletRequest paramMaskedWalletRequest, int paramInt2, MaskedWallet paramMaskedWallet)
  {
    xJ = paramInt1;
    yN = paramString;
    akj = paramMaskedWalletRequest;
    akx = paramInt2;
    akk = paramMaskedWallet;
  }
  
  public static WalletFragmentInitParams.Builder newBuilder()
  {
    WalletFragmentInitParams localWalletFragmentInitParams = new WalletFragmentInitParams();
    localWalletFragmentInitParams.getClass();
    return new WalletFragmentInitParams.Builder(localWalletFragmentInitParams, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getAccountName()
  {
    return yN;
  }
  
  public final MaskedWallet getMaskedWallet()
  {
    return akk;
  }
  
  public final MaskedWalletRequest getMaskedWalletRequest()
  {
    return akj;
  }
  
  public final int getMaskedWalletRequestCode()
  {
    return akx;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentInitParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */