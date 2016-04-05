package fi.iki.elonen;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

public class NanoHTTPD$HTTPSession
  implements Runnable
{
  public static final int BUFSIZE = 8192;
  private final InputStream inputStream;
  private final OutputStream outputStream;
  private final NanoHTTPD.TempFileManager tempFileManager;
  
  public NanoHTTPD$HTTPSession(NanoHTTPD paramNanoHTTPD, NanoHTTPD.TempFileManager paramTempFileManager, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    tempFileManager = paramTempFileManager;
    inputStream = paramInputStream;
    outputStream = paramOutputStream;
  }
  
  private void decodeHeader(BufferedReader paramBufferedReader, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws InterruptedException
  {
    Object localObject;
    try
    {
      localObject = paramBufferedReader.readLine();
      if (localObject == null) {
        return;
      }
      localObject = new StringTokenizer((String)localObject);
      if (!((StringTokenizer)localObject).hasMoreTokens())
      {
        NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
        throw new InterruptedException();
      }
    }
    catch (IOException paramBufferedReader)
    {
      NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: IOException: " + paramBufferedReader.getMessage());
      throw new InterruptedException();
    }
    paramMap1.put("method", ((StringTokenizer)localObject).nextToken());
    if (!((StringTokenizer)localObject).hasMoreTokens())
    {
      NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.BAD_REQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
      throw new InterruptedException();
    }
    String str = ((StringTokenizer)localObject).nextToken();
    int i = str.indexOf('?');
    if (i >= 0) {
      decodeParms(str.substring(i + 1), paramMap2);
    }
    for (paramMap2 = this$0.decodePercent(str.substring(0, i)); ((StringTokenizer)localObject).hasMoreTokens(); paramMap2 = this$0.decodePercent(str)) {
      for (localObject = paramBufferedReader.readLine(); (localObject != null) && (((String)localObject).trim().length() > 0); localObject = paramBufferedReader.readLine())
      {
        i = ((String)localObject).indexOf(':');
        if (i >= 0) {
          paramMap3.put(((String)localObject).substring(0, i).trim().toLowerCase(), ((String)localObject).substring(i + 1).trim());
        }
      }
    }
    paramMap1.put("uri", paramMap2);
  }
  
  private void decodeMultipartData(String paramString, ByteBuffer paramByteBuffer, BufferedReader paramBufferedReader, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws InterruptedException
  {
    for (;;)
    {
      int[] arrayOfInt;
      try
      {
        arrayOfInt = getBoundaryPositions(paramByteBuffer, paramString.getBytes());
        i = 1;
        localObject3 = paramBufferedReader.readLine();
        if (localObject3 == null) {
          break;
        }
        if (!((String)localObject3).contains(paramString))
        {
          NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
          throw new InterruptedException();
        }
      }
      catch (IOException paramString)
      {
        NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: IOException: " + paramString.getMessage());
        throw new InterruptedException();
      }
      int j = i + 1;
      Object localObject4 = new HashMap();
      for (Object localObject1 = paramBufferedReader.readLine(); (localObject1 != null) && (((String)localObject1).trim().length() > 0); localObject1 = paramBufferedReader.readLine())
      {
        i = ((String)localObject1).indexOf(':');
        if (i != -1) {
          ((Map)localObject4).put(((String)localObject1).substring(0, i).trim().toLowerCase(), ((String)localObject1).substring(i + 1).trim());
        }
      }
      int i = j;
      Object localObject3 = localObject1;
      if (localObject1 != null)
      {
        Object localObject2 = (String)((Map)localObject4).get("content-disposition");
        if (localObject2 == null)
        {
          NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
          throw new InterruptedException();
        }
        localObject2 = new StringTokenizer((String)localObject2, "; ");
        localObject3 = new HashMap();
        while (((StringTokenizer)localObject2).hasMoreTokens())
        {
          str = ((StringTokenizer)localObject2).nextToken();
          i = str.indexOf('=');
          if (i != -1) {
            ((Map)localObject3).put(str.substring(0, i).trim().toLowerCase(), str.substring(i + 1).trim());
          }
        }
        localObject2 = (String)((Map)localObject3).get("name");
        String str = ((String)localObject2).substring(1, ((String)localObject2).length() - 1);
        localObject2 = "";
        if (((Map)localObject4).get("content-type") == null) {
          for (;;)
          {
            localObject3 = localObject1;
            localObject4 = localObject2;
            if (localObject1 == null) {
              break;
            }
            localObject3 = localObject1;
            localObject4 = localObject2;
            if (((String)localObject1).contains(paramString)) {
              break;
            }
            localObject3 = paramBufferedReader.readLine();
            localObject1 = localObject3;
            if (localObject3 != null)
            {
              i = ((String)localObject3).indexOf(paramString);
              if (i == -1)
              {
                localObject2 = (String)localObject2 + (String)localObject3;
                localObject1 = localObject3;
              }
              else
              {
                localObject2 = (String)localObject2 + ((String)localObject3).substring(0, i - 2);
                localObject1 = localObject3;
              }
            }
          }
        }
        if (j > arrayOfInt.length)
        {
          NanoHTTPD.Response.error(outputStream, NanoHTTPD.Response.Status.INTERNAL_ERROR, "Error processing request");
          throw new InterruptedException();
        }
        i = stripMultipartHeaders(paramByteBuffer, arrayOfInt[(j - 2)]);
        paramMap2.put(str, saveTmpFile(paramByteBuffer, i, arrayOfInt[(j - 1)] - i - 4));
        localObject1 = (String)((Map)localObject3).get("filename");
        localObject1 = ((String)localObject1).substring(1, ((String)localObject1).length() - 1);
        do
        {
          localObject2 = paramBufferedReader.readLine();
          localObject3 = localObject2;
          localObject4 = localObject1;
          if (localObject2 == null) {
            break;
          }
        } while (!((String)localObject2).contains(paramString));
        localObject4 = localObject1;
        localObject3 = localObject2;
        paramMap1.put(str, localObject4);
        i = j;
      }
    }
  }
  
  private void decodeParms(String paramString, Map<String, String> paramMap)
  {
    if (paramString == null) {
      paramMap.put("NanoHttpd.QUERY_STRING", "");
    }
    for (;;)
    {
      return;
      paramMap.put("NanoHttpd.QUERY_STRING", paramString);
      paramString = new StringTokenizer(paramString, "&");
      while (paramString.hasMoreTokens())
      {
        String str = paramString.nextToken();
        int i = str.indexOf('=');
        if (i >= 0) {
          paramMap.put(this$0.decodePercent(str.substring(0, i)).trim(), this$0.decodePercent(str.substring(i + 1)));
        } else {
          paramMap.put(this$0.decodePercent(str).trim(), "");
        }
      }
    }
  }
  
  private long extractContentLength(Map<String, String> paramMap)
  {
    long l = Long.MAX_VALUE;
    paramMap = (String)paramMap.get("content-length");
    if (paramMap != null) {}
    try
    {
      int i = Integer.parseInt(paramMap);
      l = i;
      return l;
    }
    catch (NumberFormatException paramMap)
    {
      paramMap.printStackTrace();
    }
    return Long.MAX_VALUE;
  }
  
  private int findHeaderEnd(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i + 3 < paramInt)
    {
      if ((paramArrayOfByte[i] == 13) && (paramArrayOfByte[(i + 1)] == 10) && (paramArrayOfByte[(i + 2)] == 13) && (paramArrayOfByte[(i + 3)] == 10)) {
        return i + 4;
      }
      i += 1;
    }
    return 0;
  }
  
  private RandomAccessFile getTmpBucket()
  {
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(tempFileManager.createTempFile().getName(), "rw");
      return localRandomAccessFile;
    }
    catch (Exception localException)
    {
      System.err.println("Error: " + localException.getMessage());
    }
    return null;
  }
  
  private String saveTmpFile(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    Object localObject = "";
    if (paramInt2 > 0) {}
    try
    {
      localObject = tempFileManager.createTempFile();
      paramByteBuffer = paramByteBuffer.duplicate();
      FileChannel localFileChannel = new FileOutputStream(((NanoHTTPD.TempFile)localObject).getName()).getChannel();
      paramByteBuffer.position(paramInt1).limit(paramInt1 + paramInt2);
      localFileChannel.write(paramByteBuffer.slice());
      localObject = ((NanoHTTPD.TempFile)localObject).getName();
      return (String)localObject;
    }
    catch (Exception paramByteBuffer)
    {
      System.err.println("Error: " + paramByteBuffer.getMessage());
    }
    return "";
  }
  
  private int stripMultipartHeaders(ByteBuffer paramByteBuffer, int paramInt)
  {
    for (int i = paramInt;; i = paramInt + 1)
    {
      paramInt = i;
      if (i < paramByteBuffer.limit())
      {
        paramInt = i;
        if (paramByteBuffer.get(i) == 13)
        {
          i += 1;
          paramInt = i;
          if (paramByteBuffer.get(i) == 10)
          {
            i += 1;
            paramInt = i;
            if (paramByteBuffer.get(i) == 13)
            {
              i += 1;
              paramInt = i;
              if (paramByteBuffer.get(i) == 10) {
                paramInt = i;
              }
            }
          }
        }
      }
      else
      {
        return paramInt + 1;
      }
    }
  }
  
  public int[] getBoundaryPositions(ByteBuffer paramByteBuffer, byte[] paramArrayOfByte)
  {
    int j = 0;
    int k = -1;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramByteBuffer.limit())
    {
      int n;
      if (paramByteBuffer.get(i) == paramArrayOfByte[j])
      {
        int m = k;
        if (j == 0) {
          m = i;
        }
        int i1 = j + 1;
        n = i;
        k = m;
        j = i1;
        if (i1 == paramArrayOfByte.length)
        {
          localArrayList.add(Integer.valueOf(m));
          j = 0;
          k = -1;
          n = i;
        }
      }
      for (;;)
      {
        i = n + 1;
        break;
        n = i - j;
        j = 0;
        k = -1;
      }
    }
    paramByteBuffer = new int[localArrayList.size()];
    i = 0;
    while (i < paramByteBuffer.length)
    {
      paramByteBuffer[i] = ((Integer)localArrayList.get(i)).intValue();
      i += 1;
    }
    return paramByteBuffer;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore_3
    //   8: aload_3
    //   9: astore_2
    //   10: aload 6
    //   12: astore 4
    //   14: aload 5
    //   16: astore_1
    //   17: aload_0
    //   18: getfield 31	fi/iki/elonen/NanoHTTPD$HTTPSession:inputStream	Ljava/io/InputStream;
    //   21: astore 7
    //   23: aload 7
    //   25: ifnonnull +25 -> 50
    //   28: iconst_0
    //   29: ifeq +11 -> 40
    //   32: new 312	java/lang/NullPointerException
    //   35: dup
    //   36: invokespecial 313	java/lang/NullPointerException:<init>	()V
    //   39: athrow
    //   40: aload_0
    //   41: getfield 29	fi/iki/elonen/NanoHTTPD$HTTPSession:tempFileManager	Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    //   44: invokeinterface 316 1 0
    //   49: return
    //   50: aload_3
    //   51: astore_2
    //   52: aload 6
    //   54: astore 4
    //   56: aload 5
    //   58: astore_1
    //   59: sipush 8192
    //   62: newarray <illegal type>
    //   64: astore 7
    //   66: iconst_0
    //   67: istore 18
    //   69: iconst_0
    //   70: istore 17
    //   72: aload_3
    //   73: astore_2
    //   74: aload 6
    //   76: astore 4
    //   78: aload 5
    //   80: astore_1
    //   81: aload_0
    //   82: getfield 31	fi/iki/elonen/NanoHTTPD$HTTPSession:inputStream	Ljava/io/InputStream;
    //   85: aload 7
    //   87: iconst_0
    //   88: sipush 8192
    //   91: invokevirtual 322	java/io/InputStream:read	([BII)I
    //   94: istore 20
    //   96: iload 17
    //   98: istore 19
    //   100: iload 20
    //   102: ifle +38 -> 140
    //   105: iload 17
    //   107: iload 20
    //   109: iadd
    //   110: istore 17
    //   112: aload_3
    //   113: astore_2
    //   114: aload 6
    //   116: astore 4
    //   118: aload 5
    //   120: astore_1
    //   121: aload_0
    //   122: aload 7
    //   124: iload 17
    //   126: invokespecial 324	fi/iki/elonen/NanoHTTPD$HTTPSession:findHeaderEnd	([BI)I
    //   129: istore 18
    //   131: iload 18
    //   133: ifle +271 -> 404
    //   136: iload 17
    //   138: istore 19
    //   140: aload_3
    //   141: astore_2
    //   142: aload 6
    //   144: astore 4
    //   146: aload 5
    //   148: astore_1
    //   149: new 42	java/io/BufferedReader
    //   152: dup
    //   153: new 326	java/io/InputStreamReader
    //   156: dup
    //   157: new 328	java/io/ByteArrayInputStream
    //   160: dup
    //   161: aload 7
    //   163: iconst_0
    //   164: iload 19
    //   166: invokespecial 331	java/io/ByteArrayInputStream:<init>	([BII)V
    //   169: invokespecial 334	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   172: invokespecial 337	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   175: astore 12
    //   177: aload_3
    //   178: astore_2
    //   179: aload 6
    //   181: astore 4
    //   183: aload 5
    //   185: astore_1
    //   186: new 155	java/util/HashMap
    //   189: dup
    //   190: invokespecial 156	java/util/HashMap:<init>	()V
    //   193: astore 8
    //   195: aload_3
    //   196: astore_2
    //   197: aload 6
    //   199: astore 4
    //   201: aload 5
    //   203: astore_1
    //   204: new 155	java/util/HashMap
    //   207: dup
    //   208: invokespecial 156	java/util/HashMap:<init>	()V
    //   211: astore 10
    //   213: aload_3
    //   214: astore_2
    //   215: aload 6
    //   217: astore 4
    //   219: aload 5
    //   221: astore_1
    //   222: new 155	java/util/HashMap
    //   225: dup
    //   226: invokespecial 156	java/util/HashMap:<init>	()V
    //   229: astore 11
    //   231: aload_3
    //   232: astore_2
    //   233: aload 6
    //   235: astore 4
    //   237: aload 5
    //   239: astore_1
    //   240: new 155	java/util/HashMap
    //   243: dup
    //   244: invokespecial 156	java/util/HashMap:<init>	()V
    //   247: astore 9
    //   249: aload_3
    //   250: astore_2
    //   251: aload 6
    //   253: astore 4
    //   255: aload 5
    //   257: astore_1
    //   258: aload_0
    //   259: aload 12
    //   261: aload 8
    //   263: aload 10
    //   265: aload 11
    //   267: invokespecial 339	fi/iki/elonen/NanoHTTPD$HTTPSession:decodeHeader	(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    //   270: aload_3
    //   271: astore_2
    //   272: aload 6
    //   274: astore 4
    //   276: aload 5
    //   278: astore_1
    //   279: aload 8
    //   281: ldc 90
    //   283: invokeinterface 162 2 0
    //   288: checkcast 103	java/lang/String
    //   291: invokestatic 345	fi/iki/elonen/NanoHTTPD$Method:lookup	(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    //   294: astore 12
    //   296: aload 12
    //   298: ifnonnull +137 -> 435
    //   301: aload_3
    //   302: astore_2
    //   303: aload 6
    //   305: astore 4
    //   307: aload 5
    //   309: astore_1
    //   310: aload_0
    //   311: getfield 33	fi/iki/elonen/NanoHTTPD$HTTPSession:outputStream	Ljava/io/OutputStream;
    //   314: getstatic 61	fi/iki/elonen/NanoHTTPD$Response$Status:BAD_REQUEST	Lfi/iki/elonen/NanoHTTPD$Response$Status;
    //   317: ldc_w 347
    //   320: invokestatic 69	fi/iki/elonen/NanoHTTPD$Response:error	(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    //   323: aload_3
    //   324: astore_2
    //   325: aload 6
    //   327: astore 4
    //   329: aload 5
    //   331: astore_1
    //   332: new 38	java/lang/InterruptedException
    //   335: dup
    //   336: invokespecial 70	java/lang/InterruptedException:<init>	()V
    //   339: athrow
    //   340: astore_3
    //   341: aload_2
    //   342: astore_1
    //   343: aload_0
    //   344: getfield 33	fi/iki/elonen/NanoHTTPD$HTTPSession:outputStream	Ljava/io/OutputStream;
    //   347: getstatic 73	fi/iki/elonen/NanoHTTPD$Response$Status:INTERNAL_ERROR	Lfi/iki/elonen/NanoHTTPD$Response$Status;
    //   350: new 75	java/lang/StringBuilder
    //   353: dup
    //   354: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   357: ldc 78
    //   359: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: aload_3
    //   363: invokevirtual 85	java/io/IOException:getMessage	()Ljava/lang/String;
    //   366: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokestatic 69	fi/iki/elonen/NanoHTTPD$Response:error	(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    //   375: aload_2
    //   376: astore_1
    //   377: new 38	java/lang/InterruptedException
    //   380: dup
    //   381: invokespecial 70	java/lang/InterruptedException:<init>	()V
    //   384: athrow
    //   385: astore_1
    //   386: aload_2
    //   387: ifnull +7 -> 394
    //   390: aload_2
    //   391: invokevirtual 350	java/io/RandomAccessFile:close	()V
    //   394: aload_0
    //   395: getfield 29	fi/iki/elonen/NanoHTTPD$HTTPSession:tempFileManager	Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    //   398: invokeinterface 316 1 0
    //   403: return
    //   404: aload_3
    //   405: astore_2
    //   406: aload 6
    //   408: astore 4
    //   410: aload 5
    //   412: astore_1
    //   413: aload_0
    //   414: getfield 31	fi/iki/elonen/NanoHTTPD$HTTPSession:inputStream	Ljava/io/InputStream;
    //   417: aload 7
    //   419: iload 17
    //   421: sipush 8192
    //   424: iload 17
    //   426: isub
    //   427: invokevirtual 322	java/io/InputStream:read	([BII)I
    //   430: istore 20
    //   432: goto -336 -> 96
    //   435: aload_3
    //   436: astore_2
    //   437: aload 6
    //   439: astore 4
    //   441: aload 5
    //   443: astore_1
    //   444: aload 8
    //   446: ldc -122
    //   448: invokeinterface 162 2 0
    //   453: checkcast 103	java/lang/String
    //   456: astore 13
    //   458: aload_3
    //   459: astore_2
    //   460: aload 6
    //   462: astore 4
    //   464: aload 5
    //   466: astore_1
    //   467: aload_0
    //   468: aload 11
    //   470: invokespecial 352	fi/iki/elonen/NanoHTTPD$HTTPSession:extractContentLength	(Ljava/util/Map;)J
    //   473: lstore 23
    //   475: aload_3
    //   476: astore_2
    //   477: aload 6
    //   479: astore 4
    //   481: aload 5
    //   483: astore_1
    //   484: aload_0
    //   485: invokespecial 354	fi/iki/elonen/NanoHTTPD$HTTPSession:getTmpBucket	()Ljava/io/RandomAccessFile;
    //   488: astore_3
    //   489: iload 18
    //   491: iload 19
    //   493: if_icmpge +906 -> 1399
    //   496: aload_3
    //   497: astore_2
    //   498: aload_3
    //   499: astore 4
    //   501: aload_3
    //   502: astore_1
    //   503: aload_3
    //   504: aload 7
    //   506: iload 18
    //   508: iload 19
    //   510: iload 18
    //   512: isub
    //   513: invokevirtual 356	java/io/RandomAccessFile:write	([BII)V
    //   516: goto +883 -> 1399
    //   519: aload_3
    //   520: astore_2
    //   521: aload_3
    //   522: astore 4
    //   524: aload_3
    //   525: astore_1
    //   526: sipush 512
    //   529: newarray <illegal type>
    //   531: astore 5
    //   533: iload 19
    //   535: iflt +125 -> 660
    //   538: lload 21
    //   540: lconst_0
    //   541: lcmp
    //   542: ifle +118 -> 660
    //   545: aload_3
    //   546: astore_2
    //   547: aload_3
    //   548: astore 4
    //   550: aload_3
    //   551: astore_1
    //   552: aload_0
    //   553: getfield 31	fi/iki/elonen/NanoHTTPD$HTTPSession:inputStream	Ljava/io/InputStream;
    //   556: aload 5
    //   558: iconst_0
    //   559: sipush 512
    //   562: invokevirtual 322	java/io/InputStream:read	([BII)I
    //   565: istore 17
    //   567: lload 21
    //   569: iload 17
    //   571: i2l
    //   572: lsub
    //   573: lstore 23
    //   575: iload 17
    //   577: istore 19
    //   579: lload 23
    //   581: lstore 21
    //   583: iload 17
    //   585: ifle -52 -> 533
    //   588: aload_3
    //   589: astore_2
    //   590: aload_3
    //   591: astore 4
    //   593: aload_3
    //   594: astore_1
    //   595: aload_3
    //   596: aload 5
    //   598: iconst_0
    //   599: iload 17
    //   601: invokevirtual 356	java/io/RandomAccessFile:write	([BII)V
    //   604: iload 17
    //   606: istore 19
    //   608: lload 23
    //   610: lstore 21
    //   612: goto -79 -> 533
    //   615: astore_1
    //   616: aload 4
    //   618: ifnull +8 -> 626
    //   621: aload 4
    //   623: invokevirtual 350	java/io/RandomAccessFile:close	()V
    //   626: aload_0
    //   627: getfield 29	fi/iki/elonen/NanoHTTPD$HTTPSession:tempFileManager	Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    //   630: invokeinterface 316 1 0
    //   635: return
    //   636: iload 18
    //   638: ifeq +16 -> 654
    //   641: lload 23
    //   643: lstore 21
    //   645: lload 23
    //   647: ldc2_w 201
    //   650: lcmp
    //   651: ifne -132 -> 519
    //   654: lconst_0
    //   655: lstore 21
    //   657: goto -138 -> 519
    //   660: aload_3
    //   661: astore_2
    //   662: aload_3
    //   663: astore 4
    //   665: aload_3
    //   666: astore_1
    //   667: aload_3
    //   668: invokevirtual 357	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   671: getstatic 363	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   674: lconst_0
    //   675: aload_3
    //   676: invokevirtual 366	java/io/RandomAccessFile:length	()J
    //   679: invokevirtual 370	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   682: astore 15
    //   684: aload_3
    //   685: astore_2
    //   686: aload_3
    //   687: astore 4
    //   689: aload_3
    //   690: astore_1
    //   691: aload_3
    //   692: lconst_0
    //   693: invokevirtual 374	java/io/RandomAccessFile:seek	(J)V
    //   696: aload_3
    //   697: astore_2
    //   698: aload_3
    //   699: astore 4
    //   701: aload_3
    //   702: astore_1
    //   703: new 42	java/io/BufferedReader
    //   706: dup
    //   707: new 326	java/io/InputStreamReader
    //   710: dup
    //   711: new 376	java/io/FileInputStream
    //   714: dup
    //   715: aload_3
    //   716: invokevirtual 380	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   719: invokespecial 383	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   722: invokespecial 334	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   725: invokespecial 337	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   728: astore 14
    //   730: aload_3
    //   731: astore_2
    //   732: aload_3
    //   733: astore 4
    //   735: aload_3
    //   736: astore_1
    //   737: getstatic 387	fi/iki/elonen/NanoHTTPD$Method:POST	Lfi/iki/elonen/NanoHTTPD$Method;
    //   740: aload 12
    //   742: invokevirtual 390	fi/iki/elonen/NanoHTTPD$Method:equals	(Ljava/lang/Object;)Z
    //   745: ifeq +509 -> 1254
    //   748: ldc -83
    //   750: astore 7
    //   752: aload_3
    //   753: astore_2
    //   754: aload_3
    //   755: astore 4
    //   757: aload_3
    //   758: astore_1
    //   759: aload 11
    //   761: ldc -81
    //   763: invokeinterface 162 2 0
    //   768: checkcast 103	java/lang/String
    //   771: astore 16
    //   773: aconst_null
    //   774: astore 5
    //   776: aload 7
    //   778: astore 6
    //   780: aload 16
    //   782: ifnull +65 -> 847
    //   785: aload_3
    //   786: astore_2
    //   787: aload_3
    //   788: astore 4
    //   790: aload_3
    //   791: astore_1
    //   792: new 48	java/util/StringTokenizer
    //   795: dup
    //   796: aload 16
    //   798: ldc_w 392
    //   801: invokespecial 169	java/util/StringTokenizer:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   804: astore 8
    //   806: aload_3
    //   807: astore_2
    //   808: aload_3
    //   809: astore 4
    //   811: aload 7
    //   813: astore 6
    //   815: aload 8
    //   817: astore 5
    //   819: aload_3
    //   820: astore_1
    //   821: aload 8
    //   823: invokevirtual 55	java/util/StringTokenizer:hasMoreTokens	()Z
    //   826: ifeq +21 -> 847
    //   829: aload_3
    //   830: astore_2
    //   831: aload_3
    //   832: astore 4
    //   834: aload_3
    //   835: astore_1
    //   836: aload 8
    //   838: invokevirtual 93	java/util/StringTokenizer:nextToken	()Ljava/lang/String;
    //   841: astore 6
    //   843: aload 8
    //   845: astore 5
    //   847: aload_3
    //   848: astore_2
    //   849: aload_3
    //   850: astore 4
    //   852: aload_3
    //   853: astore_1
    //   854: ldc_w 394
    //   857: aload 6
    //   859: invokevirtual 398	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   862: ifeq +260 -> 1122
    //   865: aload_3
    //   866: astore_2
    //   867: aload_3
    //   868: astore 4
    //   870: aload_3
    //   871: astore_1
    //   872: aload 5
    //   874: invokevirtual 55	java/util/StringTokenizer:hasMoreTokens	()Z
    //   877: ifne +58 -> 935
    //   880: aload_3
    //   881: astore_2
    //   882: aload_3
    //   883: astore 4
    //   885: aload_3
    //   886: astore_1
    //   887: aload_0
    //   888: getfield 33	fi/iki/elonen/NanoHTTPD$HTTPSession:outputStream	Ljava/io/OutputStream;
    //   891: getstatic 61	fi/iki/elonen/NanoHTTPD$Response$Status:BAD_REQUEST	Lfi/iki/elonen/NanoHTTPD$Response$Status;
    //   894: ldc_w 400
    //   897: invokestatic 69	fi/iki/elonen/NanoHTTPD$Response:error	(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    //   900: aload_3
    //   901: astore_2
    //   902: aload_3
    //   903: astore 4
    //   905: aload_3
    //   906: astore_1
    //   907: new 38	java/lang/InterruptedException
    //   910: dup
    //   911: invokespecial 70	java/lang/InterruptedException:<init>	()V
    //   914: athrow
    //   915: astore_2
    //   916: aload_1
    //   917: ifnull +7 -> 924
    //   920: aload_1
    //   921: invokevirtual 350	java/io/RandomAccessFile:close	()V
    //   924: aload_0
    //   925: getfield 29	fi/iki/elonen/NanoHTTPD$HTTPSession:tempFileManager	Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    //   928: invokeinterface 316 1 0
    //   933: aload_2
    //   934: athrow
    //   935: aload_3
    //   936: astore_2
    //   937: aload_3
    //   938: astore 4
    //   940: aload_3
    //   941: astore_1
    //   942: aload 16
    //   944: aload 16
    //   946: ldc_w 402
    //   949: invokevirtual 178	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   952: ldc_w 402
    //   955: invokevirtual 129	java/lang/String:length	()I
    //   958: iadd
    //   959: aload 16
    //   961: invokevirtual 129	java/lang/String:length	()I
    //   964: invokevirtual 118	java/lang/String:substring	(II)Ljava/lang/String;
    //   967: astore 6
    //   969: aload_3
    //   970: astore_2
    //   971: aload_3
    //   972: astore 4
    //   974: aload_3
    //   975: astore_1
    //   976: aload 6
    //   978: astore 5
    //   980: aload 6
    //   982: ldc_w 404
    //   985: invokevirtual 407	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   988: ifeq +47 -> 1035
    //   991: aload_3
    //   992: astore_2
    //   993: aload_3
    //   994: astore 4
    //   996: aload_3
    //   997: astore_1
    //   998: aload 6
    //   1000: astore 5
    //   1002: aload 6
    //   1004: ldc_w 404
    //   1007: invokevirtual 407	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1010: ifeq +25 -> 1035
    //   1013: aload_3
    //   1014: astore_2
    //   1015: aload_3
    //   1016: astore 4
    //   1018: aload_3
    //   1019: astore_1
    //   1020: aload 6
    //   1022: iconst_1
    //   1023: aload 6
    //   1025: invokevirtual 129	java/lang/String:length	()I
    //   1028: iconst_1
    //   1029: isub
    //   1030: invokevirtual 118	java/lang/String:substring	(II)Ljava/lang/String;
    //   1033: astore 5
    //   1035: aload_3
    //   1036: astore_2
    //   1037: aload_3
    //   1038: astore 4
    //   1040: aload_3
    //   1041: astore_1
    //   1042: aload_0
    //   1043: aload 5
    //   1045: aload 15
    //   1047: aload 14
    //   1049: aload 10
    //   1051: aload 9
    //   1053: invokespecial 409	fi/iki/elonen/NanoHTTPD$HTTPSession:decodeMultipartData	(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    //   1056: aload_3
    //   1057: astore_2
    //   1058: aload_3
    //   1059: astore 4
    //   1061: aload_3
    //   1062: astore_1
    //   1063: aload_0
    //   1064: getfield 24	fi/iki/elonen/NanoHTTPD$HTTPSession:this$0	Lfi/iki/elonen/NanoHTTPD;
    //   1067: aload 13
    //   1069: aload 12
    //   1071: aload 11
    //   1073: aload 10
    //   1075: aload 9
    //   1077: invokevirtual 413	fi/iki/elonen/NanoHTTPD:serve	(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    //   1080: astore 5
    //   1082: aload 5
    //   1084: ifnonnull +221 -> 1305
    //   1087: aload_3
    //   1088: astore_2
    //   1089: aload_3
    //   1090: astore 4
    //   1092: aload_3
    //   1093: astore_1
    //   1094: aload_0
    //   1095: getfield 33	fi/iki/elonen/NanoHTTPD$HTTPSession:outputStream	Ljava/io/OutputStream;
    //   1098: getstatic 73	fi/iki/elonen/NanoHTTPD$Response$Status:INTERNAL_ERROR	Lfi/iki/elonen/NanoHTTPD$Response$Status;
    //   1101: ldc_w 415
    //   1104: invokestatic 69	fi/iki/elonen/NanoHTTPD$Response:error	(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    //   1107: aload_3
    //   1108: astore_2
    //   1109: aload_3
    //   1110: astore 4
    //   1112: aload_3
    //   1113: astore_1
    //   1114: new 38	java/lang/InterruptedException
    //   1117: dup
    //   1118: invokespecial 70	java/lang/InterruptedException:<init>	()V
    //   1121: athrow
    //   1122: ldc -83
    //   1124: astore 5
    //   1126: aload_3
    //   1127: astore_2
    //   1128: aload_3
    //   1129: astore 4
    //   1131: aload_3
    //   1132: astore_1
    //   1133: sipush 512
    //   1136: newarray <illegal type>
    //   1138: astore 6
    //   1140: aload_3
    //   1141: astore_2
    //   1142: aload_3
    //   1143: astore 4
    //   1145: aload_3
    //   1146: astore_1
    //   1147: aload 14
    //   1149: aload 6
    //   1151: invokevirtual 418	java/io/BufferedReader:read	([C)I
    //   1154: istore 17
    //   1156: iload 17
    //   1158: iflt +75 -> 1233
    //   1161: aload_3
    //   1162: astore_2
    //   1163: aload_3
    //   1164: astore 4
    //   1166: aload_3
    //   1167: astore_1
    //   1168: aload 5
    //   1170: ldc_w 420
    //   1173: invokevirtual 423	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   1176: ifne +57 -> 1233
    //   1179: aload_3
    //   1180: astore_2
    //   1181: aload_3
    //   1182: astore 4
    //   1184: aload_3
    //   1185: astore_1
    //   1186: new 75	java/lang/StringBuilder
    //   1189: dup
    //   1190: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   1193: aload 5
    //   1195: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1198: aload 6
    //   1200: iconst_0
    //   1201: iload 17
    //   1203: invokestatic 426	java/lang/String:valueOf	([CII)Ljava/lang/String;
    //   1206: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1209: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1212: astore 5
    //   1214: aload_3
    //   1215: astore_2
    //   1216: aload_3
    //   1217: astore 4
    //   1219: aload_3
    //   1220: astore_1
    //   1221: aload 14
    //   1223: aload 6
    //   1225: invokevirtual 418	java/io/BufferedReader:read	([C)I
    //   1228: istore 17
    //   1230: goto -74 -> 1156
    //   1233: aload_3
    //   1234: astore_2
    //   1235: aload_3
    //   1236: astore 4
    //   1238: aload_3
    //   1239: astore_1
    //   1240: aload_0
    //   1241: aload 5
    //   1243: invokevirtual 125	java/lang/String:trim	()Ljava/lang/String;
    //   1246: aload 10
    //   1248: invokespecial 115	fi/iki/elonen/NanoHTTPD$HTTPSession:decodeParms	(Ljava/lang/String;Ljava/util/Map;)V
    //   1251: goto -195 -> 1056
    //   1254: aload_3
    //   1255: astore_2
    //   1256: aload_3
    //   1257: astore 4
    //   1259: aload_3
    //   1260: astore_1
    //   1261: getstatic 429	fi/iki/elonen/NanoHTTPD$Method:PUT	Lfi/iki/elonen/NanoHTTPD$Method;
    //   1264: aload 12
    //   1266: invokevirtual 390	fi/iki/elonen/NanoHTTPD$Method:equals	(Ljava/lang/Object;)Z
    //   1269: ifeq -213 -> 1056
    //   1272: aload_3
    //   1273: astore_2
    //   1274: aload_3
    //   1275: astore 4
    //   1277: aload_3
    //   1278: astore_1
    //   1279: aload 9
    //   1281: ldc_w 431
    //   1284: aload_0
    //   1285: aload 15
    //   1287: iconst_0
    //   1288: aload 15
    //   1290: invokevirtual 282	java/nio/ByteBuffer:limit	()I
    //   1293: invokespecial 188	fi/iki/elonen/NanoHTTPD$HTTPSession:saveTmpFile	(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    //   1296: invokeinterface 99 3 0
    //   1301: pop
    //   1302: goto -246 -> 1056
    //   1305: aload_3
    //   1306: astore_2
    //   1307: aload_3
    //   1308: astore 4
    //   1310: aload_3
    //   1311: astore_1
    //   1312: aload 5
    //   1314: aload 12
    //   1316: invokevirtual 435	fi/iki/elonen/NanoHTTPD$Response:setRequestMethod	(Lfi/iki/elonen/NanoHTTPD$Method;)V
    //   1319: aload_3
    //   1320: astore_2
    //   1321: aload_3
    //   1322: astore 4
    //   1324: aload_3
    //   1325: astore_1
    //   1326: aload 5
    //   1328: aload_0
    //   1329: getfield 33	fi/iki/elonen/NanoHTTPD$HTTPSession:outputStream	Ljava/io/OutputStream;
    //   1332: invokestatic 439	fi/iki/elonen/NanoHTTPD$Response:access$400	(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V
    //   1335: aload_3
    //   1336: astore_2
    //   1337: aload_3
    //   1338: astore 4
    //   1340: aload_3
    //   1341: astore_1
    //   1342: aload 14
    //   1344: invokevirtual 440	java/io/BufferedReader:close	()V
    //   1347: aload_3
    //   1348: astore_2
    //   1349: aload_3
    //   1350: astore 4
    //   1352: aload_3
    //   1353: astore_1
    //   1354: aload_0
    //   1355: getfield 31	fi/iki/elonen/NanoHTTPD$HTTPSession:inputStream	Ljava/io/InputStream;
    //   1358: invokevirtual 441	java/io/InputStream:close	()V
    //   1361: aload_3
    //   1362: ifnull +7 -> 1369
    //   1365: aload_3
    //   1366: invokevirtual 350	java/io/RandomAccessFile:close	()V
    //   1369: aload_0
    //   1370: getfield 29	fi/iki/elonen/NanoHTTPD$HTTPSession:tempFileManager	Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    //   1373: invokeinterface 316 1 0
    //   1378: return
    //   1379: astore_1
    //   1380: goto -1340 -> 40
    //   1383: astore_1
    //   1384: goto -15 -> 1369
    //   1387: astore_1
    //   1388: goto -994 -> 394
    //   1391: astore_1
    //   1392: goto -766 -> 626
    //   1395: astore_1
    //   1396: goto -472 -> 924
    //   1399: iload 18
    //   1401: iload 19
    //   1403: if_icmpge -767 -> 636
    //   1406: lload 23
    //   1408: iload 19
    //   1410: iload 18
    //   1412: isub
    //   1413: iconst_1
    //   1414: iadd
    //   1415: i2l
    //   1416: lsub
    //   1417: lstore 21
    //   1419: goto -900 -> 519
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1422	0	this	HTTPSession
    //   16	361	1	localObject1	Object
    //   385	1	1	localThrowable	Throwable
    //   412	183	1	localObject2	Object
    //   615	1	1	localInterruptedException	InterruptedException
    //   666	688	1	localRandomAccessFile1	RandomAccessFile
    //   1379	1	1	localIOException1	IOException
    //   1383	1	1	localIOException2	IOException
    //   1387	1	1	localIOException3	IOException
    //   1391	1	1	localIOException4	IOException
    //   1395	1	1	localIOException5	IOException
    //   9	893	2	localObject3	Object
    //   915	19	2	localObject4	Object
    //   936	413	2	localRandomAccessFile2	RandomAccessFile
    //   7	317	3	localObject5	Object
    //   340	136	3	localIOException6	IOException
    //   488	878	3	localRandomAccessFile3	RandomAccessFile
    //   12	1339	4	localObject6	Object
    //   4	1323	5	localObject7	Object
    //   1	1223	6	localObject8	Object
    //   21	791	7	localObject9	Object
    //   193	651	8	localObject10	Object
    //   247	1033	9	localHashMap1	HashMap
    //   211	1036	10	localHashMap2	HashMap
    //   229	843	11	localHashMap3	HashMap
    //   175	1140	12	localObject11	Object
    //   456	612	13	str1	String
    //   728	615	14	localBufferedReader	BufferedReader
    //   682	607	15	localMappedByteBuffer	java.nio.MappedByteBuffer
    //   771	189	16	str2	String
    //   70	1159	17	i	int
    //   67	1346	18	j	int
    //   98	1315	19	k	int
    //   94	337	20	m	int
    //   538	30	21	localObject12	Object
    //   581	837	21	l1	long
    //   473	934	23	l2	long
    // Exception table:
    //   from	to	target	type
    //   17	23	340	java/io/IOException
    //   59	66	340	java/io/IOException
    //   81	96	340	java/io/IOException
    //   121	131	340	java/io/IOException
    //   149	177	340	java/io/IOException
    //   186	195	340	java/io/IOException
    //   204	213	340	java/io/IOException
    //   222	231	340	java/io/IOException
    //   240	249	340	java/io/IOException
    //   258	270	340	java/io/IOException
    //   279	296	340	java/io/IOException
    //   310	323	340	java/io/IOException
    //   332	340	340	java/io/IOException
    //   413	432	340	java/io/IOException
    //   444	458	340	java/io/IOException
    //   467	475	340	java/io/IOException
    //   484	489	340	java/io/IOException
    //   503	516	340	java/io/IOException
    //   526	533	340	java/io/IOException
    //   552	567	340	java/io/IOException
    //   595	604	340	java/io/IOException
    //   667	684	340	java/io/IOException
    //   691	696	340	java/io/IOException
    //   703	730	340	java/io/IOException
    //   737	748	340	java/io/IOException
    //   759	773	340	java/io/IOException
    //   792	806	340	java/io/IOException
    //   821	829	340	java/io/IOException
    //   836	843	340	java/io/IOException
    //   854	865	340	java/io/IOException
    //   872	880	340	java/io/IOException
    //   887	900	340	java/io/IOException
    //   907	915	340	java/io/IOException
    //   942	969	340	java/io/IOException
    //   980	991	340	java/io/IOException
    //   1002	1013	340	java/io/IOException
    //   1020	1035	340	java/io/IOException
    //   1042	1056	340	java/io/IOException
    //   1063	1082	340	java/io/IOException
    //   1094	1107	340	java/io/IOException
    //   1114	1122	340	java/io/IOException
    //   1133	1140	340	java/io/IOException
    //   1147	1156	340	java/io/IOException
    //   1168	1179	340	java/io/IOException
    //   1186	1214	340	java/io/IOException
    //   1221	1230	340	java/io/IOException
    //   1240	1251	340	java/io/IOException
    //   1261	1272	340	java/io/IOException
    //   1279	1302	340	java/io/IOException
    //   1312	1319	340	java/io/IOException
    //   1326	1335	340	java/io/IOException
    //   1342	1347	340	java/io/IOException
    //   1354	1361	340	java/io/IOException
    //   343	375	385	java/lang/Throwable
    //   377	385	385	java/lang/Throwable
    //   17	23	615	java/lang/InterruptedException
    //   59	66	615	java/lang/InterruptedException
    //   81	96	615	java/lang/InterruptedException
    //   121	131	615	java/lang/InterruptedException
    //   149	177	615	java/lang/InterruptedException
    //   186	195	615	java/lang/InterruptedException
    //   204	213	615	java/lang/InterruptedException
    //   222	231	615	java/lang/InterruptedException
    //   240	249	615	java/lang/InterruptedException
    //   258	270	615	java/lang/InterruptedException
    //   279	296	615	java/lang/InterruptedException
    //   310	323	615	java/lang/InterruptedException
    //   332	340	615	java/lang/InterruptedException
    //   413	432	615	java/lang/InterruptedException
    //   444	458	615	java/lang/InterruptedException
    //   467	475	615	java/lang/InterruptedException
    //   484	489	615	java/lang/InterruptedException
    //   503	516	615	java/lang/InterruptedException
    //   526	533	615	java/lang/InterruptedException
    //   552	567	615	java/lang/InterruptedException
    //   595	604	615	java/lang/InterruptedException
    //   667	684	615	java/lang/InterruptedException
    //   691	696	615	java/lang/InterruptedException
    //   703	730	615	java/lang/InterruptedException
    //   737	748	615	java/lang/InterruptedException
    //   759	773	615	java/lang/InterruptedException
    //   792	806	615	java/lang/InterruptedException
    //   821	829	615	java/lang/InterruptedException
    //   836	843	615	java/lang/InterruptedException
    //   854	865	615	java/lang/InterruptedException
    //   872	880	615	java/lang/InterruptedException
    //   887	900	615	java/lang/InterruptedException
    //   907	915	615	java/lang/InterruptedException
    //   942	969	615	java/lang/InterruptedException
    //   980	991	615	java/lang/InterruptedException
    //   1002	1013	615	java/lang/InterruptedException
    //   1020	1035	615	java/lang/InterruptedException
    //   1042	1056	615	java/lang/InterruptedException
    //   1063	1082	615	java/lang/InterruptedException
    //   1094	1107	615	java/lang/InterruptedException
    //   1114	1122	615	java/lang/InterruptedException
    //   1133	1140	615	java/lang/InterruptedException
    //   1147	1156	615	java/lang/InterruptedException
    //   1168	1179	615	java/lang/InterruptedException
    //   1186	1214	615	java/lang/InterruptedException
    //   1221	1230	615	java/lang/InterruptedException
    //   1240	1251	615	java/lang/InterruptedException
    //   1261	1272	615	java/lang/InterruptedException
    //   1279	1302	615	java/lang/InterruptedException
    //   1312	1319	615	java/lang/InterruptedException
    //   1326	1335	615	java/lang/InterruptedException
    //   1342	1347	615	java/lang/InterruptedException
    //   1354	1361	615	java/lang/InterruptedException
    //   17	23	915	finally
    //   59	66	915	finally
    //   81	96	915	finally
    //   121	131	915	finally
    //   149	177	915	finally
    //   186	195	915	finally
    //   204	213	915	finally
    //   222	231	915	finally
    //   240	249	915	finally
    //   258	270	915	finally
    //   279	296	915	finally
    //   310	323	915	finally
    //   332	340	915	finally
    //   343	375	915	finally
    //   377	385	915	finally
    //   413	432	915	finally
    //   444	458	915	finally
    //   467	475	915	finally
    //   484	489	915	finally
    //   503	516	915	finally
    //   526	533	915	finally
    //   552	567	915	finally
    //   595	604	915	finally
    //   667	684	915	finally
    //   691	696	915	finally
    //   703	730	915	finally
    //   737	748	915	finally
    //   759	773	915	finally
    //   792	806	915	finally
    //   821	829	915	finally
    //   836	843	915	finally
    //   854	865	915	finally
    //   872	880	915	finally
    //   887	900	915	finally
    //   907	915	915	finally
    //   942	969	915	finally
    //   980	991	915	finally
    //   1002	1013	915	finally
    //   1020	1035	915	finally
    //   1042	1056	915	finally
    //   1063	1082	915	finally
    //   1094	1107	915	finally
    //   1114	1122	915	finally
    //   1133	1140	915	finally
    //   1147	1156	915	finally
    //   1168	1179	915	finally
    //   1186	1214	915	finally
    //   1221	1230	915	finally
    //   1240	1251	915	finally
    //   1261	1272	915	finally
    //   1279	1302	915	finally
    //   1312	1319	915	finally
    //   1326	1335	915	finally
    //   1342	1347	915	finally
    //   1354	1361	915	finally
    //   32	40	1379	java/io/IOException
    //   1365	1369	1383	java/io/IOException
    //   390	394	1387	java/io/IOException
    //   621	626	1391	java/io/IOException
    //   920	924	1395	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.HTTPSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */