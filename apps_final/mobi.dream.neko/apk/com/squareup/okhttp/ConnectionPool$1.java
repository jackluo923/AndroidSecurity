package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Callable;

class ConnectionPool$1
  implements Callable<Void>
{
  ConnectionPool$1(ConnectionPool paramConnectionPool) {}
  
  public Void call()
    throws Exception
  {
    ArrayList localArrayList = new ArrayList(2);
    int i = 0;
    synchronized (this$0)
    {
      ListIterator localListIterator = ConnectionPool.access$000(this$0).listIterator(ConnectionPool.access$000(this$0).size());
      for (;;)
      {
        Connection localConnection;
        if (localListIterator.hasPrevious())
        {
          localConnection = (Connection)localListIterator.previous();
          if ((!localConnection.isAlive()) || (localConnection.isExpired(ConnectionPool.access$100(this$0))))
          {
            localListIterator.remove();
            localArrayList.add(localConnection);
            if (localArrayList.size() != 2) {
              continue;
            }
          }
        }
        else
        {
          localListIterator = ConnectionPool.access$000(this$0).listIterator(ConnectionPool.access$000(this$0).size());
          while ((localListIterator.hasPrevious()) && (i > ConnectionPool.access$200(this$0)))
          {
            localConnection = (Connection)localListIterator.previous();
            if (localConnection.isIdle())
            {
              localArrayList.add(localConnection);
              localListIterator.remove();
              i -= 1;
            }
          }
        }
        if (localConnection.isIdle()) {
          i += 1;
        }
      }
      ??? = localArrayList.iterator();
      if (((Iterator)???).hasNext()) {
        Util.closeQuietly((Connection)((Iterator)???).next());
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.ConnectionPool.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */