package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public class Maze
{
  public static final int EXIT_TILE = 2;
  public static final int MAX_LEVELS = 10;
  private static final int MAZE_COLS = 20;
  private static final int MAZE_ROWS = 26;
  public static final int PATH_TILE = 0;
  private static final int TILE_SIZE = 16;
  private static final int VOID_COLOR = -16777216;
  public static final int VOID_TILE = 1;
  private static int[] mMazeData;
  private int mCol;
  private Bitmap mImgExit;
  private Bitmap mImgPath;
  private Rect mRect;
  private int mRow;
  private int mX;
  private int mY;
  
  Maze(Activity paramActivity)
  {
    Object localObject = new android/graphics/Rect;
    ((Rect)localObject).<init>();
    mRect = ((Rect)localObject);
    localObject = paramActivity.getApplicationContext();
    localObject = ((Context)localObject).getResources();
    int i = 2130837587;
    localObject = BitmapFactory.decodeResource((Resources)localObject, i);
    mImgPath = ((Bitmap)localObject);
    localObject = paramActivity.getApplicationContext();
    localObject = ((Context)localObject).getResources();
    i = 2130837536;
    localObject = BitmapFactory.decodeResource((Resources)localObject, i);
    mImgExit = ((Bitmap)localObject);
  }
  
  private static void closeStream(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = 0;
    int[] arrayOfInt1 = mMazeData;
    int j = arrayOfInt1.length;
    if (i >= j) {
      return;
    }
    j = i / 20;
    mRow = j;
    j = i % 20;
    mCol = j;
    j = mCol;
    j *= 16;
    mX = j;
    j = mRow;
    j *= 16;
    mY = j;
    int[] arrayOfInt2 = mMazeData;
    int k = arrayOfInt2[i];
    Object localObject1;
    if (k == 0)
    {
      localObject1 = mImgPath;
      int i2 = mX;
      float f1 = i2;
      int i5 = mY;
      float f3 = i5;
      paramCanvas.drawBitmap((Bitmap)localObject1, f1, f3, paramPaint);
    }
    for (;;)
    {
      i += 1;
      break;
      localObject1 = mMazeData;
      int m = localObject1[i];
      int i3 = 2;
      Object localObject2;
      if (m == i3)
      {
        localObject2 = mImgExit;
        i3 = mX;
        float f2 = i3;
        int i6 = mY;
        float f4 = i6;
        paramCanvas.drawBitmap((Bitmap)localObject2, f2, f4, paramPaint);
      }
      else
      {
        localObject2 = mMazeData;
        int n = localObject2[i];
        int i4 = 1;
        if (n == i4)
        {
          Rect localRect1 = mRect;
          i4 = mX;
          left = i4;
          localRect1 = mRect;
          i4 = mY;
          top = i4;
          localRect1 = mRect;
          i4 = mX;
          i4 += 16;
          right = i4;
          localRect1 = mRect;
          i4 = mY;
          i4 += 16;
          bottom = i4;
          int i1 = -16777216;
          paramPaint.setColor(i1);
          Rect localRect2 = mRect;
          paramCanvas.drawRect(localRect2, paramPaint);
        }
      }
    }
  }
  
  public int getCellType(int paramInt1, int paramInt2)
  {
    int i = paramInt1 / 16;
    int j = paramInt2 / 16;
    int k = 0;
    if (j > 0) {
      k = j * 20;
    }
    k += i;
    int[] arrayOfInt = mMazeData;
    int m = arrayOfInt[k];
    return m;
  }
  
  void load(Activity paramActivity, int paramInt)
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    String str3 = "level";
    localStringBuilder.<init>(str3);
    localStringBuilder = localStringBuilder.append(paramInt);
    str3 = ".txt";
    localStringBuilder = localStringBuilder.append(str3);
    String str1 = localStringBuilder.toString();
    localInputStream = null;
    int j = 520;
    for (;;)
    {
      try
      {
        Object localObject1 = new int[j];
        mMazeData = (int[])localObject1;
        localObject1 = paramActivity.getAssets();
        localInputStream = ((AssetManager)localObject1).open(str1);
        i = 0;
        localObject1 = mMazeData;
        int k = localObject1.length;
        if (i >= k) {
          return;
        }
      }
      catch (Exception localException2)
      {
        int i;
        int[] arrayOfInt;
        int m;
        Exception localException1 = localException2;
        String str2 = "Maze";
        Object localObject3 = new java/lang/StringBuilder;
        String str4 = "load exception: ";
        ((StringBuilder)localObject3).<init>(str4);
        localObject3 = ((StringBuilder)localObject3).append(localException1);
        localObject3 = ((StringBuilder)localObject3).toString();
        Log.i(str2, (String)localObject3);
        closeStream(localInputStream);
        continue;
      }
      finally
      {
        closeStream(localInputStream);
      }
      arrayOfInt = mMazeData;
      m = localInputStream.read();
      m = Character.getNumericValue(m);
      arrayOfInt[i] = m;
      localInputStream.read();
      localInputStream.read();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.Maze
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */