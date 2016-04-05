package com.google.zxing.client.android;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.FakeR;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.camera.CameraManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ViewfinderView
  extends View
{
  private static final long ANIMATION_DELAY = 80L;
  private static final int CURRENT_POINT_OPACITY = 160;
  private static final int MAX_RESULT_POINTS = 20;
  private static final int POINT_SIZE = 6;
  private static final int[] SCANNER_ALPHA = { 0, 64, 128, 192, 255, 192, 128, 64 };
  private static FakeR fakeR;
  private CameraManager cameraManager;
  private final int laserColor;
  private List<ResultPoint> lastPossibleResultPoints;
  private final int maskColor;
  private final Paint paint;
  private List<ResultPoint> possibleResultPoints;
  private Bitmap resultBitmap;
  private final int resultColor;
  private final int resultPointColor;
  private int scannerAlpha;
  
  public ViewfinderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    fakeR = new FakeR(paramContext);
    paint = new Paint(1);
    paramContext = getResources();
    maskColor = paramContext.getColor(fakeR.getId("color", "viewfinder_mask"));
    resultColor = paramContext.getColor(fakeR.getId("color", "result_view"));
    laserColor = paramContext.getColor(fakeR.getId("color", "viewfinder_laser"));
    resultPointColor = paramContext.getColor(fakeR.getId("color", "possible_result_points"));
    scannerAlpha = 0;
    possibleResultPoints = new ArrayList(5);
    lastPossibleResultPoints = null;
  }
  
  public void addPossibleResultPoint(ResultPoint paramResultPoint)
  {
    synchronized (possibleResultPoints)
    {
      ???.add(paramResultPoint);
      int i = ???.size();
      if (i > 20) {
        ???.subList(0, i - 10).clear();
      }
      return;
    }
  }
  
  public void drawResultBitmap(Bitmap paramBitmap)
  {
    resultBitmap = paramBitmap;
    invalidate();
  }
  
  public void drawViewfinder()
  {
    Bitmap localBitmap = resultBitmap;
    resultBitmap = null;
    if (localBitmap != null) {
      localBitmap.recycle();
    }
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (cameraManager == null) {}
    Rect localRect;
    do
    {
      return;
      localRect = cameraManager.getFramingRect();
    } while (localRect == null);
    int j = paramCanvas.getWidth();
    int k = paramCanvas.getHeight();
    Object localObject1 = paint;
    if (resultBitmap != null) {}
    for (int i = resultColor;; i = maskColor)
    {
      ((Paint)localObject1).setColor(i);
      paramCanvas.drawRect(0.0F, 0.0F, j, top, paint);
      paramCanvas.drawRect(0.0F, top, left, bottom + 1, paint);
      paramCanvas.drawRect(right + 1, top, j, bottom + 1, paint);
      paramCanvas.drawRect(0.0F, bottom + 1, j, k, paint);
      if (resultBitmap == null) {
        break;
      }
      paint.setAlpha(160);
      paramCanvas.drawBitmap(resultBitmap, null, localRect, paint);
      return;
    }
    paint.setColor(laserColor);
    paint.setAlpha(SCANNER_ALPHA[scannerAlpha]);
    scannerAlpha = ((scannerAlpha + 1) % SCANNER_ALPHA.length);
    i = localRect.height() / 2 + top;
    paramCanvas.drawRect(left + 2, i - 1, right - 1, i + 2, paint);
    localObject1 = cameraManager.getFramingRectInPreview();
    float f1 = localRect.width() / ((Rect)localObject1).width();
    float f2 = localRect.height() / ((Rect)localObject1).height();
    Object localObject2 = possibleResultPoints;
    localObject1 = lastPossibleResultPoints;
    i = left;
    j = top;
    if (((List)localObject2).isEmpty()) {
      lastPossibleResultPoints = null;
    }
    while (localObject1 != null)
    {
      paint.setAlpha(80);
      paint.setColor(resultPointColor);
      Object localObject3;
      try
      {
        localObject2 = ((List)localObject1).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (ResultPoint)((Iterator)localObject2).next();
          paramCanvas.drawCircle((int)(((ResultPoint)localObject3).getX() * f1) + i, (int)(((ResultPoint)localObject3).getY() * f2) + j, 3.0F, paint);
        }
        possibleResultPoints = new ArrayList(5);
      }
      finally {}
      lastPossibleResultPoints = ((List)localObject2);
      paint.setAlpha(160);
      paint.setColor(resultPointColor);
      try
      {
        localObject3 = ((List)localObject2).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          ResultPoint localResultPoint = (ResultPoint)((Iterator)localObject3).next();
          paramCanvas.drawCircle((int)(localResultPoint.getX() * f1) + i, (int)(localResultPoint.getY() * f2) + j, 6.0F, paint);
        }
      }
      finally {}
    }
    postInvalidateDelayed(80L, left - 6, top - 6, right + 6, bottom + 6);
  }
  
  public void setCameraManager(CameraManager paramCameraManager)
  {
    cameraManager = paramCameraManager;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.ViewfinderView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */