package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Dns;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.net.ssl.SSLHandshakeException;

public final class RouteSelector
{
  private static final int TLS_MODE_COMPATIBLE = 0;
  private static final int TLS_MODE_MODERN = 1;
  private static final int TLS_MODE_NULL = -1;
  private final Address address;
  private final Dns dns;
  private final Set<Route> failedRoutes;
  private boolean hasNextProxy;
  private InetSocketAddress lastInetSocketAddress;
  private Proxy lastProxy;
  private int nextSocketAddressIndex;
  private int nextTlsMode = -1;
  private final ConnectionPool pool;
  private final List<Route> postponedRoutes;
  private final ProxySelector proxySelector;
  private Iterator<Proxy> proxySelectorProxies;
  private InetAddress[] socketAddresses;
  private int socketPort;
  private final URI uri;
  private Proxy userSpecifiedProxy;
  
  public RouteSelector(Address paramAddress, URI paramURI, ProxySelector paramProxySelector, ConnectionPool paramConnectionPool, Dns paramDns, Set<Route> paramSet)
  {
    address = paramAddress;
    uri = paramURI;
    proxySelector = paramProxySelector;
    pool = paramConnectionPool;
    dns = paramDns;
    failedRoutes = paramSet;
    postponedRoutes = new LinkedList();
    resetNextProxy(paramURI, paramAddress.getProxy());
  }
  
  private boolean hasNextInetSocketAddress()
  {
    return socketAddresses != null;
  }
  
  private boolean hasNextPostponed()
  {
    return !postponedRoutes.isEmpty();
  }
  
  private boolean hasNextProxy()
  {
    return hasNextProxy;
  }
  
  private boolean hasNextTlsMode()
  {
    return nextTlsMode != -1;
  }
  
  private InetSocketAddress nextInetSocketAddress()
    throws UnknownHostException
  {
    Object localObject = socketAddresses;
    int i = nextSocketAddressIndex;
    nextSocketAddressIndex = (i + 1);
    localObject = new InetSocketAddress(localObject[i], socketPort);
    if (nextSocketAddressIndex == socketAddresses.length)
    {
      socketAddresses = null;
      nextSocketAddressIndex = 0;
    }
    return (InetSocketAddress)localObject;
  }
  
  private Route nextPostponed()
  {
    return (Route)postponedRoutes.remove(0);
  }
  
  private Proxy nextProxy()
  {
    if (userSpecifiedProxy != null)
    {
      hasNextProxy = false;
      return userSpecifiedProxy;
    }
    if (proxySelectorProxies != null) {
      while (proxySelectorProxies.hasNext())
      {
        Proxy localProxy = (Proxy)proxySelectorProxies.next();
        if (localProxy.type() != Proxy.Type.DIRECT) {
          return localProxy;
        }
      }
    }
    hasNextProxy = false;
    return Proxy.NO_PROXY;
  }
  
  private int nextTlsMode()
  {
    if (nextTlsMode == 1)
    {
      nextTlsMode = 0;
      return 1;
    }
    if (nextTlsMode == 0)
    {
      nextTlsMode = -1;
      return 0;
    }
    throw new AssertionError();
  }
  
  private void resetNextInetSocketAddress(Proxy paramProxy)
    throws UnknownHostException
  {
    socketAddresses = null;
    if (paramProxy.type() == Proxy.Type.DIRECT) {
      paramProxy = uri.getHost();
    }
    InetSocketAddress localInetSocketAddress;
    for (socketPort = Util.getEffectivePort(uri);; socketPort = localInetSocketAddress.getPort())
    {
      socketAddresses = dns.getAllByName(paramProxy);
      nextSocketAddressIndex = 0;
      return;
      paramProxy = paramProxy.address();
      if (!(paramProxy instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + paramProxy.getClass());
      }
      localInetSocketAddress = (InetSocketAddress)paramProxy;
      paramProxy = localInetSocketAddress.getHostName();
    }
  }
  
  private void resetNextProxy(URI paramURI, Proxy paramProxy)
  {
    hasNextProxy = true;
    if (paramProxy != null) {
      userSpecifiedProxy = paramProxy;
    }
    do
    {
      return;
      paramURI = proxySelector.select(paramURI);
    } while (paramURI == null);
    proxySelectorProxies = paramURI.iterator();
  }
  
  private void resetNextTlsMode()
  {
    if (address.getSslSocketFactory() != null) {}
    for (int i = 1;; i = 0)
    {
      nextTlsMode = i;
      return;
    }
  }
  
  public void connectFailed(Connection paramConnection, IOException paramIOException)
  {
    paramConnection = paramConnection.getRoute();
    if ((paramConnection.getProxy().type() != Proxy.Type.DIRECT) && (proxySelector != null)) {
      proxySelector.connectFailed(uri, paramConnection.getProxy().address(), paramIOException);
    }
    failedRoutes.add(paramConnection);
    if (!(paramIOException instanceof SSLHandshakeException)) {
      failedRoutes.add(paramConnection.flipTlsMode());
    }
  }
  
  public boolean hasNext()
  {
    return (hasNextTlsMode()) || (hasNextInetSocketAddress()) || (hasNextProxy()) || (hasNextPostponed());
  }
  
  public Connection next()
    throws IOException
  {
    boolean bool = true;
    Object localObject = pool.get(address);
    if (localObject != null) {
      return (Connection)localObject;
    }
    if (!hasNextTlsMode())
    {
      if (!hasNextInetSocketAddress())
      {
        if (!hasNextProxy())
        {
          if (!hasNextPostponed()) {
            throw new NoSuchElementException();
          }
          return new Connection(nextPostponed());
        }
        lastProxy = nextProxy();
        resetNextInetSocketAddress(lastProxy);
      }
      lastInetSocketAddress = nextInetSocketAddress();
      resetNextTlsMode();
    }
    if (nextTlsMode() == 1) {}
    for (;;)
    {
      localObject = new Route(address, lastProxy, lastInetSocketAddress, bool);
      if (!failedRoutes.contains(localObject)) {
        break;
      }
      postponedRoutes.add(localObject);
      return next();
      bool = false;
    }
    return new Connection((Route)localObject);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.RouteSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */