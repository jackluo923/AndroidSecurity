package com.google.zxing.client.android.result;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ProductParsedResult;

public final class ProductResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public ProductResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
    buttons = new int[] { fakeR.getId("string", "button_product_search"), fakeR.getId("string", "button_web_search"), fakeR.getId("string", "button_custom_product_search") };
    showGoogleShopperButton(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = (ProductParsedResult)getResult();
        openGoogleShopper(paramAnonymousView.getNormalizedProductID());
      }
    });
  }
  
  public int getButtonCount()
  {
    if (hasCustomProductSearch()) {
      return buttons.length;
    }
    return buttons.length - 1;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_product");
  }
  
  public void handleButtonPress(int paramInt)
  {
    ProductParsedResult localProductParsedResult = (ProductParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openProductSearch(localProductParsedResult.getNormalizedProductID());
      return;
    case 1: 
      webSearch(localProductParsedResult.getNormalizedProductID());
      return;
    }
    openURL(fillInCustomSearchURL(localProductParsedResult.getNormalizedProductID()));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ProductResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */