package mobi.monaca.framework.nativeui.component;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;

public class SpinnerDialog
  extends Dialog
{
  private static final String TAG = SpinnerDialog.class.getSimpleName();
  private TextView mTitleView;
  
  public SpinnerDialog(UIContext paramUIContext, JSONArray paramJSONArray)
    throws SpinnerDialog.SpinnerDialogException
  {
    super(paramUIContext.getApplicationContext(), 16973834);
    getWindow().setType(2003);
    requestWindowFeature(1);
    int i;
    try
    {
      localObject3 = paramJSONArray.getString(0);
      i = paramJSONArray.optInt(1, 1);
      if (i < 1) {
        throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_frame) + i);
      }
    }
    catch (JSONException paramUIContext)
    {
      paramUIContext.printStackTrace();
      throw new SpinnerDialogException(paramUIContext.getMessage());
    }
    int k = paramJSONArray.optInt(2, 100);
    if (k < 50) {
      throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_interval) + k);
    }
    final Object localObject2 = paramJSONArray.optString(3, MonacaApplication.getStringFromResource(R.string.nc_default_black));
    Object localObject1 = localObject2;
    if (((String)localObject2).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_null))) {
      localObject1 = MonacaApplication.getStringFromResource(R.string.nc_default_black);
    }
    float f1 = (float)paramJSONArray.optDouble(4, 0.800000011920929D);
    if ((f1 < 0.0D) || (f1 > 1.0D)) {
      throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_bgopacity) + f1);
    }
    for (;;)
    {
      try
      {
        localObject2 = new ColorDrawable(Color.parseColor((String)localObject1));
        getWindow().setBackgroundDrawable((Drawable)localObject2);
        ((ColorDrawable)localObject2).setAlpha(UIUtil.buildOpacity(f1));
        if ((localObject3 == null) || (((String)localObject3).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_null))))
        {
          localObject1 = BitmapFactory.decodeStream(getContext().getResources().openRawResource(R.drawable.spinner));
          i = 12;
          localObject2 = new AnimationDrawable();
          f1 = ((Bitmap)localObject1).getHeight() / i;
          int j = 0;
          if (j >= i) {
            break label707;
          }
          int m = Math.round(j * f1);
          float f2 = f1;
          if (m + f1 > ((Bitmap)localObject1).getHeight()) {
            f2 = ((Bitmap)localObject1).getHeight() - m;
          }
          localObject3 = Bitmap.createBitmap((Bitmap)localObject1, 0, m, ((Bitmap)localObject1).getWidth(), Math.round(f2));
          ((AnimationDrawable)localObject2).addFrame(new BitmapDrawable(getContext().getResources(), (Bitmap)localObject3), k);
          j += 1;
          f1 = f2;
          continue;
        }
        if (((String)localObject3).toLowerCase(Locale.ENGLISH).endsWith(MonacaApplication.getStringFromResource(R.string.png))) {
          break label527;
        }
      }
      catch (IllegalArgumentException paramUIContext)
      {
        throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_bgcolor) + (String)localObject1);
      }
      throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_img) + (String)localObject3);
      label527:
      localObject2 = paramUIContext.resolve((String)localObject3);
      if (((String)localObject2).startsWith(MonacaApplication.getStringFromResource(R.string.asset_url)))
      {
        try
        {
          localObject1 = BitmapFactory.decodeStream(LocalFileBootloader.openAsset(paramUIContext, (String)localObject2));
        }
        catch (IOException paramUIContext)
        {
          throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_imgnotfound) + (String)localObject2);
        }
      }
      else
      {
        localObject1 = localObject2;
        if (((String)localObject2).startsWith(getContext().getResources().getString(R.string.file_scheme))) {
          localObject1 = ((String)localObject2).replace(getContext().getResources().getString(R.string.file_scheme), new String());
        }
        if (!new File((String)localObject1).exists()) {
          break;
        }
        localObject1 = BitmapFactory.decodeFile((String)localObject1);
      }
    }
    throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_imgnotfound) + (String)localObject1);
    label707:
    Object localObject3 = new LinearLayout(paramUIContext);
    ((LinearLayout)localObject3).setOrientation(1);
    ((LinearLayout)localObject3).setBackgroundColor(0);
    localObject1 = new LinearLayout.LayoutParams(((Bitmap)localObject1).getWidth(), Math.round(f1));
    gravity = 17;
    ImageView localImageView = new ImageView(paramUIContext);
    localImageView.setImageDrawable((Drawable)localObject2);
    localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    ((LinearLayout)localObject3).addView(localImageView, (ViewGroup.LayoutParams)localObject1);
    mTitleView = new TextView(getContext());
    f1 = (float)paramJSONArray.optDouble(7, 1.0D) * paramUIContext.getFontSizeFromDip(10);
    mTitleView.setTextSize(f1);
    localObject1 = paramJSONArray.optString(6, MonacaApplication.getStringFromResource(R.string.nc_default_white));
    paramUIContext = (UIContext)localObject1;
    if (((String)localObject1).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_null))) {
      paramUIContext = MonacaApplication.getStringFromResource(R.string.nc_default_white);
    }
    try
    {
      mTitleView.setTextColor(Color.parseColor(paramUIContext));
      paramUIContext = new LinearLayout.LayoutParams(-2, -2);
      gravity = 17;
      topMargin = ((int)(f1 * 1.5D));
      ((LinearLayout)localObject3).addView(mTitleView, paramUIContext);
      paramUIContext = paramJSONArray.optString(5);
      if ((paramUIContext != null) && (!TextUtils.isEmpty(paramUIContext)) && (!paramUIContext.equals(MonacaApplication.getStringFromResource(R.string.nc_null)))) {
        mTitleView.setText(paramUIContext);
      }
      paramUIContext = new FrameLayout.LayoutParams(-2, -2);
      gravity = 17;
      setContentView((View)localObject3, paramUIContext);
      localImageView.post(new Runnable()
      {
        public void run()
        {
          localObject2.setOneShot(false);
          localObject2.start();
        }
      });
      return;
    }
    catch (IllegalArgumentException paramJSONArray)
    {
      throw new SpinnerDialogException(MonacaApplication.getStringFromResource(R.string.exception_spinner_titlecolor) + paramUIContext);
    }
  }
  
  public void updateTitleText(String paramString)
  {
    mTitleView.setText(paramString);
  }
  
  public class SpinnerDialogException
    extends Exception
  {
    public SpinnerDialogException(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SpinnerDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */