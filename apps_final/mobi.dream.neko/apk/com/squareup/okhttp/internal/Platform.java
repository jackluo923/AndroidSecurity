package com.squareup.okhttp.internal;

import com.squareup.okhttp.OkHttpClient;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.net.ssl.SSLSocket;

public class Platform
{
  private static final Platform PLATFORM = ;
  private Constructor<DeflaterOutputStream> deflaterConstructor;
  
  /* Error */
  private static Platform findPlatform()
  {
    // Byte code:
    //   0: ldc 44
    //   2: ldc 46
    //   4: iconst_0
    //   5: anewarray 48	java/lang/Class
    //   8: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   11: astore_0
    //   12: ldc 54
    //   14: invokestatic 58	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   17: astore_1
    //   18: aload_1
    //   19: ldc 60
    //   21: iconst_1
    //   22: anewarray 48	java/lang/Class
    //   25: dup
    //   26: iconst_0
    //   27: getstatic 66	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   30: aastore
    //   31: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   34: astore_2
    //   35: aload_1
    //   36: ldc 68
    //   38: iconst_1
    //   39: anewarray 48	java/lang/Class
    //   42: dup
    //   43: iconst_0
    //   44: ldc 70
    //   46: aastore
    //   47: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   50: astore_3
    //   51: new 11	com/squareup/okhttp/internal/Platform$Android41
    //   54: dup
    //   55: aload_0
    //   56: aload_1
    //   57: aload_2
    //   58: aload_3
    //   59: aload_1
    //   60: ldc 72
    //   62: iconst_1
    //   63: anewarray 48	java/lang/Class
    //   66: dup
    //   67: iconst_0
    //   68: ldc 74
    //   70: aastore
    //   71: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   74: aload_1
    //   75: ldc 76
    //   77: iconst_0
    //   78: anewarray 48	java/lang/Class
    //   81: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   84: aconst_null
    //   85: invokespecial 79	com/squareup/okhttp/internal/Platform$Android41:<init>	(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    //   88: astore 4
    //   90: aload 4
    //   92: areturn
    //   93: astore_0
    //   94: new 2	com/squareup/okhttp/internal/Platform
    //   97: dup
    //   98: invokespecial 80	com/squareup/okhttp/internal/Platform:<init>	()V
    //   101: areturn
    //   102: astore 4
    //   104: new 8	com/squareup/okhttp/internal/Platform$Android23
    //   107: dup
    //   108: aload_0
    //   109: aload_1
    //   110: aload_2
    //   111: aload_3
    //   112: aconst_null
    //   113: invokespecial 83	com/squareup/okhttp/internal/Platform$Android23:<init>	(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    //   116: astore_1
    //   117: aload_1
    //   118: areturn
    //   119: astore_1
    //   120: ldc 85
    //   122: invokestatic 58	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   125: astore_1
    //   126: new 87	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   133: ldc 85
    //   135: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc 94
    //   140: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokestatic 58	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   149: astore_2
    //   150: new 87	java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   157: ldc 85
    //   159: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc 100
    //   164: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 58	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   173: astore_3
    //   174: new 87	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   181: ldc 85
    //   183: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: ldc 102
    //   188: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 58	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   197: astore 4
    //   199: new 17	com/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform
    //   202: dup
    //   203: aload_0
    //   204: aload_1
    //   205: ldc 104
    //   207: iconst_2
    //   208: anewarray 48	java/lang/Class
    //   211: dup
    //   212: iconst_0
    //   213: ldc 106
    //   215: aastore
    //   216: dup
    //   217: iconst_1
    //   218: aload_2
    //   219: aastore
    //   220: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   223: aload_1
    //   224: ldc 108
    //   226: iconst_1
    //   227: anewarray 48	java/lang/Class
    //   230: dup
    //   231: iconst_0
    //   232: ldc 106
    //   234: aastore
    //   235: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   238: aload_3
    //   239: aload 4
    //   241: invokespecial 111	com/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   244: astore_1
    //   245: aload_1
    //   246: areturn
    //   247: astore_1
    //   248: aload_0
    //   249: ifnull +13 -> 262
    //   252: new 14	com/squareup/okhttp/internal/Platform$Java5
    //   255: dup
    //   256: aload_0
    //   257: aconst_null
    //   258: invokespecial 114	com/squareup/okhttp/internal/Platform$Java5:<init>	(Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    //   261: areturn
    //   262: new 2	com/squareup/okhttp/internal/Platform
    //   265: dup
    //   266: invokespecial 80	com/squareup/okhttp/internal/Platform:<init>	()V
    //   269: areturn
    //   270: astore_1
    //   271: goto -23 -> 248
    //   274: astore_1
    //   275: goto -155 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   11	45	0	localMethod	Method
    //   93	164	0	localNoSuchMethodException1	NoSuchMethodException
    //   17	101	1	localObject1	Object
    //   119	1	1	localNoSuchMethodException2	NoSuchMethodException
    //   125	121	1	localObject2	Object
    //   247	1	1	localNoSuchMethodException3	NoSuchMethodException
    //   270	1	1	localClassNotFoundException1	ClassNotFoundException
    //   274	1	1	localClassNotFoundException2	ClassNotFoundException
    //   34	185	2	localObject3	Object
    //   50	189	3	localObject4	Object
    //   88	3	4	localAndroid41	Android41
    //   102	1	4	localNoSuchMethodException4	NoSuchMethodException
    //   197	43	4	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   0	12	93	java/lang/NoSuchMethodException
    //   51	90	102	java/lang/NoSuchMethodException
    //   12	51	119	java/lang/NoSuchMethodException
    //   104	117	119	java/lang/NoSuchMethodException
    //   120	245	247	java/lang/NoSuchMethodException
    //   120	245	270	java/lang/ClassNotFoundException
    //   12	51	274	java/lang/ClassNotFoundException
    //   51	90	274	java/lang/ClassNotFoundException
    //   104	117	274	java/lang/ClassNotFoundException
  }
  
  public static Platform get()
  {
    return PLATFORM;
  }
  
  public void enableTlsExtensions(SSLSocket paramSSLSocket, String paramString) {}
  
  public int getMtu(Socket paramSocket)
    throws IOException
  {
    return 1400;
  }
  
  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public void logW(String paramString)
  {
    System.out.println(paramString);
  }
  
  public OutputStream newDeflaterOutputStream(OutputStream paramOutputStream, Deflater paramDeflater, boolean paramBoolean)
  {
    try
    {
      Constructor localConstructor2 = deflaterConstructor;
      Constructor localConstructor1 = localConstructor2;
      if (localConstructor2 == null)
      {
        localConstructor1 = DeflaterOutputStream.class.getConstructor(new Class[] { OutputStream.class, Deflater.class, Boolean.TYPE });
        deflaterConstructor = localConstructor1;
      }
      paramOutputStream = (OutputStream)localConstructor1.newInstance(new Object[] { paramOutputStream, paramDeflater, Boolean.valueOf(paramBoolean) });
      return paramOutputStream;
    }
    catch (NoSuchMethodException paramOutputStream)
    {
      throw new UnsupportedOperationException("Cannot SPDY; no SYNC_FLUSH available");
    }
    catch (InvocationTargetException paramOutputStream)
    {
      if ((paramOutputStream.getCause() instanceof RuntimeException)) {}
      for (paramOutputStream = (RuntimeException)paramOutputStream.getCause();; paramOutputStream = new RuntimeException(paramOutputStream.getCause())) {
        throw paramOutputStream;
      }
    }
    catch (InstantiationException paramOutputStream)
    {
      throw new RuntimeException(paramOutputStream);
    }
    catch (IllegalAccessException paramOutputStream)
    {
      throw new AssertionError();
    }
  }
  
  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte) {}
  
  public void supportTlsIntolerantServer(SSLSocket paramSSLSocket)
  {
    paramSSLSocket.setEnabledProtocols(new String[] { "SSLv3" });
  }
  
  public void tagSocket(Socket paramSocket)
    throws SocketException
  {}
  
  public URI toUriLenient(URL paramURL)
    throws URISyntaxException
  {
    return paramURL.toURI();
  }
  
  public void untagSocket(Socket paramSocket)
    throws SocketException
  {}
  
  private static class Android23
    extends Platform.Java5
  {
    protected final Class<?> openSslSocketClass;
    private final Method setHostname;
    private final Method setUseSessionTickets;
    
    private Android23(Method paramMethod1, Class<?> paramClass, Method paramMethod2, Method paramMethod3)
    {
      super(null);
      openSslSocketClass = paramClass;
      setUseSessionTickets = paramMethod2;
      setHostname = paramMethod3;
    }
    
    public void enableTlsExtensions(SSLSocket paramSSLSocket, String paramString)
    {
      super.enableTlsExtensions(paramSSLSocket, paramString);
      if (openSslSocketClass.isInstance(paramSSLSocket)) {}
      try
      {
        setUseSessionTickets.invoke(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
        setHostname.invoke(paramSSLSocket, new Object[] { paramString });
        return;
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new RuntimeException(paramSSLSocket);
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
    }
  }
  
  private static class Android41
    extends Platform.Android23
  {
    private final Method getNpnSelectedProtocol;
    private final Method setNpnProtocols;
    
    private Android41(Method paramMethod1, Class<?> paramClass, Method paramMethod2, Method paramMethod3, Method paramMethod4, Method paramMethod5)
    {
      super(paramClass, paramMethod2, paramMethod3, null);
      setNpnProtocols = paramMethod4;
      getNpnSelectedProtocol = paramMethod5;
    }
    
    public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
    {
      if (!openSslSocketClass.isInstance(paramSSLSocket)) {
        return null;
      }
      try
      {
        paramSSLSocket = (byte[])getNpnSelectedProtocol.invoke(paramSSLSocket, new Object[0]);
        return paramSSLSocket;
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new RuntimeException(paramSSLSocket);
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
    }
    
    public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
    {
      if (!openSslSocketClass.isInstance(paramSSLSocket)) {
        return;
      }
      try
      {
        setNpnProtocols.invoke(paramSSLSocket, new Object[] { paramArrayOfByte });
        return;
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new RuntimeException(paramSSLSocket);
      }
    }
  }
  
  private static class Java5
    extends Platform
  {
    private final Method getMtu;
    
    private Java5(Method paramMethod)
    {
      getMtu = paramMethod;
    }
    
    public int getMtu(Socket paramSocket)
      throws IOException
    {
      try
      {
        paramSocket = NetworkInterface.getByInetAddress(paramSocket.getLocalAddress());
        int i = ((Integer)getMtu.invoke(paramSocket, new Object[0])).intValue();
        return i;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new AssertionError(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        if ((paramSocket.getCause() instanceof IOException)) {
          throw ((IOException)paramSocket.getCause());
        }
        throw new RuntimeException(paramSocket.getCause());
      }
    }
  }
  
  private static class JdkWithJettyNpnPlatform
    extends Platform.Java5
  {
    private final Class<?> clientProviderClass;
    private final Method getMethod;
    private final Method putMethod;
    private final Class<?> serverProviderClass;
    
    public JdkWithJettyNpnPlatform(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
    {
      super(null);
      putMethod = paramMethod2;
      getMethod = paramMethod3;
      clientProviderClass = paramClass1;
      serverProviderClass = paramClass2;
    }
    
    public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
    {
      try
      {
        paramSSLSocket = (Platform.JettyNpnProvider)Proxy.getInvocationHandler(getMethod.invoke(null, new Object[] { paramSSLSocket }));
        if ((!Platform.JettyNpnProvider.access$300(paramSSLSocket)) && (Platform.JettyNpnProvider.access$400(paramSSLSocket) == null))
        {
          Logger.getLogger(OkHttpClient.class.getName()).log(Level.INFO, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?");
          return null;
        }
        if (!Platform.JettyNpnProvider.access$300(paramSSLSocket))
        {
          paramSSLSocket = Platform.JettyNpnProvider.access$400(paramSSLSocket).getBytes("US-ASCII");
          return paramSSLSocket;
        }
      }
      catch (UnsupportedEncodingException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError();
      }
      return null;
    }
    
    public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
    {
      try
      {
        Object localObject = new ArrayList();
        int j;
        for (int i = 0; i < paramArrayOfByte.length; i = j + i)
        {
          j = i + 1;
          i = paramArrayOfByte[i];
          ((List)localObject).add(new String(paramArrayOfByte, j, i, "US-ASCII"));
        }
        paramArrayOfByte = Platform.class.getClassLoader();
        Class localClass1 = clientProviderClass;
        Class localClass2 = serverProviderClass;
        localObject = new Platform.JettyNpnProvider((List)localObject);
        paramArrayOfByte = Proxy.newProxyInstance(paramArrayOfByte, new Class[] { localClass1, localClass2 }, (InvocationHandler)localObject);
        putMethod.invoke(null, new Object[] { paramSSLSocket, paramArrayOfByte });
        return;
      }
      catch (UnsupportedEncodingException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
    }
  }
  
  private static class JettyNpnProvider
    implements InvocationHandler
  {
    private final List<String> protocols;
    private String selected;
    private boolean unsupported;
    
    public JettyNpnProvider(List<String> paramList)
    {
      protocols = paramList;
    }
    
    public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      String str = paramMethod.getName();
      Class localClass = paramMethod.getReturnType();
      paramObject = paramArrayOfObject;
      if (paramArrayOfObject == null) {
        paramObject = Util.EMPTY_STRING_ARRAY;
      }
      if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
        return Boolean.valueOf(true);
      }
      if ((str.equals("unsupported")) && (Void.TYPE == localClass))
      {
        unsupported = true;
        return null;
      }
      if ((str.equals("protocols")) && (paramObject.length == 0)) {
        return protocols;
      }
      if ((str.equals("selectProtocol")) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] == null) || ((paramObject[0] instanceof List))))
      {
        paramObject = (List)paramObject[0];
        selected = ((String)protocols.get(0));
        return selected;
      }
      if ((str.equals("protocolSelected")) && (paramObject.length == 1))
      {
        selected = ((String)paramObject[0]);
        return null;
      }
      return paramMethod.invoke(this, (Object[])paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */