package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

class InterstitialAd
  extends CachedAd
  implements Parcelable, Externalizable
{
  public static final Parcelable.Creator<InterstitialAd> CREATOR = new InterstitialAd.1();
  static final String EXTRA_AD_URL = "EXTRA_AD_URL";
  static final String EXTRA_CONTENT = "EXTRA_CONTENT";
  static final long serialVersionUID = 5158660334173309853L;
  String adUrl;
  String content;
  HttpMMHeaders mmHeaders;
  
  public InterstitialAd() {}
  
  InterstitialAd(Parcel paramParcel)
  {
    super(paramParcel);
    try
    {
      content = paramParcel.readString();
      adUrl = paramParcel.readString();
      mmHeaders = ((HttpMMHeaders)paramParcel.readParcelable(HttpMMHeaders.class.getClassLoader()));
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  private Intent getExpandExtrasIntent(Context paramContext, long paramLong)
  {
    paramContext = new Intent();
    OverlaySettings localOverlaySettings = new OverlaySettings();
    creatorAdImplId = paramLong;
    content = content;
    adUrl = adUrl;
    localOverlaySettings.setWebMMHeaders(mmHeaders);
    isFromInterstitial = true;
    paramContext.putExtra("settings", localOverlaySettings);
    paramContext.putExtra("internalId", paramLong);
    return paramContext;
  }
  
  boolean canShow(Context paramContext, MMAdImpl paramMMAdImpl, boolean paramBoolean)
  {
    if (paramBoolean) {
      if ((content == null) || (content.length() <= 0) || (adUrl == null) || (adUrl.length() <= 0) || (!HandShake.sharedHandShake(paramContext).canDisplayCachedAd(adType, deferredViewStart))) {}
    }
    while ((content != null) && (content.length() > 0) && (adUrl != null) && (adUrl.length() > 0))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  boolean download(Context paramContext)
  {
    return true;
  }
  
  int getType()
  {
    return 2;
  }
  
  String getTypeString()
  {
    return "Interstitial";
  }
  
  boolean isOnDisk(Context paramContext)
  {
    return true;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    super.readExternal(paramObjectInput);
    content = ((String)paramObjectInput.readObject());
    adUrl = ((String)paramObjectInput.readObject());
    mmHeaders = ((HttpMMHeaders)paramObjectInput.readObject());
  }
  
  boolean saveAssets(Context paramContext)
  {
    return true;
  }
  
  void show(Context paramContext, long paramLong)
  {
    Utils.IntentUtils.startAdViewOverlayActivity(paramContext, getExpandExtrasIntent(paramContext, paramLong));
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    super.writeExternal(paramObjectOutput);
    paramObjectOutput.writeObject(content);
    paramObjectOutput.writeObject(adUrl);
    paramObjectOutput.writeObject(mmHeaders);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(content);
    paramParcel.writeString(adUrl);
    paramParcel.writeParcelable(mmHeaders, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */