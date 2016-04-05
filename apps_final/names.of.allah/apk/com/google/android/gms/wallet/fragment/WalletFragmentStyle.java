package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.R.style;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class WalletFragmentStyle
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletFragmentStyle> CREATOR = new c();
  Bundle akB;
  int akC;
  final int xJ;
  
  public WalletFragmentStyle()
  {
    xJ = 1;
    akB = new Bundle();
  }
  
  WalletFragmentStyle(int paramInt1, Bundle paramBundle, int paramInt2)
  {
    xJ = paramInt1;
    akB = paramBundle;
    akC = paramInt2;
  }
  
  private void a(TypedArray paramTypedArray, int paramInt, String paramString)
  {
    if (akB.containsKey(paramString)) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    akB.putLong(paramString, Dimension.a(paramTypedArray));
  }
  
  private void a(TypedArray paramTypedArray, int paramInt, String paramString1, String paramString2)
  {
    if ((akB.containsKey(paramString1)) || (akB.containsKey(paramString2))) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    if ((type >= 28) && (type <= 31))
    {
      akB.putInt(paramString1, data);
      return;
    }
    akB.putInt(paramString2, resourceId);
  }
  
  private void b(TypedArray paramTypedArray, int paramInt, String paramString)
  {
    if (akB.containsKey(paramString)) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    akB.putInt(paramString, data);
  }
  
  public final void N(Context paramContext)
  {
    if (akC <= 0) {}
    for (int i = R.style.WalletFragmentDefaultStyle;; i = akC)
    {
      paramContext = paramContext.obtainStyledAttributes(i, R.styleable.WalletFragmentStyle);
      a(paramContext, 1, "buyButtonWidth");
      a(paramContext, 0, "buyButtonHeight");
      b(paramContext, 2, "buyButtonText");
      b(paramContext, 3, "buyButtonAppearance");
      b(paramContext, 4, "maskedWalletDetailsTextAppearance");
      b(paramContext, 5, "maskedWalletDetailsHeaderTextAppearance");
      a(paramContext, 6, "maskedWalletDetailsBackgroundColor", "maskedWalletDetailsBackgroundResource");
      b(paramContext, 7, "maskedWalletDetailsButtonTextAppearance");
      a(paramContext, 8, "maskedWalletDetailsButtonBackgroundColor", "maskedWalletDetailsButtonBackgroundResource");
      b(paramContext, 9, "maskedWalletDetailsLogoTextColor");
      b(paramContext, 10, "maskedWalletDetailsLogoImageType");
      paramContext.recycle();
      return;
    }
  }
  
  public final int a(String paramString, DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    if (akB.containsKey(paramString)) {
      paramInt = Dimension.a(akB.getLong(paramString), paramDisplayMetrics);
    }
    return paramInt;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final WalletFragmentStyle setBuyButtonAppearance(int paramInt)
  {
    akB.putInt("buyButtonAppearance", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setBuyButtonHeight(int paramInt)
  {
    akB.putLong("buyButtonHeight", Dimension.dM(paramInt));
    return this;
  }
  
  public final WalletFragmentStyle setBuyButtonHeight(int paramInt, float paramFloat)
  {
    akB.putLong("buyButtonHeight", Dimension.a(paramInt, paramFloat));
    return this;
  }
  
  public final WalletFragmentStyle setBuyButtonText(int paramInt)
  {
    akB.putInt("buyButtonText", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setBuyButtonWidth(int paramInt)
  {
    akB.putLong("buyButtonWidth", Dimension.dM(paramInt));
    return this;
  }
  
  public final WalletFragmentStyle setBuyButtonWidth(int paramInt, float paramFloat)
  {
    akB.putLong("buyButtonWidth", Dimension.a(paramInt, paramFloat));
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsBackgroundColor(int paramInt)
  {
    akB.remove("maskedWalletDetailsBackgroundResource");
    akB.putInt("maskedWalletDetailsBackgroundColor", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsBackgroundResource(int paramInt)
  {
    akB.remove("maskedWalletDetailsBackgroundColor");
    akB.putInt("maskedWalletDetailsBackgroundResource", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundColor(int paramInt)
  {
    akB.remove("maskedWalletDetailsButtonBackgroundResource");
    akB.putInt("maskedWalletDetailsButtonBackgroundColor", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsButtonBackgroundResource(int paramInt)
  {
    akB.remove("maskedWalletDetailsButtonBackgroundColor");
    akB.putInt("maskedWalletDetailsButtonBackgroundResource", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsButtonTextAppearance(int paramInt)
  {
    akB.putInt("maskedWalletDetailsButtonTextAppearance", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsHeaderTextAppearance(int paramInt)
  {
    akB.putInt("maskedWalletDetailsHeaderTextAppearance", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsLogoImageType(int paramInt)
  {
    akB.putInt("maskedWalletDetailsLogoImageType", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsLogoTextColor(int paramInt)
  {
    akB.putInt("maskedWalletDetailsLogoTextColor", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setMaskedWalletDetailsTextAppearance(int paramInt)
  {
    akB.putInt("maskedWalletDetailsTextAppearance", paramInt);
    return this;
  }
  
  public final WalletFragmentStyle setStyleResourceId(int paramInt)
  {
    akC = paramInt;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */