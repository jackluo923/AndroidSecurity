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
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.io.FileInputStream;
import java.util.List;

public class NewOwnerPetalAdapter
  extends BaseAdapter
{
  private FileInputStream fis;
  private Activity mActivity;
  int mGalleryItemBackground;
  private ImageView[] mImages;
  
  public NewOwnerPetalAdapter(Activity paramActivity)
  {
    mActivity = paramActivity;
  }
  
  public boolean createReflectedImages(int paramInt1, int paramInt2)
  {
    Object localObject7 = DWApplication.getInstance();
    localObject7 = ((DWApplication)localObject7).getServerRequestsMgr();
    Object localObject1 = this;
    localObject1 = mActivity;
    Object localObject14 = localObject1;
    String str1 = "REQUEST_PLAYER_LIST";
    String str2 = null;
    Object localObject15 = null;
    boolean bool1 = ((ServerRequestsMgr)localObject7).SendDWCommand((Activity)localObject14, str1, str2, (String)localObject15);
    if (!bool1) {}
    int k;
    for (bool1 = false;; k = 0)
    {
      return bool1;
      Object localObject8 = DWApplication.getInstance();
      localObject8 = ((DWApplication)localObject8).getDWGameState();
      localObject8 = ((DWGameState)localObject8).getNewOwnerObjectList();
      if (localObject8 != null) {
        break;
      }
      localObject8 = "NewOwnerPetalAdapter";
      localObject14 = "NewOwnerObjectList is Null";
      Log.d((String)localObject8, (String)localObject14);
    }
    Object localObject9 = DWApplication.getInstance();
    localObject9 = ((DWApplication)localObject9).getDWGameState();
    localObject9 = ((DWGameState)localObject9).getNewOwnerObjectList();
    int m = ((List)localObject9).size();
    ImageView[] arrayOfImageView = new ImageView[m];
    localObject1 = arrayOfImageView;
    Object localObject6 = this;
    mImages = ((ImageView[])localObject1);
    int i21 = 4;
    BitmapFactory.Options localOptions = new android/graphics/BitmapFactory$Options;
    localOptions.<init>();
    int n = 160;
    localObject1 = n;
    localObject6 = localOptions;
    inTargetDensity = localObject1;
    int j = 0;
    int i22 = 0;
    int i15 = 0;
    boolean bool2 = false;
    int i16 = 0;
    int i18 = 0;
    int i17 = 0;
    for (;;)
    {
      localObject1 = this;
      localObject1 = mImages;
      Object localObject10 = localObject1;
      int i1 = localObject10.length;
      localObject1 = i17;
      localObject6 = i1;
      if (localObject1 >= localObject6)
      {
        j = 0;
        i22 = 0;
        i15 = 0;
        bool2 = false;
        i16 = 0;
        i1 = 1;
        break;
      }
      Resources localResources = DWApplication.getAppResources();
      localObject14 = DWApplication.getInstance();
      localObject14 = ((DWApplication)localObject14).getDWGameState();
      localObject14 = ((DWGameState)localObject14).getNewOwnerObjectList();
      localObject1 = localObject14;
      localObject6 = i17;
      paramInt2 = ((List)localObject1).get(localObject6);
      paramInt2 = (NewOwnerObject)paramInt2;
      int i5 = paramInt2.getPetalResourceID();
      Bitmap localBitmap1 = BitmapFactory.decodeResource(localResources, i5);
      float f18 = localBitmap1.getWidth();
      Object localObject17 = localBitmap1.getHeight();
      localObject15 = new android/graphics/Matrix;
      ((Matrix)localObject15).<init>();
      float f7 = 1.0F;
      float f12 = -0.5F;
      ((Matrix)localObject15).preScale(f7, f12);
      int i2 = 0;
      int i6 = localObject17 / 3;
      int i12 = localObject17 * 2;
      i12 /= 3;
      bool2 = false;
      Bitmap localBitmap3 = Bitmap.createBitmap(localBitmap1, i2, i6, f18, i12, (Matrix)localObject15, bool2);
      i2 = localObject17 / 3;
      i2 += localObject17;
      Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
      Bitmap localBitmap2 = Bitmap.createBitmap(f18, i2, localConfig);
      Canvas localCanvas1 = new android/graphics/Canvas;
      localObject1 = localCanvas1;
      localObject6 = localBitmap2;
      ((Canvas)localObject1).<init>((Bitmap)localObject6);
      float f8 = 0.0F;
      float f13 = 0.0F;
      Paint localPaint2 = null;
      localCanvas1.drawBitmap(localBitmap1, f8, f13, localPaint2);
      Paint localPaint3 = new android/graphics/Paint;
      localPaint3.<init>();
      float f20 = 0.0F;
      localObject1 = localObject17;
      float f1 = localObject1;
      float f21 = f1;
      float f22 = f18;
      int i3 = localObject17 + 4;
      float f23 = i3;
      localCanvas1.drawRect(f20, f21, f22, f23, localPaint3);
      float f9 = 0.0F;
      int i7 = localObject17 + 4;
      float f14 = i7;
      localPaint2 = null;
      Object localObject2 = localCanvas1;
      localObject6 = localBitmap3;
      float f5 = f9;
      float f6 = f14;
      Paint localPaint1 = localPaint2;
      ((Canvas)localObject2).drawBitmap((Bitmap)localObject6, f5, f6, localPaint1);
      Paint localPaint5 = new android/graphics/Paint;
      localPaint5.<init>();
      LinearGradient localLinearGradient = new android/graphics/LinearGradient;
      float f24 = 0.0F;
      Object localObject11 = localBitmap1.getHeight();
      localObject2 = localObject11;
      float f2 = localObject2;
      float f25 = f2;
      float f26 = 0.0F;
      localObject11 = localBitmap2.getHeight();
      localObject11 += 4;
      f2 = localObject11;
      f2 = f2;
      float f27 = f2;
      int i13 = 1090519039;
      int i14 = 16777215;
      Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
      localLinearGradient.<init>(f24, f25, f26, f27, i13, i14, localTileMode);
      Object localObject3 = localPaint5;
      localObject6 = localLinearGradient;
      ((Paint)localObject3).setShader((Shader)localObject6);
      PorterDuffXfermode localPorterDuffXfermode = new android/graphics/PorterDuffXfermode;
      PorterDuff.Mode localMode = PorterDuff.Mode.DST_IN;
      localPorterDuffXfermode.<init>(localMode);
      localObject3 = localPaint5;
      localObject6 = localPorterDuffXfermode;
      ((Paint)localObject3).setXfermode((Xfermode)localObject6);
      f25 = 0.0F;
      localObject3 = localObject17;
      float f3 = localObject3;
      f26 = f3;
      f3 = f18;
      f3 = f3;
      f27 = f3;
      float f10 = localBitmap2.getHeight();
      f10 += 4;
      f3 = f10;
      f3 = f3;
      float f28 = f3;
      Canvas localCanvas2 = localCanvas1;
      Paint localPaint4 = localPaint5;
      localCanvas2.drawRect(f25, f26, f27, f28, localPaint4);
      localBitmap1.recycle();
      localBitmap3.recycle();
      ImageView localImageView = new android/widget/ImageView;
      DWApplication localDWApplication = DWApplication.getInstance();
      Object localObject4 = localImageView;
      localObject6 = localDWApplication;
      ((ImageView)localObject4).<init>((Context)localObject6);
      localObject4 = localImageView;
      localObject6 = localBitmap2;
      ((ImageView)localObject4).setImageBitmap((Bitmap)localObject6);
      int i = paramInt1;
      float f4 = i;
      float f11 = f4;
      float f15 = 2.3F;
      f11 /= f15;
      int i8 = localBitmap2.getWidth();
      float f16 = i8;
      float f29 = f11 / f16;
      Object localObject12 = new android/widget/Gallery$LayoutParams;
      int i9 = localBitmap2.getWidth();
      float f17 = i9;
      f17 *= f29;
      int i10 = (int)f17;
      f18 = localBitmap2.getHeight();
      float f19 = f18;
      f19 *= f29;
      int i11 = (int)f19;
      ((Gallery.LayoutParams)localObject12).<init>(i10, i11);
      Object localObject5 = localImageView;
      localObject6 = localObject12;
      ((ImageView)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject6);
      int i20 = 0;
      localObject12 = ImageView.ScaleType.CENTER_INSIDE;
      localObject5 = localImageView;
      localObject6 = localObject12;
      ((ImageView)localObject5).setScaleType((ImageView.ScaleType)localObject6);
      Object localObject16 = localImageView.getDrawable();
      localObject16 = (BitmapDrawable)localObject16;
      int i4 = 1;
      localObject5 = localObject16;
      localObject6 = i4;
      ((BitmapDrawable)localObject5).setAntiAlias(localObject6);
      localObject5 = this;
      localObject5 = mImages;
      Object localObject13 = localObject5;
      int i19 = i18 + 1;
      localObject13[i18] = localImageView;
      i17 += 1;
      i18 = i19;
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
    NewOwnerObject localNewOwnerObject = getItem(paramInt);
    return localNewOwnerObject;
  }
  
  public NewOwnerObject getItem(int paramInt)
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getNewOwnerObjectList();
    this = ((List)localObject).get(paramInt);
    this = (NewOwnerObject)this;
    return this;
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
 * Qualified Name:     kagegames.apps.DWBeta.NewOwnerPetalAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */