package com.appyet.g;

import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class c
{
  int a = 4;
  public Map<String, String> b = new ConcurrentHashMap();
  
  public final void a(HttpURLConnection paramHttpURLConnection)
  {
    if ((a & 0x4) == 0) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramHttpURLConnection.getHeaderFields().size())
      {
        Object localObject = paramHttpURLConnection.getHeaderFieldKey(i);
        if ((localObject != null) && ("Set-Cookie".toLowerCase().equals(((String)localObject).toLowerCase())))
        {
          localObject = paramHttpURLConnection.getHeaderField(i).split(";")[0].split("=");
          if (localObject.length >= 2) {
            b.put(localObject[0], localObject[1]);
          }
        }
        i += 1;
      }
    }
  }
  
  public final void b(HttpURLConnection paramHttpURLConnection)
  {
    if ((a & 0x4) == 0) {
      return;
    }
    Iterator localIterator = b.entrySet().iterator();
    Map.Entry localEntry;
    for (String str = ""; localIterator.hasNext(); str = str + (String)localEntry.getKey() + "=" + (String)localEntry.getValue() + "; ") {
      localEntry = (Map.Entry)localIterator.next();
    }
    paramHttpURLConnection.setRequestProperty("Cookie", str);
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */