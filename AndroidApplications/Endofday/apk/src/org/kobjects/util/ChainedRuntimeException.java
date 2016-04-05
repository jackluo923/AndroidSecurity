package org.kobjects.util;

public class ChainedRuntimeException
  extends RuntimeException
{
  Exception chain;
  
  ChainedRuntimeException() {}
  
  ChainedRuntimeException(Exception paramException, String paramString) {}
  
  ChainedRuntimeException _create(Exception paramException, String paramString)
  {
    RuntimeException localRuntimeException = new java/lang/RuntimeException;
    String str = "ERR!";
    localRuntimeException.<init>(str);
    throw localRuntimeException;
  }
  
  public static ChainedRuntimeException create(Exception paramException, String paramString)
  {
    try
    {
      localObject = "org.kobjects.util.ChainedRuntimeExceptionSE";
      localObject = Class.forName((String)localObject);
      localObject = ((Class)localObject).newInstance();
      localObject = (ChainedRuntimeException)localObject;
      localObject = ((ChainedRuntimeException)localObject)._create(paramException, paramString);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject;
        ChainedRuntimeException localChainedRuntimeException = new org/kobjects/util/ChainedRuntimeException;
        localChainedRuntimeException.<init>(paramException, paramString);
      }
    }
    return (ChainedRuntimeException)localObject;
  }
  
  public Exception getChained()
  {
    Exception localException = chain;
    return localException;
  }
  
  public void printStackTrace()
  {
    super.printStackTrace();
    Exception localException = chain;
    if (localException != null)
    {
      localException = chain;
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     org.kobjects.util.ChainedRuntimeException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */