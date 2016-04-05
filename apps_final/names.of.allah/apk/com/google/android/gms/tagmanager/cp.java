package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.lf.a;
import com.google.android.gms.internal.me;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

class cp
  implements o.f
{
  private final String aeq;
  private bg<lf.a> agK;
  private final ExecutorService agR;
  private final Context mContext;
  
  cp(Context paramContext, String paramString)
  {
    mContext = paramContext;
    aeq = paramString;
    agR = Executors.newSingleThreadExecutor();
  }
  
  private cq.c a(ByteArrayOutputStream paramByteArrayOutputStream)
  {
    try
    {
      paramByteArrayOutputStream = ba.bY(paramByteArrayOutputStream.toString("UTF-8"));
      return paramByteArrayOutputStream;
    }
    catch (UnsupportedEncodingException paramByteArrayOutputStream)
    {
      bh.z("Tried to convert binary resource to string for JSON parsing; not UTF-8 format");
      return null;
    }
    catch (JSONException paramByteArrayOutputStream)
    {
      bh.D("Resource is a UTF-8 encoded string but doesn't contain a JSON container");
    }
    return null;
  }
  
  private cq.c k(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = cq.b(c.f.a(paramArrayOfByte));
      return paramArrayOfByte;
    }
    catch (me paramArrayOfByte)
    {
      bh.D("Resource doesn't contain a binary container");
      return null;
    }
    catch (cq.g paramArrayOfByte)
    {
      bh.D("Resource doesn't contain a binary container");
    }
    return null;
  }
  
  public void a(bg<lf.a> parambg)
  {
    agK = parambg;
  }
  
  public void b(lf.a parama)
  {
    agR.execute(new cp.2(this, parama));
  }
  
  /* Error */
  boolean c(lf.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 112	com/google/android/gms/tagmanager/cp:mh	()Ljava/io/File;
    //   4: astore_3
    //   5: new 114	java/io/FileOutputStream
    //   8: dup
    //   9: aload_3
    //   10: invokespecial 117	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   13: astore_2
    //   14: aload_2
    //   15: aload_1
    //   16: invokestatic 123	com/google/android/gms/internal/mf:d	(Lcom/google/android/gms/internal/mf;)[B
    //   19: invokevirtual 127	java/io/FileOutputStream:write	([B)V
    //   22: aload_2
    //   23: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   26: iconst_1
    //   27: ireturn
    //   28: astore_1
    //   29: ldc -124
    //   31: invokestatic 135	com/google/android/gms/tagmanager/bh:A	(Ljava/lang/String;)V
    //   34: iconst_0
    //   35: ireturn
    //   36: astore_1
    //   37: ldc -119
    //   39: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   42: goto -16 -> 26
    //   45: astore_1
    //   46: ldc -117
    //   48: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   51: aload_3
    //   52: invokevirtual 145	java/io/File:delete	()Z
    //   55: pop
    //   56: aload_2
    //   57: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   60: iconst_0
    //   61: ireturn
    //   62: astore_1
    //   63: ldc -119
    //   65: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   68: iconst_0
    //   69: ireturn
    //   70: astore_1
    //   71: aload_2
    //   72: invokevirtual 130	java/io/FileOutputStream:close	()V
    //   75: aload_1
    //   76: athrow
    //   77: astore_2
    //   78: ldc -119
    //   80: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   83: goto -8 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	cp
    //   0	86	1	parama	lf.a
    //   13	59	2	localFileOutputStream	java.io.FileOutputStream
    //   77	1	2	localIOException	IOException
    //   4	48	3	localFile	File
    // Exception table:
    //   from	to	target	type
    //   5	14	28	java/io/FileNotFoundException
    //   22	26	36	java/io/IOException
    //   14	22	45	java/io/IOException
    //   56	60	62	java/io/IOException
    //   14	22	70	finally
    //   46	56	70	finally
    //   71	75	77	java/io/IOException
  }
  
  public cq.c dn(int paramInt)
  {
    bh.C("Atttempting to load container from resource ID " + paramInt);
    try
    {
      Object localObject2 = mContext.getResources().openRawResource(paramInt);
      Object localObject1 = new ByteArrayOutputStream();
      cq.b((InputStream)localObject2, (OutputStream)localObject1);
      localObject2 = a((ByteArrayOutputStream)localObject1);
      if (localObject2 != null) {
        return (cq.c)localObject2;
      }
      localObject1 = k(((ByteArrayOutputStream)localObject1).toByteArray());
      return (cq.c)localObject1;
    }
    catch (IOException localIOException)
    {
      bh.D("Error reading default container resource with ID " + paramInt);
      return null;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      bh.D("No default container resource found.");
    }
    return null;
  }
  
  public void lr()
  {
    agR.execute(new cp.1(this));
  }
  
  /* Error */
  void mg()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   4: ifnonnull +13 -> 17
    //   7: new 202	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc -52
    //   13: invokespecial 205	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_0
    //   18: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   21: invokeinterface 210 1 0
    //   26: ldc -44
    //   28: invokestatic 165	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   31: invokestatic 218	com/google/android/gms/tagmanager/cd:lY	()Lcom/google/android/gms/tagmanager/cd;
    //   34: invokevirtual 222	com/google/android/gms/tagmanager/cd:lZ	()Lcom/google/android/gms/tagmanager/cd$a;
    //   37: getstatic 228	com/google/android/gms/tagmanager/cd$a:agz	Lcom/google/android/gms/tagmanager/cd$a;
    //   40: if_acmpeq +15 -> 55
    //   43: invokestatic 218	com/google/android/gms/tagmanager/cd:lY	()Lcom/google/android/gms/tagmanager/cd;
    //   46: invokevirtual 222	com/google/android/gms/tagmanager/cd:lZ	()Lcom/google/android/gms/tagmanager/cd$a;
    //   49: getstatic 231	com/google/android/gms/tagmanager/cd$a:agA	Lcom/google/android/gms/tagmanager/cd$a;
    //   52: if_acmpne +32 -> 84
    //   55: aload_0
    //   56: getfield 24	com/google/android/gms/tagmanager/cp:aeq	Ljava/lang/String;
    //   59: invokestatic 218	com/google/android/gms/tagmanager/cd:lY	()Lcom/google/android/gms/tagmanager/cd;
    //   62: invokevirtual 234	com/google/android/gms/tagmanager/cd:getContainerId	()Ljava/lang/String;
    //   65: invokevirtual 240	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   68: ifeq +16 -> 84
    //   71: aload_0
    //   72: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   75: getstatic 246	com/google/android/gms/tagmanager/bg$a:agd	Lcom/google/android/gms/tagmanager/bg$a;
    //   78: invokeinterface 249 2 0
    //   83: return
    //   84: new 251	java/io/FileInputStream
    //   87: dup
    //   88: aload_0
    //   89: invokevirtual 112	com/google/android/gms/tagmanager/cp:mh	()Ljava/io/File;
    //   92: invokespecial 252	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   95: astore_1
    //   96: new 43	java/io/ByteArrayOutputStream
    //   99: dup
    //   100: invokespecial 178	java/io/ByteArrayOutputStream:<init>	()V
    //   103: astore_2
    //   104: aload_1
    //   105: aload_2
    //   106: invokestatic 181	com/google/android/gms/tagmanager/cq:b	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   109: aload_0
    //   110: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   113: aload_2
    //   114: invokevirtual 187	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   117: invokestatic 258	com/google/android/gms/internal/lf$a:l	([B)Lcom/google/android/gms/internal/lf$a;
    //   120: invokeinterface 262 2 0
    //   125: aload_1
    //   126: invokevirtual 263	java/io/FileInputStream:close	()V
    //   129: ldc_w 265
    //   132: invokestatic 165	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   135: return
    //   136: astore_1
    //   137: ldc_w 267
    //   140: invokestatic 61	com/google/android/gms/tagmanager/bh:z	(Ljava/lang/String;)V
    //   143: aload_0
    //   144: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   147: getstatic 246	com/google/android/gms/tagmanager/bg$a:agd	Lcom/google/android/gms/tagmanager/bg$a;
    //   150: invokeinterface 249 2 0
    //   155: return
    //   156: astore_1
    //   157: ldc_w 269
    //   160: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   163: goto -34 -> 129
    //   166: astore_2
    //   167: ldc_w 271
    //   170: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   173: aload_0
    //   174: getfield 88	com/google/android/gms/tagmanager/cp:agK	Lcom/google/android/gms/tagmanager/bg;
    //   177: getstatic 274	com/google/android/gms/tagmanager/bg$a:age	Lcom/google/android/gms/tagmanager/bg$a;
    //   180: invokeinterface 249 2 0
    //   185: aload_1
    //   186: invokevirtual 263	java/io/FileInputStream:close	()V
    //   189: goto -60 -> 129
    //   192: astore_1
    //   193: ldc_w 269
    //   196: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   199: goto -70 -> 129
    //   202: astore_2
    //   203: aload_1
    //   204: invokevirtual 263	java/io/FileInputStream:close	()V
    //   207: aload_2
    //   208: athrow
    //   209: astore_1
    //   210: ldc_w 269
    //   213: invokestatic 66	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   216: goto -9 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	cp
    //   95	31	1	localFileInputStream	java.io.FileInputStream
    //   136	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   156	30	1	localIOException1	IOException
    //   192	12	1	localIOException2	IOException
    //   209	1	1	localIOException3	IOException
    //   103	11	2	localByteArrayOutputStream	ByteArrayOutputStream
    //   166	1	2	localIOException4	IOException
    //   202	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   84	96	136	java/io/FileNotFoundException
    //   125	129	156	java/io/IOException
    //   96	125	166	java/io/IOException
    //   185	189	192	java/io/IOException
    //   96	125	202	finally
    //   167	185	202	finally
    //   203	207	209	java/io/IOException
  }
  
  File mh()
  {
    String str = "resource_" + aeq;
    return new File(mContext.getDir("google_tagmanager", 0), str);
  }
  
  public void release()
  {
    try
    {
      agR.shutdown();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */