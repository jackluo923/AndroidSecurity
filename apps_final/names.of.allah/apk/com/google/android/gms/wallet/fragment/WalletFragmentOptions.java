package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class WalletFragmentOptions
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletFragmentOptions> CREATOR = new b();
  private int Hv;
  private int ajY;
  private WalletFragmentStyle akz;
  private int mTheme;
  final int xJ;
  
  private WalletFragmentOptions()
  {
    xJ = 1;
  }
  
  WalletFragmentOptions(int paramInt1, int paramInt2, int paramInt3, WalletFragmentStyle paramWalletFragmentStyle, int paramInt4)
  {
    xJ = paramInt1;
    ajY = paramInt2;
    mTheme = paramInt3;
    akz = paramWalletFragmentStyle;
    Hv = paramInt4;
  }
  
  public static WalletFragmentOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.WalletFragmentOptions);
    int i = paramAttributeSet.getInt(0, 0);
    int j = paramAttributeSet.getInt(1, 1);
    int k = paramAttributeSet.getResourceId(2, 0);
    int m = paramAttributeSet.getInt(3, 1);
    paramAttributeSet.recycle();
    paramAttributeSet = new WalletFragmentOptions();
    mTheme = i;
    ajY = j;
    akz = new WalletFragmentStyle().setStyleResourceId(k);
    akz.N(paramContext);
    Hv = m;
    return paramAttributeSet;
  }
  
  public static WalletFragmentOptions.Builder newBuilder()
  {
    WalletFragmentOptions localWalletFragmentOptions = new WalletFragmentOptions();
    localWalletFragmentOptions.getClass();
    return new WalletFragmentOptions.Builder(localWalletFragmentOptions, null);
  }
  
  public final void N(Context paramContext)
  {
    if (akz != null) {
      akz.N(paramContext);
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getEnvironment()
  {
    return ajY;
  }
  
  public final WalletFragmentStyle getFragmentStyle()
  {
    return akz;
  }
  
  public final int getMode()
  {
    return Hv;
  }
  
  public final int getTheme()
  {
    return mTheme;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */