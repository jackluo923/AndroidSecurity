package kagegames.apps.DWBeta;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Transformation;
import android.widget.Gallery;
import android.widget.ImageView;

public class CoverFlow
  extends Gallery
{
  private Camera mCamera;
  private int mCoveflowCenter;
  private int mMaxRotationAngle;
  private int mMaxZoom;
  
  public CoverFlow(Context paramContext)
  {
    super(paramContext);
    Camera localCamera = new android/graphics/Camera;
    localCamera.<init>();
    mCamera = localCamera;
    int i = 60;
    mMaxRotationAngle = i;
    i = 65336;
    mMaxZoom = i;
    i = 1;
    setStaticTransformationsEnabled(i);
  }
  
  public CoverFlow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Camera localCamera = new android/graphics/Camera;
    localCamera.<init>();
    mCamera = localCamera;
    int i = 60;
    mMaxRotationAngle = i;
    i = 65336;
    mMaxZoom = i;
    i = 1;
    setStaticTransformationsEnabled(i);
  }
  
  public CoverFlow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Camera localCamera = new android/graphics/Camera;
    localCamera.<init>();
    mCamera = localCamera;
    int i = 60;
    mMaxRotationAngle = i;
    i = 65336;
    mMaxZoom = i;
    i = 1;
    setStaticTransformationsEnabled(i);
  }
  
  int getCenterOfCoverflow()
  {
    int i = getWidth();
    int j = getPaddingLeft();
    i -= j;
    j = getPaddingRight();
    i -= j;
    i /= 2;
    j = getPaddingLeft();
    i += j;
    return i;
  }
  
  private static int getCenterOfView(View paramView)
  {
    int i = paramView.getLeft();
    int j = paramView.getWidth();
    j /= 2;
    i += j;
    return i;
  }
  
  protected boolean getChildStaticTransformation(View paramView, Transformation paramTransformation)
  {
    int i = getCenterOfView(paramView);
    int j = paramView.getWidth();
    int k = 0;
    paramTransformation.clear();
    int m = Transformation.TYPE_MATRIX;
    paramTransformation.setTransformationType(m);
    m = mCoveflowCenter;
    if (i == m)
    {
      paramView = (ImageView)paramView;
      m = 0;
      transformImageBitmap(paramView, paramTransformation, m);
      m = 1;
      return m;
    }
    int n = mCoveflowCenter;
    n -= i;
    float f1 = n;
    float f2 = j;
    f1 /= f2;
    int i2 = mMaxRotationAngle;
    float f3 = i2;
    f1 *= f3;
    k = (int)f1;
    int i1 = Math.abs(k);
    int i3 = mMaxRotationAngle;
    if (i1 > i3)
    {
      if (k >= 0) {
        break label172;
      }
      i1 = mMaxRotationAngle;
      i1 = -i1;
    }
    for (k = i1;; k = i1)
    {
      paramView = (ImageView)paramView;
      transformImageBitmap(paramView, paramTransformation, k);
      break;
      label172:
      i1 = mMaxRotationAngle;
    }
  }
  
  public int getMaxRotationAngle()
  {
    int i = mMaxRotationAngle;
    return i;
  }
  
  public int getMaxZoom()
  {
    int i = mMaxZoom;
    return i;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getCenterOfCoverflow();
    mCoveflowCenter = i;
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setMaxRotationAngle(int paramInt)
  {
    mMaxRotationAngle = paramInt;
  }
  
  public void setMaxZoom(int paramInt)
  {
    mMaxZoom = paramInt;
  }
  
  private void transformImageBitmap(ImageView paramImageView, Transformation paramTransformation, int paramInt)
  {
    float f9 = 0.0F;
    Object localObject = mCamera;
    ((Camera)localObject).save();
    Matrix localMatrix = paramTransformation.getMatrix();
    localObject = paramImageView.getLayoutParams();
    int i = height;
    localObject = paramImageView.getLayoutParams();
    int j = width;
    int k = Math.abs(paramInt);
    localObject = mCamera;
    float f6 = 100.0F;
    ((Camera)localObject).translate(f9, f9, f6);
    float f2 = 2.5F;
    int m = mMaxRotationAngle;
    if (k < m)
    {
      m = mMaxZoom;
      float f3 = m;
      f6 = k;
      f6 *= f2;
      float f1 = f3 + f6;
      localCamera1 = mCamera;
      localCamera1.translate(f9, f9, f1);
    }
    Camera localCamera1 = mCamera;
    f6 = paramInt;
    localCamera1.rotateY(f6);
    localCamera1 = mCamera;
    localCamera1.getMatrix(localMatrix);
    int n = j / 2;
    n = -n;
    float f4 = n;
    int i2 = i / 2;
    i2 = -i2;
    float f7 = i2;
    localMatrix.preTranslate(f4, f7);
    int i1 = j / 2;
    float f5 = i1;
    int i3 = i / 2;
    float f8 = i3;
    localMatrix.postTranslate(f5, f8);
    Camera localCamera2 = mCamera;
    localCamera2.restore();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.CoverFlow
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */