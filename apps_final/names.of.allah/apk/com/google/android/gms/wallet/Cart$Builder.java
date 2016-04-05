package com.google.android.gms.wallet;

import java.util.ArrayList;
import java.util.List;

public final class Cart$Builder
{
  private Cart$Builder(Cart paramCart) {}
  
  public final Builder addLineItem(LineItem paramLineItem)
  {
    aiK.aiJ.add(paramLineItem);
    return this;
  }
  
  public final Cart build()
  {
    return aiK;
  }
  
  public final Builder setCurrencyCode(String paramString)
  {
    aiK.aiI = paramString;
    return this;
  }
  
  public final Builder setLineItems(List<LineItem> paramList)
  {
    aiK.aiJ.clear();
    aiK.aiJ.addAll(paramList);
    return this;
  }
  
  public final Builder setTotalPrice(String paramString)
  {
    aiK.aiH = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Cart.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */