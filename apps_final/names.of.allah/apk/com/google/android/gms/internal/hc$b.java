package com.google.android.gms.internal;

import java.util.ArrayList;

public abstract class hc$b<TListener>
{
  private boolean Gg;
  private TListener mListener;
  
  public hc$b(TListener paramTListener)
  {
    Object localObject;
    mListener = localObject;
    Gg = false;
  }
  
  protected abstract void d(TListener paramTListener);
  
  protected abstract void fp();
  
  /* Error */
  public void fq()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/google/android/gms/internal/hc$b:mListener	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_0
    //   8: getfield 23	com/google/android/gms/internal/hc$b:Gg	Z
    //   11: ifeq +30 -> 41
    //   14: ldc 34
    //   16: new 36	java/lang/StringBuilder
    //   19: dup
    //   20: ldc 38
    //   22: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   29: ldc 47
    //   31: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokestatic 60	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: ifnull +34 -> 78
    //   47: aload_0
    //   48: aload_1
    //   49: invokevirtual 62	com/google/android/gms/internal/hc$b:d	(Ljava/lang/Object;)V
    //   52: aload_0
    //   53: monitorenter
    //   54: aload_0
    //   55: iconst_1
    //   56: putfield 23	com/google/android/gms/internal/hc$b:Gg	Z
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_0
    //   62: invokevirtual 65	com/google/android/gms/internal/hc$b:unregister	()V
    //   65: return
    //   66: astore_1
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_1
    //   70: athrow
    //   71: astore_1
    //   72: aload_0
    //   73: invokevirtual 67	com/google/android/gms/internal/hc$b:fp	()V
    //   76: aload_1
    //   77: athrow
    //   78: aload_0
    //   79: invokevirtual 67	com/google/android/gms/internal/hc$b:fp	()V
    //   82: goto -30 -> 52
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	b
    //   6	43	1	localObject1	Object
    //   66	4	1	localObject2	Object
    //   71	6	1	localRuntimeException	RuntimeException
    //   85	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	41	66	finally
    //   41	43	66	finally
    //   47	52	71	java/lang/RuntimeException
    //   54	61	85	finally
  }
  
  public void fr()
  {
    try
    {
      mListener = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void unregister()
  {
    fr();
    synchronized (hc.b(Gf))
    {
      hc.b(Gf).remove(this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */