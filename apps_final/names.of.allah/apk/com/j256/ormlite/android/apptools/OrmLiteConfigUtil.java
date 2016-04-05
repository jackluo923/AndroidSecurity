package com.j256.ormlite.android.apptools;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrmLiteConfigUtil
{
  protected static final String RAW_DIR_NAME = "raw";
  protected static final String RESOURCE_DIR_NAME = "res";
  private static final DatabaseType databaseType = new SqliteAndroidDatabaseType();
  protected static int maxFindSourceLevel = 20;
  
  private static boolean classHasAnnotations(Class<?> paramClass)
  {
    for (;;)
    {
      if (paramClass != null)
      {
        if (paramClass.getAnnotation(DatabaseTable.class) != null) {
          return true;
        }
        try
        {
          Field[] arrayOfField = paramClass.getDeclaredFields();
          int j = arrayOfField.length;
          int i = 0;
          for (;;)
          {
            if (i >= j) {
              break label108;
            }
            Field localField = arrayOfField[i];
            if ((localField.getAnnotation(DatabaseField.class) != null) || (localField.getAnnotation(ForeignCollectionField.class) != null)) {
              break;
            }
            i += 1;
          }
          try
          {
            Class localClass = paramClass.getSuperclass();
            paramClass = localClass;
          }
          catch (Throwable localThrowable2)
          {
            System.err.println("Could not get super class for: " + paramClass);
            System.err.println("     " + localThrowable2);
            return false;
          }
        }
        catch (Throwable localThrowable1)
        {
          System.err.println("Could not load get delcared fields from: " + paramClass);
          System.err.println("     " + localThrowable1);
          return false;
        }
      }
    }
    label108:
    return false;
  }
  
  /* Error */
  private static void findAnnotatedClasses(List<Class<?>> paramList, File paramFile, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 95	java/io/File:listFiles	()[Ljava/io/File;
    //   4: astore_1
    //   5: aload_1
    //   6: arraylength
    //   7: istore 8
    //   9: iconst_0
    //   10: istore 6
    //   12: iload 6
    //   14: iload 8
    //   16: if_icmpge +310 -> 326
    //   19: aload_1
    //   20: iload 6
    //   22: aaload
    //   23: astore_3
    //   24: aload_3
    //   25: invokevirtual 99	java/io/File:isDirectory	()Z
    //   28: ifeq +27 -> 55
    //   31: iload_2
    //   32: getstatic 19	com/j256/ormlite/android/apptools/OrmLiteConfigUtil:maxFindSourceLevel	I
    //   35: if_icmpge +11 -> 46
    //   38: aload_0
    //   39: aload_3
    //   40: iload_2
    //   41: iconst_1
    //   42: iadd
    //   43: invokestatic 101	com/j256/ormlite/android/apptools/OrmLiteConfigUtil:findAnnotatedClasses	(Ljava/util/List;Ljava/io/File;I)V
    //   46: iload 6
    //   48: iconst_1
    //   49: iadd
    //   50: istore 6
    //   52: goto -40 -> 12
    //   55: aload_3
    //   56: invokevirtual 104	java/io/File:getName	()Ljava/lang/String;
    //   59: ldc 106
    //   61: invokevirtual 112	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   64: ifeq -18 -> 46
    //   67: aload_3
    //   68: invokestatic 116	com/j256/ormlite/android/apptools/OrmLiteConfigUtil:getPackageOfClass	(Ljava/io/File;)Ljava/lang/String;
    //   71: astore 4
    //   73: aload 4
    //   75: ifnonnull +28 -> 103
    //   78: getstatic 57	java/lang/System:err	Ljava/io/PrintStream;
    //   81: new 59	java/lang/StringBuilder
    //   84: dup
    //   85: ldc 118
    //   87: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_3
    //   91: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokevirtual 77	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   100: goto -54 -> 46
    //   103: aload_3
    //   104: invokevirtual 104	java/io/File:getName	()Ljava/lang/String;
    //   107: astore 5
    //   109: aload 5
    //   111: iconst_0
    //   112: aload 5
    //   114: invokevirtual 122	java/lang/String:length	()I
    //   117: iconst_5
    //   118: isub
    //   119: invokevirtual 126	java/lang/String:substring	(II)Ljava/lang/String;
    //   122: astore 5
    //   124: new 59	java/lang/StringBuilder
    //   127: dup
    //   128: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   131: aload 4
    //   133: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc -124
    //   138: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 5
    //   143: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: astore 4
    //   151: aload 4
    //   153: invokestatic 136	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   156: astore 4
    //   158: aload 4
    //   160: invokestatic 138	com/j256/ormlite/android/apptools/OrmLiteConfigUtil:classHasAnnotations	(Ljava/lang/Class;)Z
    //   163: ifeq +12 -> 175
    //   166: aload_0
    //   167: aload 4
    //   169: invokeinterface 144 2 0
    //   174: pop
    //   175: aload 4
    //   177: invokevirtual 148	java/lang/Class:getDeclaredClasses	()[Ljava/lang/Class;
    //   180: astore_3
    //   181: aload_3
    //   182: arraylength
    //   183: istore 9
    //   185: iconst_0
    //   186: istore 7
    //   188: iload 7
    //   190: iload 9
    //   192: if_icmpge -146 -> 46
    //   195: aload_3
    //   196: iload 7
    //   198: aaload
    //   199: astore 5
    //   201: aload 5
    //   203: invokestatic 138	com/j256/ormlite/android/apptools/OrmLiteConfigUtil:classHasAnnotations	(Ljava/lang/Class;)Z
    //   206: ifeq +12 -> 218
    //   209: aload_0
    //   210: aload 5
    //   212: invokeinterface 144 2 0
    //   217: pop
    //   218: iload 7
    //   220: iconst_1
    //   221: iadd
    //   222: istore 7
    //   224: goto -36 -> 188
    //   227: astore 4
    //   229: getstatic 57	java/lang/System:err	Ljava/io/PrintStream;
    //   232: new 59	java/lang/StringBuilder
    //   235: dup
    //   236: ldc -106
    //   238: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   241: aload_3
    //   242: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   245: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: invokevirtual 77	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   251: getstatic 57	java/lang/System:err	Ljava/io/PrintStream;
    //   254: new 59	java/lang/StringBuilder
    //   257: dup
    //   258: ldc 79
    //   260: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   263: aload 4
    //   265: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokevirtual 77	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   274: goto -228 -> 46
    //   277: astore_3
    //   278: getstatic 57	java/lang/System:err	Ljava/io/PrintStream;
    //   281: new 59	java/lang/StringBuilder
    //   284: dup
    //   285: ldc -104
    //   287: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   290: aload 4
    //   292: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   295: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: invokevirtual 77	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   301: getstatic 57	java/lang/System:err	Ljava/io/PrintStream;
    //   304: new 59	java/lang/StringBuilder
    //   307: dup
    //   308: ldc 79
    //   310: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   313: aload_3
    //   314: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   317: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   320: invokevirtual 77	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   323: goto -277 -> 46
    //   326: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	327	0	paramList	List<Class<?>>
    //   0	327	1	paramFile	File
    //   0	327	2	paramInt	int
    //   23	219	3	localObject1	Object
    //   277	37	3	localThrowable1	Throwable
    //   71	105	4	localObject2	Object
    //   227	64	4	localThrowable2	Throwable
    //   107	104	5	str	String
    //   10	41	6	i	int
    //   186	37	7	j	int
    //   7	10	8	k	int
    //   183	10	9	m	int
    // Exception table:
    //   from	to	target	type
    //   151	158	227	java/lang/Throwable
    //   175	185	277	java/lang/Throwable
    //   201	218	277	java/lang/Throwable
  }
  
  protected static File findRawDir(File paramFile)
  {
    int i = 0;
    while ((paramFile != null) && (i < 20))
    {
      File localFile = findResRawDir(paramFile);
      if (localFile != null) {
        return localFile;
      }
      paramFile = paramFile.getParentFile();
      i += 1;
    }
    return null;
  }
  
  private static File findResRawDir(File paramFile)
  {
    paramFile = paramFile.listFiles();
    int j = paramFile.length;
    int i = 0;
    while (i < j)
    {
      File[] arrayOfFile = paramFile[i];
      if ((arrayOfFile.getName().equals("res")) && (arrayOfFile.isDirectory()))
      {
        arrayOfFile = arrayOfFile.listFiles(new OrmLiteConfigUtil.1());
        if (arrayOfFile.length == 1) {
          return arrayOfFile[0];
        }
      }
      i += 1;
    }
    return null;
  }
  
  private static String getPackageOfClass(File paramFile)
  {
    paramFile = new BufferedReader(new FileReader(paramFile));
    try
    {
      do
      {
        do
        {
          localObject1 = paramFile.readLine();
          if (localObject1 == null) {
            return null;
          }
        } while (!((String)localObject1).contains("package"));
        localObject1 = ((String)localObject1).split("[ \t;]");
      } while ((localObject1.length <= 1) || (!localObject1[0].equals("package")));
      Object localObject1 = localObject1[1];
      return (String)localObject1;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != 1) {
      throw new IllegalArgumentException("Main can take a single file-name argument.");
    }
    writeConfigFile(paramArrayOfString[0]);
  }
  
  public static void writeConfigFile(File paramFile)
  {
    writeConfigFile(paramFile, new File("."));
  }
  
  public static void writeConfigFile(File paramFile1, File paramFile2)
  {
    ArrayList localArrayList = new ArrayList();
    findAnnotatedClasses(localArrayList, paramFile2, 0);
    writeConfigFile(paramFile1, (Class[])localArrayList.toArray(new Class[localArrayList.size()]));
  }
  
  public static void writeConfigFile(File paramFile, Class<?>[] paramArrayOfClass)
  {
    System.out.println("Writing configurations to " + paramFile.getAbsolutePath());
    writeConfigFile(new FileOutputStream(paramFile), paramArrayOfClass);
  }
  
  public static void writeConfigFile(OutputStream paramOutputStream, File paramFile)
  {
    ArrayList localArrayList = new ArrayList();
    findAnnotatedClasses(localArrayList, paramFile, 0);
    writeConfigFile(paramOutputStream, (Class[])localArrayList.toArray(new Class[localArrayList.size()]));
  }
  
  public static void writeConfigFile(OutputStream paramOutputStream, Class<?>[] paramArrayOfClass)
  {
    paramOutputStream = new BufferedWriter(new OutputStreamWriter(paramOutputStream), 4096);
    try
    {
      writeHeader(paramOutputStream);
      int j = paramArrayOfClass.length;
      int i = 0;
      while (i < j)
      {
        writeConfigForTable(paramOutputStream, paramArrayOfClass[i]);
        i += 1;
      }
      System.out.println("Done.");
      return;
    }
    finally
    {
      paramOutputStream.close();
    }
  }
  
  public static void writeConfigFile(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    findAnnotatedClasses(localArrayList, new File("."), 0);
    writeConfigFile(paramString, (Class[])localArrayList.toArray(new Class[localArrayList.size()]));
  }
  
  public static void writeConfigFile(String paramString, Class<?>[] paramArrayOfClass)
  {
    File localFile = findRawDir(new File("."));
    if (localFile == null)
    {
      System.err.println("Could not find raw directory which is typically in the res directory");
      return;
    }
    writeConfigFile(new File(localFile, paramString), paramArrayOfClass);
  }
  
  private static void writeConfigForTable(BufferedWriter paramBufferedWriter, Class<?> paramClass)
  {
    String str = DatabaseTableConfig.extractTableName(paramClass);
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = paramClass;
    if (localObject1 != null) {}
    for (;;)
    {
      int i;
      try
      {
        Field[] arrayOfField = ((Class)localObject1).getDeclaredFields();
        int j = arrayOfField.length;
        i = 0;
        if (i < j)
        {
          Object localObject2 = arrayOfField[i];
          localObject2 = DatabaseFieldConfig.fromField(databaseType, str, (Field)localObject2);
          if (localObject2 == null) {
            break label214;
          }
          localArrayList.add(localObject2);
          break label214;
        }
        localObject1 = ((Class)localObject1).getSuperclass();
      }
      catch (Error paramBufferedWriter)
      {
        System.err.println("Skipping " + paramClass + " because we got an error finding its definition: " + paramBufferedWriter.getMessage());
        return;
      }
      if (localArrayList.isEmpty())
      {
        System.out.println("Skipping " + paramClass + " because no annotated fields found");
        return;
      }
      DatabaseTableConfigLoader.write(paramBufferedWriter, new DatabaseTableConfig(paramClass, str, localArrayList));
      paramBufferedWriter.append("#################################");
      paramBufferedWriter.newLine();
      System.out.println("Wrote config for " + paramClass);
      return;
      label214:
      i += 1;
    }
  }
  
  private static void writeHeader(BufferedWriter paramBufferedWriter)
  {
    paramBufferedWriter.append('#');
    paramBufferedWriter.newLine();
    paramBufferedWriter.append("# generated on ").append(new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date()));
    paramBufferedWriter.newLine();
    paramBufferedWriter.append('#');
    paramBufferedWriter.newLine();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteConfigUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */