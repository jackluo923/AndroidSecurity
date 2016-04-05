package com.squareup.okhttp.internal;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class DiskLruCache
  implements Closeable
{
  static final long ANY_SEQUENCE_NUMBER = -1L;
  private static final String CLEAN = "CLEAN";
  private static final String DIRTY = "DIRTY";
  static final String JOURNAL_FILE = "journal";
  static final String JOURNAL_FILE_BACKUP = "journal.bkp";
  static final String JOURNAL_FILE_TEMP = "journal.tmp";
  static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,64}");
  static final String MAGIC = "libcore.io.DiskLruCache";
  private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream()
  {
    public void write(int paramAnonymousInt)
      throws IOException
    {}
  };
  private static final String READ = "READ";
  private static final String REMOVE = "REMOVE";
  static final String VERSION_1 = "1";
  private final int appVersion;
  private final Callable<Void> cleanupCallable = new Callable()
  {
    public Void call()
      throws Exception
    {
      synchronized (DiskLruCache.this)
      {
        if (journalWriter == null) {
          return null;
        }
        DiskLruCache.this.trimToSize();
        if (DiskLruCache.this.journalRebuildRequired())
        {
          DiskLruCache.this.rebuildJournal();
          DiskLruCache.access$402(DiskLruCache.this, 0);
        }
        return null;
      }
    }
  };
  private final File directory;
  final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private Writer journalWriter;
  private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;
  
  private DiskLruCache(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    directory = paramFile;
    appVersion = paramInt1;
    journalFile = new File(paramFile, "journal");
    journalFileTmp = new File(paramFile, "journal.tmp");
    journalFileBackup = new File(paramFile, "journal.bkp");
    valueCount = paramInt2;
    maxSize = paramLong;
  }
  
  private void checkNotClosed()
  {
    if (journalWriter == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void completeEdit(Editor paramEditor, boolean paramBoolean)
    throws IOException
  {
    Entry localEntry;
    try
    {
      localEntry = entry;
      if (currentEditor != paramEditor) {
        throw new IllegalStateException();
      }
    }
    finally {}
    if ((paramBoolean) && (!readable))
    {
      i = 0;
      while (i < valueCount)
      {
        if (written[i] == 0)
        {
          paramEditor.abort();
          throw new IllegalStateException("Newly created entry didn't create value for index " + i);
        }
        if (!localEntry.getDirtyFile(i).exists())
        {
          paramEditor.abort();
          return;
        }
        i += 1;
      }
    }
    int i = 0;
    for (;;)
    {
      long l1;
      if (i < valueCount)
      {
        paramEditor = localEntry.getDirtyFile(i);
        if (paramBoolean)
        {
          if (paramEditor.exists())
          {
            File localFile = localEntry.getCleanFile(i);
            paramEditor.renameTo(localFile);
            l1 = lengths[i];
            long l2 = localFile.length();
            lengths[i] = l2;
            size = (size - l1 + l2);
          }
        }
        else {
          deleteIfExists(paramEditor);
        }
      }
      else
      {
        redundantOpCount += 1;
        Entry.access$702(localEntry, null);
        if ((readable | paramBoolean))
        {
          Entry.access$602(localEntry, true);
          journalWriter.write("CLEAN " + key + localEntry.getLengths() + '\n');
          if (paramBoolean)
          {
            l1 = nextSequenceNumber;
            nextSequenceNumber = (1L + l1);
            Entry.access$1202(localEntry, l1);
          }
        }
        for (;;)
        {
          journalWriter.flush();
          if ((size <= maxSize) && (!journalRebuildRequired())) {
            break;
          }
          executorService.submit(cleanupCallable);
          break;
          lruEntries.remove(key);
          journalWriter.write("REMOVE " + key + '\n');
        }
      }
      i += 1;
    }
  }
  
  private static void deleteIfExists(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private Editor edit(String paramString, long paramLong)
    throws IOException
  {
    Editor localEditor1 = null;
    for (;;)
    {
      Entry localEntry;
      try
      {
        checkNotClosed();
        validateKey(paramString);
        localEntry = (Entry)lruEntries.get(paramString);
        if (paramLong != -1L)
        {
          localObject = localEditor1;
          if (localEntry != null)
          {
            long l = sequenceNumber;
            if (l != paramLong) {
              localObject = localEditor1;
            }
          }
          else
          {
            return (Editor)localObject;
          }
        }
        if (localEntry == null)
        {
          localObject = new Entry(paramString, null);
          lruEntries.put(paramString, localObject);
          localEditor1 = new Editor((Entry)localObject, null);
          Entry.access$702((Entry)localObject, localEditor1);
          journalWriter.write("DIRTY " + paramString + '\n');
          journalWriter.flush();
          localObject = localEditor1;
          continue;
        }
        localEditor2 = currentEditor;
      }
      finally {}
      Editor localEditor2;
      Object localObject = localEntry;
      if (localEditor2 != null) {
        localObject = localEditor1;
      }
    }
  }
  
  private static String inputStreamToString(InputStream paramInputStream)
    throws IOException
  {
    return Util.readFully(new InputStreamReader(paramInputStream, Util.UTF_8));
  }
  
  private boolean journalRebuildRequired()
  {
    return (redundantOpCount >= 2000) && (redundantOpCount >= lruEntries.size());
  }
  
  public static DiskLruCache open(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label150;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
      if (!journalFile.exists()) {
        break label214;
      }
      try
      {
        ((DiskLruCache)localObject).readJournal();
        ((DiskLruCache)localObject).processJournal();
        journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(journalFile, true), Util.US_ASCII));
        return (DiskLruCache)localObject;
      }
      catch (IOException localIOException)
      {
        label150:
        Platform.get().logW("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((DiskLruCache)localObject).delete();
      }
      renameTo((File)localObject, localFile, false);
    }
    label214:
    paramFile.mkdirs();
    paramFile = new DiskLruCache(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.rebuildJournal();
    return paramFile;
  }
  
  private void processJournal()
    throws IOException
  {
    deleteIfExists(journalFileTmp);
    Iterator localIterator = lruEntries.values().iterator();
    while (localIterator.hasNext())
    {
      Entry localEntry = (Entry)localIterator.next();
      int i;
      if (currentEditor == null)
      {
        i = 0;
        while (i < valueCount)
        {
          size += lengths[i];
          i += 1;
        }
      }
      else
      {
        Entry.access$702(localEntry, null);
        i = 0;
        while (i < valueCount)
        {
          deleteIfExists(localEntry.getCleanFile(i));
          deleteIfExists(localEntry.getDirtyFile(i));
          i += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void readJournal()
    throws IOException
  {
    StrictLineReader localStrictLineReader = new StrictLineReader(new FileInputStream(journalFile), Util.US_ASCII);
    int i;
    try
    {
      String str1 = localStrictLineReader.readLine();
      String str2 = localStrictLineReader.readLine();
      String str3 = localStrictLineReader.readLine();
      String str4 = localStrictLineReader.readLine();
      String str5 = localStrictLineReader.readLine();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(str2)) || (!Integer.toString(appVersion).equals(str3)) || (!Integer.toString(valueCount).equals(str4)) || (!"".equals(str5))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + str2 + ", " + str4 + ", " + str5 + "]");
      }
    }
    finally
    {
      Util.closeQuietly(localStrictLineReader);
      throw ((Throwable)localObject);
    }
  }
  
  private void readJournalLine(String paramString)
    throws IOException
  {
    int i = paramString.indexOf(' ');
    if (i == -1) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    int j = i + 1;
    int k = paramString.indexOf(' ', j);
    Object localObject2;
    Object localObject1;
    if (k == -1)
    {
      localObject2 = paramString.substring(j);
      localObject1 = localObject2;
      if (i != "REMOVE".length()) {
        break label113;
      }
      localObject1 = localObject2;
      if (!paramString.startsWith("REMOVE")) {
        break label113;
      }
      lruEntries.remove(localObject2);
    }
    label113:
    do
    {
      return;
      localObject1 = paramString.substring(j, k);
      Entry localEntry = (Entry)lruEntries.get(localObject1);
      localObject2 = localEntry;
      if (localEntry == null)
      {
        localObject2 = new Entry((String)localObject1, null);
        lruEntries.put(localObject1, localObject2);
      }
      if ((k != -1) && (i == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(k + 1).split(" ");
        Entry.access$602((Entry)localObject2, true);
        Entry.access$702((Entry)localObject2, null);
        ((Entry)localObject2).setLengths(paramString);
        return;
      }
      if ((k == -1) && (i == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        Entry.access$702((Entry)localObject2, new Editor((Entry)localObject2, null));
        return;
      }
    } while ((k == -1) && (i == "READ".length()) && (paramString.startsWith("READ")));
    throw new IOException("unexpected journal line: " + paramString);
  }
  
  private void rebuildJournal()
    throws IOException
  {
    for (;;)
    {
      try
      {
        if (journalWriter != null) {
          journalWriter.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(journalFileTmp), Util.US_ASCII));
        Entry localEntry;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(appVersion));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(valueCount));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = lruEntries.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localEntry = (Entry)localIterator.next();
          if (currentEditor != null)
          {
            localBufferedWriter.write("DIRTY " + key + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + key + localEntry.getLengths() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (journalFile.exists()) {
      renameTo(journalFile, journalFileBackup, true);
    }
    renameTo(journalFileTmp, journalFile, false);
    journalFileBackup.delete();
    journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(journalFile, true), Util.US_ASCII));
  }
  
  private static void renameTo(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      deleteIfExists(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void trimToSize()
    throws IOException
  {
    while (size > maxSize) {
      remove((String)((Map.Entry)lruEntries.entrySet().iterator().next()).getKey());
    }
  }
  
  private void validateKey(String paramString)
  {
    if (!LEGAL_KEY_PATTERN.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
    }
  }
  
  public void close()
    throws IOException
  {
    for (;;)
    {
      try
      {
        Object localObject1 = journalWriter;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(lruEntries.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          Entry localEntry = (Entry)((Iterator)localObject1).next();
          if (currentEditor == null) {
            continue;
          }
          currentEditor.abort();
          continue;
        }
        trimToSize();
      }
      finally {}
      journalWriter.close();
      journalWriter = null;
    }
  }
  
  public void delete()
    throws IOException
  {
    close();
    Util.deleteContents(directory);
  }
  
  public Editor edit(String paramString)
    throws IOException
  {
    return edit(paramString, -1L);
  }
  
  public void flush()
    throws IOException
  {
    try
    {
      checkNotClosed();
      trimToSize();
      journalWriter.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public Snapshot get(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokespecial 316	com/squareup/okhttp/internal/DiskLruCache:checkNotClosed	()V
    //   8: aload_0
    //   9: aload_1
    //   10: invokespecial 319	com/squareup/okhttp/internal/DiskLruCache:validateKey	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 106	com/squareup/okhttp/internal/DiskLruCache:lruEntries	Ljava/util/LinkedHashMap;
    //   17: aload_1
    //   18: invokevirtual 322	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   21: checkcast 18	com/squareup/okhttp/internal/DiskLruCache$Entry
    //   24: astore 5
    //   26: aload 5
    //   28: ifnonnull +9 -> 37
    //   31: aload_3
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: areturn
    //   37: aload_3
    //   38: astore_2
    //   39: aload 5
    //   41: invokestatic 219	com/squareup/okhttp/internal/DiskLruCache$Entry:access$600	(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    //   44: ifeq -11 -> 33
    //   47: aload_0
    //   48: getfield 148	com/squareup/okhttp/internal/DiskLruCache:valueCount	I
    //   51: anewarray 559	java/io/InputStream
    //   54: astore 4
    //   56: iconst_0
    //   57: istore 6
    //   59: iload 6
    //   61: aload_0
    //   62: getfield 148	com/squareup/okhttp/internal/DiskLruCache:valueCount	I
    //   65: if_icmpge +73 -> 138
    //   68: aload 4
    //   70: iload 6
    //   72: new 446	java/io/FileInputStream
    //   75: dup
    //   76: aload 5
    //   78: iload 6
    //   80: invokevirtual 252	com/squareup/okhttp/internal/DiskLruCache$Entry:getCleanFile	(I)Ljava/io/File;
    //   83: invokespecial 448	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   86: aastore
    //   87: iload 6
    //   89: iconst_1
    //   90: iadd
    //   91: istore 6
    //   93: goto -34 -> 59
    //   96: astore_1
    //   97: iconst_0
    //   98: istore 6
    //   100: aload_3
    //   101: astore_2
    //   102: iload 6
    //   104: aload_0
    //   105: getfield 148	com/squareup/okhttp/internal/DiskLruCache:valueCount	I
    //   108: if_icmpge -75 -> 33
    //   111: aload_3
    //   112: astore_2
    //   113: aload 4
    //   115: iload 6
    //   117: aaload
    //   118: ifnull -85 -> 33
    //   121: aload 4
    //   123: iload 6
    //   125: aaload
    //   126: invokestatic 476	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   129: iload 6
    //   131: iconst_1
    //   132: iadd
    //   133: istore 6
    //   135: goto -35 -> 100
    //   138: aload_0
    //   139: aload_0
    //   140: getfield 198	com/squareup/okhttp/internal/DiskLruCache:redundantOpCount	I
    //   143: iconst_1
    //   144: iadd
    //   145: putfield 198	com/squareup/okhttp/internal/DiskLruCache:redundantOpCount	I
    //   148: aload_0
    //   149: getfield 154	com/squareup/okhttp/internal/DiskLruCache:journalWriter	Ljava/io/Writer;
    //   152: new 228	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 229	java/lang/StringBuilder:<init>	()V
    //   159: ldc_w 561
    //   162: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload_1
    //   166: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: bipush 10
    //   171: invokevirtual 288	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   174: invokevirtual 242	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokevirtual 564	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   180: pop
    //   181: aload_0
    //   182: invokespecial 182	com/squareup/okhttp/internal/DiskLruCache:journalRebuildRequired	()Z
    //   185: ifeq +15 -> 200
    //   188: aload_0
    //   189: getfield 126	com/squareup/okhttp/internal/DiskLruCache:executorService	Ljava/util/concurrent/ThreadPoolExecutor;
    //   192: aload_0
    //   193: getfield 131	com/squareup/okhttp/internal/DiskLruCache:cleanupCallable	Ljava/util/concurrent/Callable;
    //   196: invokevirtual 304	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   199: pop
    //   200: new 21	com/squareup/okhttp/internal/DiskLruCache$Snapshot
    //   203: dup
    //   204: aload_0
    //   205: aload_1
    //   206: aload 5
    //   208: invokestatic 326	com/squareup/okhttp/internal/DiskLruCache$Entry:access$1200	(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)J
    //   211: aload 4
    //   213: aload 5
    //   215: invokestatic 260	com/squareup/okhttp/internal/DiskLruCache$Entry:access$1000	(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J
    //   218: aconst_null
    //   219: invokespecial 567	com/squareup/okhttp/internal/DiskLruCache$Snapshot:<init>	(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    //   222: astore_2
    //   223: goto -190 -> 33
    //   226: astore_1
    //   227: aload_0
    //   228: monitorexit
    //   229: aload_1
    //   230: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	this	DiskLruCache
    //   0	231	1	paramString	String
    //   32	191	2	localObject1	Object
    //   1	111	3	localObject2	Object
    //   54	158	4	arrayOfInputStream	InputStream[]
    //   24	190	5	localEntry	Entry
    //   57	77	6	i	int
    // Exception table:
    //   from	to	target	type
    //   59	87	96	java/io/FileNotFoundException
    //   4	26	226	finally
    //   39	56	226	finally
    //   59	87	226	finally
    //   102	111	226	finally
    //   121	129	226	finally
    //   138	200	226	finally
    //   200	223	226	finally
  }
  
  public File getDirectory()
  {
    return directory;
  }
  
  public long getMaxSize()
  {
    return maxSize;
  }
  
  public boolean isClosed()
  {
    return journalWriter == null;
  }
  
  public boolean remove(String paramString)
    throws IOException
  {
    for (;;)
    {
      Entry localEntry;
      int i;
      try
      {
        checkNotClosed();
        validateKey(paramString);
        localEntry = (Entry)lruEntries.get(paramString);
        if (localEntry != null)
        {
          localObject = currentEditor;
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
        }
        i = 0;
        if (i >= valueCount) {
          break label136;
        }
        Object localObject = localEntry.getCleanFile(i);
        if (!((File)localObject).delete()) {
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      size -= lengths[i];
      lengths[i] = 0L;
      i += 1;
      continue;
      label136:
      redundantOpCount += 1;
      journalWriter.append("REMOVE " + paramString + '\n');
      lruEntries.remove(paramString);
      if (journalRebuildRequired()) {
        executorService.submit(cleanupCallable);
      }
      boolean bool = true;
    }
  }
  
  public void setMaxSize(long paramLong)
  {
    try
    {
      maxSize = paramLong;
      executorService.submit(cleanupCallable);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long size()
  {
    try
    {
      long l = size;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final class Editor
  {
    private boolean committed;
    private final DiskLruCache.Entry entry;
    private boolean hasErrors;
    private final boolean[] written;
    
    private Editor(DiskLruCache.Entry paramEntry)
    {
      entry = paramEntry;
      if (DiskLruCache.Entry.access$600(paramEntry)) {}
      for (this$1 = null;; this$1 = new boolean[valueCount])
      {
        written = DiskLruCache.this;
        return;
      }
    }
    
    public void abort()
      throws IOException
    {
      DiskLruCache.this.completeEdit(this, false);
    }
    
    public void abortUnlessCommitted()
    {
      if (!committed) {}
      try
      {
        abort();
        return;
      }
      catch (IOException localIOException) {}
    }
    
    public void commit()
      throws IOException
    {
      if (hasErrors)
      {
        DiskLruCache.this.completeEdit(this, false);
        remove(DiskLruCache.Entry.access$1100(entry));
      }
      for (;;)
      {
        committed = true;
        return;
        DiskLruCache.this.completeEdit(this, true);
      }
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      InputStream localInputStream = newInputStream(paramInt);
      if (localInputStream != null) {
        return DiskLruCache.inputStreamToString(localInputStream);
      }
      return null;
    }
    
    public InputStream newInputStream(int paramInt)
      throws IOException
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.Entry.access$700(entry) != this) {
          throw new IllegalStateException();
        }
      }
      if (!DiskLruCache.Entry.access$600(entry)) {
        return null;
      }
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(entry.getCleanFile(paramInt));
        return localFileInputStream;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
      return null;
    }
    
    public OutputStream newOutputStream(int paramInt)
      throws IOException
    {
      synchronized (DiskLruCache.this)
      {
        if (DiskLruCache.Entry.access$700(entry) != this) {
          throw new IllegalStateException();
        }
      }
      if (!DiskLruCache.Entry.access$600(entry)) {
        written[paramInt] = true;
      }
      File localFile = entry.getDirtyFile(paramInt);
      try
      {
        Object localObject2 = new FileOutputStream(localFile);
        localObject2 = new FaultHidingOutputStream((OutputStream)localObject2, null);
        return (OutputStream)localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        for (;;)
        {
          directory.mkdirs();
          try
          {
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            OutputStream localOutputStream = DiskLruCache.NULL_OUTPUT_STREAM;
            return localOutputStream;
          }
        }
      }
    }
    
    public void set(int paramInt, String paramString)
      throws IOException
    {
      Object localObject3 = null;
      try
      {
        OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(newOutputStream(paramInt), Util.UTF_8);
        Util.closeQuietly(paramString);
      }
      finally
      {
        try
        {
          localOutputStreamWriter.write(paramString);
          Util.closeQuietly(localOutputStreamWriter);
          return;
        }
        finally
        {
          paramString = (String)localObject1;
          Object localObject2 = localObject4;
        }
        localObject1 = finally;
        paramString = (String)localObject3;
      }
      throw ((Throwable)localObject1);
    }
    
    private class FaultHidingOutputStream
      extends FilterOutputStream
    {
      private FaultHidingOutputStream(OutputStream paramOutputStream)
      {
        super();
      }
      
      public void close()
      {
        try
        {
          out.close();
          return;
        }
        catch (IOException localIOException)
        {
          DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
        }
      }
      
      public void flush()
      {
        try
        {
          out.flush();
          return;
        }
        catch (IOException localIOException)
        {
          DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
        }
      }
      
      public void write(int paramInt)
      {
        try
        {
          out.write(paramInt);
          return;
        }
        catch (IOException localIOException)
        {
          DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
        }
      }
      
      public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          out.write(paramArrayOfByte, paramInt1, paramInt2);
          return;
        }
        catch (IOException paramArrayOfByte)
        {
          DiskLruCache.Editor.access$2302(DiskLruCache.Editor.this, true);
        }
      }
    }
  }
  
  private final class Entry
  {
    private DiskLruCache.Editor currentEditor;
    private final String key;
    private final long[] lengths;
    private boolean readable;
    private long sequenceNumber;
    
    private Entry(String paramString)
    {
      key = paramString;
      lengths = new long[valueCount];
    }
    
    private IOException invalidLengths(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    private void setLengths(String[] paramArrayOfString)
      throws IOException
    {
      if (paramArrayOfString.length != valueCount) {
        throw invalidLengths(paramArrayOfString);
      }
      int i = 0;
      try
      {
        while (i < paramArrayOfString.length)
        {
          lengths[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw invalidLengths(paramArrayOfString);
      }
    }
    
    public File getCleanFile(int paramInt)
    {
      return new File(directory, key + "." + paramInt);
    }
    
    public File getDirtyFile(int paramInt)
    {
      return new File(directory, key + "." + paramInt + ".tmp");
    }
    
    public String getLengths()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = lengths;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        localStringBuilder.append(' ').append(l);
        i += 1;
      }
      return localStringBuilder.toString();
    }
  }
  
  public final class Snapshot
    implements Closeable
  {
    private final InputStream[] ins;
    private final String key;
    private final long[] lengths;
    private final long sequenceNumber;
    
    private Snapshot(String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
    {
      key = paramString;
      sequenceNumber = paramLong;
      ins = paramArrayOfInputStream;
      lengths = paramArrayOfLong;
    }
    
    public void close()
    {
      InputStream[] arrayOfInputStream = ins;
      int j = arrayOfInputStream.length;
      int i = 0;
      while (i < j)
      {
        Util.closeQuietly(arrayOfInputStream[i]);
        i += 1;
      }
    }
    
    public DiskLruCache.Editor edit()
      throws IOException
    {
      return DiskLruCache.this.edit(key, sequenceNumber);
    }
    
    public InputStream getInputStream(int paramInt)
    {
      return ins[paramInt];
    }
    
    public long getLength(int paramInt)
    {
      return lengths[paramInt];
    }
    
    public String getString(int paramInt)
      throws IOException
    {
      return DiskLruCache.inputStreamToString(getInputStream(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */