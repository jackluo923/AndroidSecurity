package com.google.android.gms.wallet;

import android.text.TextUtils;
import com.google.android.gms.internal.hn;

public final class NotifyTransactionStatusRequest$Builder
{
  private NotifyTransactionStatusRequest$Builder(NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest) {}
  
  public final NotifyTransactionStatusRequest build()
  {
    boolean bool2 = true;
    if (!TextUtils.isEmpty(ajP.aiN))
    {
      bool1 = true;
      hn.b(bool1, "googleTransactionId is required");
      if ((ajP.status <= 0) || (ajP.status > 8)) {
        break label63;
      }
    }
    label63:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.b(bool1, "status is an unrecognized value");
      return ajP;
      bool1 = false;
      break;
    }
  }
  
  public final Builder setDetailedReason(String paramString)
  {
    ajP.ajO = paramString;
    return this;
  }
  
  public final Builder setGoogleTransactionId(String paramString)
  {
    ajP.aiN = paramString;
    return this;
  }
  
  public final Builder setStatus(int paramInt)
  {
    ajP.status = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.NotifyTransactionStatusRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */