package mobi.monaca.framework.bootloader;

import java.io.File;
import java.util.ArrayList;

public class LocalFileUtil
{
  public static void aggregateApplicationLocalFileList(File paramFile, ArrayList<String> paramArrayList)
  {
    paramFile = paramFile.listFiles();
    int j = paramFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = paramFile[i];
      if (localFile.isDirectory()) {
        aggregateApplicationLocalFileList(localFile, paramArrayList);
      }
      for (;;)
      {
        i += 1;
        break;
        paramArrayList.add(localFile.getAbsolutePath());
      }
    }
  }
  
  public static ArrayList<String> getLocalFilePathList(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    File localFile = new File(paramString);
    if (localFile.exists())
    {
      aggregateApplicationLocalFileList(new File(paramString), localArrayList);
      return localArrayList;
    }
    localFile.mkdir();
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.LocalFileUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */