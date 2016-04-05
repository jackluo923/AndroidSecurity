package mobi.monaca.framework.util;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.conn.util.InetAddressUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class NetworkUtils
{
  public static String getIPAddress(boolean paramBoolean)
  {
    try
    {
      label42:
      Object localObject2;
      boolean bool;
      do
      {
        do
        {
          do
          {
            localObject1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            break label42;
            Iterator localIterator;
            while (!localIterator.hasNext())
            {
              if (!((Iterator)localObject1).hasNext()) {
                break;
              }
              localIterator = Collections.list(((NetworkInterface)((Iterator)localObject1).next()).getInetAddresses()).iterator();
            }
            localObject2 = (InetAddress)localIterator.next();
          } while (((InetAddress)localObject2).isLoopbackAddress());
          localObject2 = ((InetAddress)localObject2).getHostAddress().toUpperCase();
          bool = InetAddressUtils.isIPv4Address((String)localObject2);
          if (!paramBoolean) {
            break;
          }
        } while (!bool);
        return (String)localObject2;
      } while (bool);
      int i = ((String)localObject2).indexOf('%');
      Object localObject1 = localObject2;
      if (i >= 0)
      {
        localObject1 = ((String)localObject2).substring(0, i);
        return (String)localObject1;
      }
    }
    catch (Exception localException)
    {
      String str = "";
      return str;
    }
  }
  
  public static JSONObject getIPAddresses()
    throws SocketException, JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
    while (localIterator1.hasNext())
    {
      NetworkInterface localNetworkInterface = (NetworkInterface)localIterator1.next();
      Iterator localIterator2 = Collections.list(localNetworkInterface.getInetAddresses()).iterator();
      while (localIterator2.hasNext())
      {
        Object localObject = (InetAddress)localIterator2.next();
        if (!((InetAddress)localObject).isLoopbackAddress())
        {
          localObject = ((InetAddress)localObject).getHostAddress().toUpperCase();
          if (InetAddressUtils.isIPv4Address((String)localObject)) {
            localJSONObject.put(localNetworkInterface.getName(), localObject);
          }
        }
      }
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.NetworkUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */