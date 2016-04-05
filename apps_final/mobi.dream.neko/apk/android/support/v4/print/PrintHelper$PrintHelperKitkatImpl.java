package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import java.io.FileNotFoundException;

final class PrintHelper$PrintHelperKitkatImpl
  implements PrintHelper.PrintHelperVersionImpl
{
  private final PrintHelperKitkat printHelper;
  
  PrintHelper$PrintHelperKitkatImpl(Context paramContext)
  {
    printHelper = new PrintHelperKitkat(paramContext);
  }
  
  public int getColorMode()
  {
    return printHelper.getColorMode();
  }
  
  public int getScaleMode()
  {
    return printHelper.getScaleMode();
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap)
  {
    printHelper.printBitmap(paramString, paramBitmap);
  }
  
  public void printBitmap(String paramString, Uri paramUri)
    throws FileNotFoundException
  {
    printHelper.printBitmap(paramString, paramUri);
  }
  
  public void setColorMode(int paramInt)
  {
    printHelper.setColorMode(paramInt);
  }
  
  public void setScaleMode(int paramInt)
  {
    printHelper.setScaleMode(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperKitkatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */