package kagegames.apps.DWBeta;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ImageFileListing
{
  public static List<File> getFileListing(File paramFile)
    throws FileNotFoundException
  {
    validateDirectory(paramFile);
    List localList = getFileListingNoSort(paramFile);
    Collections.sort(localList);
    return localList;
  }
  
  private static List<File> getFileListingNoSort(File paramFile)
    throws FileNotFoundException
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    File[] arrayOfFile = paramFile.listFiles();
    List localList2 = Arrays.asList(arrayOfFile);
    Iterator localIterator = localList2.iterator();
    for (;;)
    {
      boolean bool1 = localIterator.hasNext();
      if (!bool1) {
        return localArrayList;
      }
      Object localObject = localIterator.next();
      localObject = (File)localObject;
      String str1 = ((File)localObject).getName();
      String str4 = ".png";
      boolean bool2 = str1.endsWith(str4);
      if (!bool2)
      {
        String str2 = ((File)localObject).getName();
        str4 = ".jpg";
        boolean bool3 = str2.endsWith(str4);
        if (!bool3)
        {
          String str3 = ((File)localObject).getName();
          str4 = ".jpeg";
          bool4 = str3.endsWith(str4);
          if (!bool4) {
            break label142;
          }
        }
      }
      localArrayList.add(localObject);
      label142:
      boolean bool4 = ((File)localObject).isFile();
      if (!bool4)
      {
        List localList1 = getFileListingNoSort((File)localObject);
        localArrayList.addAll(localList1);
      }
    }
  }
  
  private static void validateDirectory(File paramFile)
    throws FileNotFoundException
  {
    Object localObject;
    if (paramFile == null)
    {
      IllegalArgumentException localIllegalArgumentException1 = new java/lang/IllegalArgumentException;
      localObject = "Directory should not be null.";
      localIllegalArgumentException1.<init>((String)localObject);
      throw localIllegalArgumentException1;
    }
    boolean bool1 = paramFile.exists();
    String str;
    if (!bool1)
    {
      FileNotFoundException localFileNotFoundException = new java/io/FileNotFoundException;
      localObject = new java/lang/StringBuilder;
      str = "Directory does not exist: ";
      ((StringBuilder)localObject).<init>(str);
      localObject = ((StringBuilder)localObject).append(paramFile);
      localObject = ((StringBuilder)localObject).toString();
      localFileNotFoundException.<init>((String)localObject);
      throw localFileNotFoundException;
    }
    boolean bool2 = paramFile.isDirectory();
    if (!bool2)
    {
      IllegalArgumentException localIllegalArgumentException2 = new java/lang/IllegalArgumentException;
      localObject = new java/lang/StringBuilder;
      str = "Is not a directory: ";
      ((StringBuilder)localObject).<init>(str);
      localObject = ((StringBuilder)localObject).append(paramFile);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException2.<init>((String)localObject);
      throw localIllegalArgumentException2;
    }
    boolean bool3 = paramFile.canRead();
    if (!bool3)
    {
      IllegalArgumentException localIllegalArgumentException3 = new java/lang/IllegalArgumentException;
      localObject = new java/lang/StringBuilder;
      str = "Directory cannot be read: ";
      ((StringBuilder)localObject).<init>(str);
      localObject = ((StringBuilder)localObject).append(paramFile);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException3.<init>((String)localObject);
      throw localIllegalArgumentException3;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ImageFileListing
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */