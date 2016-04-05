package android.support.v4.util;

import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class AtomicFile
{
  private final File mBackupName;
  private final File mBaseName;
  
  public AtomicFile(File paramFile)
  {
    mBaseName = paramFile;
    mBackupName = new File(paramFile.getPath() + ".bak");
  }
  
  static boolean sync(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {}
    try
    {
      paramFileOutputStream.getFD().sync();
      return true;
    }
    catch (IOException paramFileOutputStream) {}
    return false;
  }
  
  public void delete()
  {
    mBaseName.delete();
    mBackupName.delete();
  }
  
  public void failWrite(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {
      sync(paramFileOutputStream);
    }
    try
    {
      paramFileOutputStream.close();
      mBaseName.delete();
      mBackupName.renameTo(mBaseName);
      return;
    }
    catch (IOException paramFileOutputStream)
    {
      Log.w("AtomicFile", "failWrite: Got exception:", paramFileOutputStream);
    }
  }
  
  public void finishWrite(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {
      sync(paramFileOutputStream);
    }
    try
    {
      paramFileOutputStream.close();
      mBackupName.delete();
      return;
    }
    catch (IOException paramFileOutputStream)
    {
      Log.w("AtomicFile", "finishWrite: Got exception:", paramFileOutputStream);
    }
  }
  
  public File getBaseFile()
  {
    return mBaseName;
  }
  
  public FileInputStream openRead()
    throws FileNotFoundException
  {
    if (mBackupName.exists())
    {
      mBaseName.delete();
      mBackupName.renameTo(mBaseName);
    }
    return new FileInputStream(mBaseName);
  }
  
  /* Error */
  public byte[] readFully()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 98	android/support/v4/util/AtomicFile:openRead	()Ljava/io/FileInputStream;
    //   4: astore_3
    //   5: iconst_0
    //   6: istore 4
    //   8: aload_3
    //   9: invokevirtual 102	java/io/FileInputStream:available	()I
    //   12: newarray <illegal type>
    //   14: astore_1
    //   15: aload_3
    //   16: aload_1
    //   17: iload 4
    //   19: aload_1
    //   20: arraylength
    //   21: iload 4
    //   23: isub
    //   24: invokevirtual 106	java/io/FileInputStream:read	([BII)I
    //   27: istore 5
    //   29: iload 5
    //   31: ifgt +9 -> 40
    //   34: aload_3
    //   35: invokevirtual 107	java/io/FileInputStream:close	()V
    //   38: aload_1
    //   39: areturn
    //   40: iload 4
    //   42: iload 5
    //   44: iadd
    //   45: istore 5
    //   47: aload_3
    //   48: invokevirtual 102	java/io/FileInputStream:available	()I
    //   51: istore 6
    //   53: iload 5
    //   55: istore 4
    //   57: iload 6
    //   59: aload_1
    //   60: arraylength
    //   61: iload 5
    //   63: isub
    //   64: if_icmple -49 -> 15
    //   67: iload 5
    //   69: iload 6
    //   71: iadd
    //   72: newarray <illegal type>
    //   74: astore_2
    //   75: aload_1
    //   76: iconst_0
    //   77: aload_2
    //   78: iconst_0
    //   79: iload 5
    //   81: invokestatic 113	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   84: aload_2
    //   85: astore_1
    //   86: iload 5
    //   88: istore 4
    //   90: goto -75 -> 15
    //   93: astore_1
    //   94: aload_3
    //   95: invokevirtual 107	java/io/FileInputStream:close	()V
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	AtomicFile
    //   14	72	1	localObject1	Object
    //   93	6	1	localObject2	Object
    //   74	11	2	arrayOfByte	byte[]
    //   4	91	3	localFileInputStream	FileInputStream
    //   6	83	4	i	int
    //   27	60	5	j	int
    //   51	21	6	k	int
    // Exception table:
    //   from	to	target	type
    //   8	15	93	finally
    //   15	29	93	finally
    //   47	53	93	finally
    //   57	84	93	finally
  }
  
  public FileOutputStream startWrite()
    throws IOException
  {
    if (mBaseName.exists())
    {
      if (mBackupName.exists()) {
        break label88;
      }
      if (!mBaseName.renameTo(mBackupName)) {
        Log.w("AtomicFile", "Couldn't rename file " + mBaseName + " to backup file " + mBackupName);
      }
    }
    for (;;)
    {
      try
      {
        FileOutputStream localFileOutputStream1 = new FileOutputStream(mBaseName);
        return localFileOutputStream1;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        label88:
        if (mBaseName.getParentFile().mkdir()) {
          continue;
        }
        throw new IOException("Couldn't create directory " + mBaseName);
        try
        {
          FileOutputStream localFileOutputStream2 = new FileOutputStream(mBaseName);
          return localFileOutputStream2;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          throw new IOException("Couldn't create " + mBaseName);
        }
      }
      mBaseName.delete();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.AtomicFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */