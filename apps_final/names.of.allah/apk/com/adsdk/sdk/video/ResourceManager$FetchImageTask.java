package com.adsdk.sdk.video;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.adsdk.sdk.Log;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;

class ResourceManager$FetchImageTask
  extends AsyncTask<Void, Void, Boolean>
{
  Context mContext;
  int mResourceId;
  String mUrl;
  
  public ResourceManager$FetchImageTask(ResourceManager paramResourceManager, Context paramContext, String paramString, int paramInt)
  {
    mContext = paramContext;
    mUrl = paramString;
    mResourceId = paramInt;
    Log.i("Fetching: " + mUrl);
  }
  
  private Drawable fetchImage(String paramString)
  {
    label132:
    for (;;)
    {
      try
      {
        Object localObject = BitmapFactory.decodeStream((InputStream)new URL(paramString).getContent());
        if (localObject != null)
        {
          DisplayMetrics localDisplayMetrics = mContext.getResources().getDisplayMetrics();
          int i = ((Bitmap)localObject).getWidth();
          int j = ((Bitmap)localObject).getHeight();
          int k = (int)TypedValue.applyDimension(1, i, localDisplayMetrics);
          int m = (int)TypedValue.applyDimension(1, j, localDisplayMetrics);
          if ((k == i) && (m == j)) {
            break label132;
          }
          localObject = Bitmap.createScaledBitmap((Bitmap)localObject, k, m, false);
          localObject = new BitmapDrawable(mContext.getResources(), (Bitmap)localObject);
          return (Drawable)localObject;
        }
      }
      catch (Exception localException)
      {
        Log.e("Cannot fetch image:" + paramString, localException);
      }
      return null;
    }
  }
  
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    Object localObject = null;
    paramVarArgs = (Void[])localObject;
    if (mUrl != null)
    {
      paramVarArgs = (Void[])localObject;
      if (mUrl.length() > 0) {
        paramVarArgs = fetchImage(mUrl);
      }
    }
    if (paramVarArgs != null)
    {
      ResourceManager.access$1(this$0).put(Integer.valueOf(mResourceId), paramVarArgs);
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    Log.i("Fetched: " + mUrl);
    paramBoolean = ResourceManager.access$0(this$0).obtainMessage(100, mResourceId, 0);
    ResourceManager.access$0(this$0).sendMessage(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.ResourceManager.FetchImageTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */