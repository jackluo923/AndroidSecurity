package mobi.monaca.framework.util;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import mobi.monaca.framework.bootloader.LocalFileBootloader;

public class InputStreamLoader
{
  public static InputStream loadAssetFile(Context paramContext, String paramString)
    throws IOException
  {
    return LocalFileBootloader.openAsset(paramContext, paramString);
  }
  
  public static InputStream loadLocalFile(String paramString)
    throws FileNotFoundException
  {
    return new FileInputStream(new File(paramString));
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.InputStreamLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */