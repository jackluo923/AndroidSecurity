package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import java.util.concurrent.Callable;

class au$11
  implements Callable<Boolean>
{
  au$11(au paramau, ParcelFileDescriptor paramParcelFileDescriptor, byte[] paramArrayOfByte) {}
  
  /* Error */
  public Boolean no()
  {
    // Byte code:
    //   0: ldc 35
    //   2: iconst_3
    //   3: invokestatic 41	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   6: ifeq +28 -> 34
    //   9: ldc 35
    //   11: new 43	java/lang/StringBuilder
    //   14: dup
    //   15: ldc 45
    //   17: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   24: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   33: pop
    //   34: new 62	android/os/ParcelFileDescriptor$AutoCloseOutputStream
    //   37: dup
    //   38: aload_0
    //   39: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   42: invokespecial 65	android/os/ParcelFileDescriptor$AutoCloseOutputStream:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   45: astore_1
    //   46: aload_1
    //   47: aload_0
    //   48: getfield 21	com/google/android/gms/wearable/internal/au$11:yI	[B
    //   51: invokevirtual 69	android/os/ParcelFileDescriptor$AutoCloseOutputStream:write	([B)V
    //   54: aload_1
    //   55: invokevirtual 72	android/os/ParcelFileDescriptor$AutoCloseOutputStream:flush	()V
    //   58: ldc 35
    //   60: iconst_3
    //   61: invokestatic 41	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   64: ifeq +28 -> 92
    //   67: ldc 35
    //   69: new 43	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 74
    //   75: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_0
    //   79: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   82: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   91: pop
    //   92: iconst_1
    //   93: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   96: astore_2
    //   97: ldc 35
    //   99: iconst_3
    //   100: invokestatic 41	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   103: ifeq +28 -> 131
    //   106: ldc 35
    //   108: new 43	java/lang/StringBuilder
    //   111: dup
    //   112: ldc 82
    //   114: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload_0
    //   118: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   121: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   130: pop
    //   131: aload_1
    //   132: invokevirtual 85	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   135: aload_2
    //   136: areturn
    //   137: astore_2
    //   138: ldc 35
    //   140: new 43	java/lang/StringBuilder
    //   143: dup
    //   144: ldc 87
    //   146: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   153: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 90	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   162: pop
    //   163: ldc 35
    //   165: iconst_3
    //   166: invokestatic 41	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   169: ifeq +28 -> 197
    //   172: ldc 35
    //   174: new 43	java/lang/StringBuilder
    //   177: dup
    //   178: ldc 82
    //   180: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   183: aload_0
    //   184: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   187: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   196: pop
    //   197: aload_1
    //   198: invokevirtual 85	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   201: iconst_0
    //   202: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   205: areturn
    //   206: astore_2
    //   207: ldc 35
    //   209: iconst_3
    //   210: invokestatic 41	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   213: ifeq +28 -> 241
    //   216: ldc 35
    //   218: new 43	java/lang/StringBuilder
    //   221: dup
    //   222: ldc 82
    //   224: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   227: aload_0
    //   228: getfield 19	com/google/android/gms/wearable/internal/au$11:amg	Landroid/os/ParcelFileDescriptor;
    //   231: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   240: pop
    //   241: aload_1
    //   242: invokevirtual 85	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   245: aload_2
    //   246: athrow
    //   247: astore_1
    //   248: goto -3 -> 245
    //   251: astore_1
    //   252: goto -51 -> 201
    //   255: astore_1
    //   256: aload_2
    //   257: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	this	11
    //   45	197	1	localAutoCloseOutputStream	android.os.ParcelFileDescriptor.AutoCloseOutputStream
    //   247	1	1	localIOException1	java.io.IOException
    //   251	1	1	localIOException2	java.io.IOException
    //   255	1	1	localIOException3	java.io.IOException
    //   96	40	2	localBoolean1	Boolean
    //   137	1	2	localIOException4	java.io.IOException
    //   206	51	2	localBoolean2	Boolean
    // Exception table:
    //   from	to	target	type
    //   46	92	137	java/io/IOException
    //   92	97	137	java/io/IOException
    //   46	92	206	finally
    //   92	97	206	finally
    //   138	163	206	finally
    //   207	241	247	java/io/IOException
    //   241	245	247	java/io/IOException
    //   163	197	251	java/io/IOException
    //   197	201	251	java/io/IOException
    //   97	131	255	java/io/IOException
    //   131	135	255	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */