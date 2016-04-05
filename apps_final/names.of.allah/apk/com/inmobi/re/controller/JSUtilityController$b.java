package com.inmobi.re.controller;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.ImageProcessing;
import com.inmobi.re.controller.util.StartActivityForResultCallback;

class JSUtilityController$b
  implements StartActivityForResultCallback
{
  JSUtilityController$b(JSUtilityController paramJSUtilityController, Uri paramUri) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1)
    {
      if (paramIntent == null) {}
      for (paramIntent = ImageProcessing.convertMediaUriToPath(a, b.mContext);; paramIntent = ImageProcessing.convertMediaUriToPath(paramIntent.getData(), b.mContext))
      {
        paramIntent = ImageProcessing.getCompressedBitmap(paramIntent, b.mContext);
        paramInt = paramIntent.getWidth();
        int i = paramIntent.getHeight();
        paramIntent = ImageProcessing.getBase64EncodedImage(paramIntent, b.mContext);
        b.imWebView.raiseCameraPictureCapturedEvent(paramIntent, paramInt, i);
        return;
      }
    }
    b.imWebView.raiseError("User did not take a picture", "takeCameraPicture");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSUtilityController.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */