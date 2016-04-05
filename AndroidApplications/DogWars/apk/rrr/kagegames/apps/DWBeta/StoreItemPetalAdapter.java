package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.List;

public class StoreItemPetalAdapter
  extends BaseAdapter
{
  private Activity mActivity;
  int mGalleryItemBackground;
  private ImageView[] mImages;
  
  public StoreItemPetalAdapter(Activity paramActivity)
  {
    mActivity = paramActivity;
  }
  
  public boolean createReflectedImages(int paramInt1, int paramInt2)
  {
    Object localObject11 = DWApplication.getInstance();
    localObject11 = ((DWApplication)localObject11).getDWGameState();
    localObject11 = ((DWGameState)localObject11).getStoreItemObjectList();
    Object localObject22;
    Object localObject24;
    if (localObject11 == null)
    {
      localObject11 = DWApplication.getInstance();
      localObject11 = ((DWApplication)localObject11).getServerRequestsMgr();
      localObject1 = this;
      localObject1 = mActivity;
      Object localObject19 = localObject1;
      localObject22 = "GET_STORE_ITEMS";
      String str = null;
      localObject24 = null;
      boolean bool1 = ((ServerRequestsMgr)localObject11).SendDWCommand((Activity)localObject19, (String)localObject22, str, (String)localObject24);
      if (!bool1)
      {
        bool1 = false;
        return bool1;
      }
    }
    Object localObject12 = DWApplication.getInstance();
    localObject12 = ((DWApplication)localObject12).getDWGameState();
    localObject12 = ((DWGameState)localObject12).getStoreItemObjectList();
    int j = ((List)localObject12).size();
    Object localObject13 = new ImageView[j];
    Object localObject1 = localObject13;
    Object localObject6 = this;
    mImages = ((ImageView[])localObject1);
    int i27 = 4;
    int i22 = 0;
    BitmapFactory.Options localOptions = new android/graphics/BitmapFactory$Options;
    localOptions.<init>();
    localObject1 = this;
    localObject1 = mActivity;
    localObject13 = localObject1;
    localObject13 = ((Activity)localObject13).getResources();
    int i4 = 2130837552;
    Bitmap localBitmap3 = BitmapFactory.decodeResource((Resources)localObject13, i4);
    int i = 0;
    int i18 = 0;
    int i28 = 0;
    int i17 = 0;
    int i19 = 0;
    boolean bool2 = false;
    int i20 = 0;
    int i21 = 0;
    for (;;)
    {
      localObject1 = this;
      localObject1 = mImages;
      localObject13 = localObject1;
      int k = localObject13.length;
      localObject1 = i21;
      localObject6 = k;
      if (localObject1 >= localObject6)
      {
        i = 0;
        i18 = 0;
        i28 = 0;
        i17 = 0;
        i19 = 0;
        bool2 = false;
        i20 = 0;
        k = 1;
        break;
      }
      localObject1 = this;
      localObject1 = mActivity;
      Object localObject14 = localObject1;
      localObject14 = ((Activity)localObject14).getResources();
      Object localObject20 = DWApplication.getInstance();
      localObject20 = ((DWApplication)localObject20).getDWGameState();
      localObject20 = ((DWGameState)localObject20).getStoreItemObjectList();
      localObject1 = localObject20;
      localObject6 = i21;
      paramInt1 = ((List)localObject1).get(localObject6);
      paramInt1 = (StoreItemObject)paramInt1;
      int i5 = paramInt1.getPetalResourceID();
      localObject1 = localObject14;
      localObject6 = i5;
      Object localObject7 = localOptions;
      Object localObject10 = BitmapFactory.decodeResource((Resources)localObject1, localObject6, (BitmapFactory.Options)localObject7);
      int m = localBitmap3.getWidth();
      i5 = localBitmap3.getHeight();
      localObject22 = localBitmap3.getConfig();
      Bitmap localBitmap2 = Bitmap.createBitmap(m, i5, (Bitmap.Config)localObject22);
      Canvas localCanvas3 = new android/graphics/Canvas;
      localObject1 = localCanvas3;
      localObject6 = localBitmap2;
      ((Canvas)localObject1).<init>((Bitmap)localObject6);
      Matrix localMatrix = new android/graphics/Matrix;
      localMatrix.<init>();
      Object localObject21 = null;
      localObject1 = localCanvas3;
      localObject6 = localBitmap3;
      localObject7 = localMatrix;
      Object localObject8 = localObject21;
      ((Canvas)localObject1).drawBitmap((Bitmap)localObject6, (Matrix)localObject7, (Paint)localObject8);
      int n = localBitmap3.getWidth();
      int i6 = ((Bitmap)localObject10).getWidth();
      n -= i6;
      n /= 2;
      float f7 = n;
      i6 = localBitmap3.getHeight();
      int i12 = ((Bitmap)localObject10).getHeight();
      i6 -= i12;
      i6 /= 2;
      float f12 = i6;
      Object localObject23 = null;
      localObject1 = localCanvas3;
      localObject6 = localObject10;
      float f5 = f7;
      float f6 = f12;
      Object localObject9 = localObject23;
      ((Canvas)localObject1).drawBitmap((Bitmap)localObject6, f5, f6, (Paint)localObject9);
      localObject10 = localBitmap2;
      float f18 = ((Bitmap)localObject10).getWidth();
      Object localObject26 = ((Bitmap)localObject10).getHeight();
      localObject24 = new android/graphics/Matrix;
      ((Matrix)localObject24).<init>();
      f7 = 1.0F;
      f12 = -0.5F;
      ((Matrix)localObject24).preScale(f7, f12);
      int i1 = 0;
      int i7 = localObject26 / 3;
      int i14 = localObject26 * 2;
      i14 /= 3;
      bool2 = false;
      Bitmap localBitmap4 = Bitmap.createBitmap((Bitmap)localObject10, i1, i7, f18, i14, (Matrix)localObject24, bool2);
      i1 = localObject26 / 3;
      i1 += localObject26;
      Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
      Bitmap localBitmap1 = Bitmap.createBitmap(f18, i1, localConfig);
      Canvas localCanvas1 = new android/graphics/Canvas;
      localObject1 = localCanvas1;
      localObject6 = localBitmap1;
      ((Canvas)localObject1).<init>((Bitmap)localObject6);
      float f8 = 0.0F;
      float f13 = 0.0F;
      Paint localPaint1 = null;
      localCanvas1.drawBitmap((Bitmap)localObject10, f8, f13, localPaint1);
      Paint localPaint2 = new android/graphics/Paint;
      localPaint2.<init>();
      float f20 = 0.0F;
      localObject1 = localObject26;
      float f1 = localObject1;
      float f21 = f1;
      float f22 = f18;
      int i2 = localObject26 + 4;
      float f23 = i2;
      localCanvas1.drawRect(f20, f21, f22, f23, localPaint2);
      float f9 = 0.0F;
      int i8 = localObject26 + 4;
      float f14 = i8;
      localPaint1 = null;
      Object localObject2 = localCanvas1;
      localObject6 = localBitmap4;
      f5 = f9;
      f6 = f14;
      localObject9 = localPaint1;
      ((Canvas)localObject2).drawBitmap((Bitmap)localObject6, f5, f6, (Paint)localObject9);
      Paint localPaint4 = new android/graphics/Paint;
      localPaint4.<init>();
      LinearGradient localLinearGradient = new android/graphics/LinearGradient;
      float f24 = 0.0F;
      Object localObject15 = ((Bitmap)localObject10).getHeight();
      localObject2 = localObject15;
      float f2 = localObject2;
      float f25 = f2;
      float f26 = 0.0F;
      localObject15 = localBitmap1.getHeight();
      localObject15 += 4;
      f2 = localObject15;
      f2 = f2;
      float f27 = f2;
      int i15 = 1090519039;
      int i16 = 16777215;
      Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
      localLinearGradient.<init>(f24, f25, f26, f27, i15, i16, localTileMode);
      Object localObject3 = localPaint4;
      localObject6 = localLinearGradient;
      ((Paint)localObject3).setShader((Shader)localObject6);
      PorterDuffXfermode localPorterDuffXfermode = new android/graphics/PorterDuffXfermode;
      PorterDuff.Mode localMode = PorterDuff.Mode.DST_IN;
      localPorterDuffXfermode.<init>(localMode);
      localObject3 = localPaint4;
      localObject6 = localPorterDuffXfermode;
      ((Paint)localObject3).setXfermode((Xfermode)localObject6);
      f25 = 0.0F;
      localObject3 = localObject26;
      float f3 = localObject3;
      f26 = f3;
      f3 = f18;
      f3 = f3;
      f27 = f3;
      float f10 = localBitmap1.getHeight();
      f10 += 4;
      f3 = f10;
      f3 = f3;
      float f28 = f3;
      Canvas localCanvas2 = localCanvas1;
      Paint localPaint3 = localPaint4;
      localCanvas2.drawRect(f25, f26, f27, f28, localPaint3);
      ((Bitmap)localObject10).recycle();
      localBitmap4.recycle();
      localBitmap2.recycle();
      ImageView localImageView = new android/widget/ImageView;
      Object localObject4 = this;
      localObject4 = mActivity;
      Object localObject16 = localObject4;
      localObject4 = localImageView;
      localObject6 = localObject16;
      ((ImageView)localObject4).<init>((Context)localObject6);
      localObject4 = localImageView;
      localObject6 = localBitmap1;
      ((ImageView)localObject4).setImageBitmap((Bitmap)localObject6);
      localObject4 = this;
      localObject4 = mActivity;
      localObject16 = localObject4;
      localObject16 = ((Activity)localObject16).getWindowManager();
      Display localDisplay = ((WindowManager)localObject16).getDefaultDisplay();
      int i25 = localDisplay.getWidth();
      int i24 = localDisplay.getHeight();
      localObject4 = i25;
      float f4 = localObject4;
      float f11 = f4;
      float f15 = 5.0F;
      f11 /= f15;
      int i9 = localBitmap1.getWidth();
      float f16 = i9;
      float f29 = f11 / f16;
      Object localObject17 = new android/widget/Gallery$LayoutParams;
      int i10 = localBitmap1.getWidth();
      float f17 = i10;
      f17 *= f29;
      int i11 = (int)f17;
      f18 = localBitmap1.getHeight();
      float f19 = f18;
      f19 *= f29;
      int i13 = (int)f19;
      ((Gallery.LayoutParams)localObject17).<init>(i11, i13);
      Object localObject5 = localImageView;
      localObject6 = localObject17;
      ((ImageView)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject6);
      int i26 = 0;
      localObject17 = ImageView.ScaleType.CENTER_INSIDE;
      localObject5 = localImageView;
      localObject6 = localObject17;
      ((ImageView)localObject5).setScaleType((ImageView.ScaleType)localObject6);
      Object localObject25 = localImageView.getDrawable();
      localObject25 = (BitmapDrawable)localObject25;
      int i3 = 1;
      localObject5 = localObject25;
      localObject6 = i3;
      ((BitmapDrawable)localObject5).setAntiAlias(localObject6);
      localObject5 = this;
      localObject5 = mImages;
      Object localObject18 = localObject5;
      int i23 = i22 + 1;
      localObject18[i22] = localImageView;
      i21 += 1;
      i22 = i23;
    }
  }
  
  public int getCount()
  {
    ImageView[] arrayOfImageView = mImages;
    if (arrayOfImageView != null) {
      arrayOfImageView = mImages;
    }
    for (int i = arrayOfImageView.length;; i = 0) {
      return i;
    }
  }
  
  public Object getItem(int paramInt)
  {
    StoreItemObject localStoreItemObject = getItem(paramInt);
    return localStoreItemObject;
  }
  
  public StoreItemObject getItem(int paramInt)
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getStoreItemObjectList();
    if (localObject != null)
    {
      localObject = DWApplication.getInstance();
      localObject = ((DWApplication)localObject).getDWGameState();
      localObject = ((DWGameState)localObject).getStoreItemObjectList();
      this = ((List)localObject).get(paramInt);
      this = (StoreItemObject)this;
    }
    for (localObject = this;; localObject = null) {
      return (StoreItemObject)localObject;
    }
  }
  
  public long getItemId(int paramInt)
  {
    long l = paramInt;
    return l;
  }
  
  public float getScale(boolean paramBoolean, int paramInt)
  {
    float f1 = 0.0F;
    float f2 = 1.0F;
    double d1 = 2.0D;
    int i = Math.abs(paramInt);
    double d2 = i;
    d1 = Math.pow(d1, d2);
    float f3 = (float)d1;
    f2 /= f3;
    f1 = Math.max(f1, f2);
    return f1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = mImages;
    localObject = localObject[paramInt];
    return (View)localObject;
  }
  
  public void releaseActivity()
  {
    Drawable localDrawable = null;
    mActivity = localDrawable;
    ImageView[] arrayOfImageView = mImages;
    if (arrayOfImageView == null) {
      return;
    }
    int i = 0;
    for (;;)
    {
      arrayOfImageView = mImages;
      int j = arrayOfImageView.length;
      if (i >= j) {
        break;
      }
      Object localObject = mImages;
      localObject = localObject[i];
      ((ImageView)localObject).setImageDrawable(localDrawable);
      localObject = mImages;
      localObject = localObject[i];
      ((ImageView)localObject).setBackgroundDrawable(localDrawable);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreItemPetalAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */