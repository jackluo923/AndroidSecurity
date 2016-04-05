package com.google.zxing.client.android.result;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.client.result.ProductParsedResult;

class ProductResultHandler$1
  implements View.OnClickListener
{
  ProductResultHandler$1(ProductResultHandler paramProductResultHandler) {}
  
  public void onClick(View paramView)
  {
    paramView = (ProductParsedResult)this$0.getResult();
    this$0.openGoogleShopper(paramView.getNormalizedProductID());
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ProductResultHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */