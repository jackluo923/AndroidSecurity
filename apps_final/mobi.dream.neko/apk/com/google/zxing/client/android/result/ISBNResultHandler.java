package com.google.zxing.client.android.result;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import com.google.zxing.client.result.ISBNParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class ISBNResultHandler
  extends ResultHandler
{
  private static int[] buttons;
  
  public ISBNResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
    buttons = new int[] { fakeR.getId("string", "button_product_search"), fakeR.getId("string", "button_book_search"), fakeR.getId("string", "button_search_book_contents"), fakeR.getId("string", "button_custom_product_search") };
    showGoogleShopperButton(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = (ISBNParsedResult)getResult();
        openGoogleShopper(paramAnonymousView.getISBN());
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
    return fakeR.getId("string", "result_isbn");
  }
  
  public void handleButtonPress(int paramInt)
  {
    ISBNParsedResult localISBNParsedResult = (ISBNParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openProductSearch(localISBNParsedResult.getISBN());
      return;
    case 1: 
      openBookSearch(localISBNParsedResult.getISBN());
      return;
    case 2: 
      searchBookContents(localISBNParsedResult.getISBN());
      return;
    }
    openURL(fillInCustomSearchURL(localISBNParsedResult.getISBN()));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ISBNResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */