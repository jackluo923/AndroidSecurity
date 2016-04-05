package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;

class SpdyConnection$Reader
  implements Runnable, SpdyReader.Handler
{
  private SpdyConnection$Reader(SpdyConnection paramSpdyConnection) {}
  
  public void data(int paramInt1, int paramInt2, InputStream paramInputStream, int paramInt3)
    throws IOException
  {
    SpdyStream localSpdyStream = SpdyConnection.access$900(this$0, paramInt2);
    if (localSpdyStream == null)
    {
      this$0.writeSynResetLater(paramInt2, 2);
      Util.skipByReading(paramInputStream, paramInt3);
    }
    do
    {
      return;
      localSpdyStream.receiveData(paramInputStream, paramInt3);
    } while ((paramInt1 & 0x1) == 0);
    localSpdyStream.receiveFin();
  }
  
  public void goAway(int paramInt1, int paramInt2, int paramInt3)
  {
    synchronized (this$0)
    {
      SpdyConnection.access$1002(this$0, true);
      Iterator localIterator = SpdyConnection.access$1200(this$0).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((((Integer)localEntry.getKey()).intValue() > paramInt2) && (((SpdyStream)localEntry.getValue()).isLocallyInitiated()))
        {
          ((SpdyStream)localEntry.getValue()).receiveRstStream(3);
          localIterator.remove();
        }
      }
    }
  }
  
  public void headers(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException
  {
    SpdyStream localSpdyStream = SpdyConnection.access$900(this$0, paramInt2);
    if (localSpdyStream != null) {
      localSpdyStream.receiveHeaders(paramList);
    }
  }
  
  public void noop() {}
  
  public void ping(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2 = this$0.client;
    if (paramInt2 % 2 == 1)
    {
      if (bool2 == bool1) {
        break label42;
      }
      SpdyConnection.access$1600(this$0, paramInt2, null);
    }
    label42:
    Ping localPing;
    do
    {
      return;
      bool1 = false;
      break;
      localPing = SpdyConnection.access$1700(this$0, paramInt2);
    } while (localPing == null);
    localPing.receive();
  }
  
  public void rstStream(int paramInt1, int paramInt2, int paramInt3)
  {
    SpdyStream localSpdyStream = this$0.removeStream(paramInt2);
    if (localSpdyStream != null) {
      localSpdyStream.receiveRstStream(paramInt3);
    }
  }
  
  public void run()
  {
    try
    {
      boolean bool;
      do
      {
        bool = SpdyConnection.access$700(this$0).nextFrame(this);
      } while (bool);
      try
      {
        SpdyConnection.access$800(this$0, 2, 6);
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException3)
      {
        for (;;) {}
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        SpdyConnection.access$800(this$0, 0, 5);
        return;
      }
      catch (IOException localIOException2)
      {
        return;
      }
      localIOException1 = localIOException1;
      SpdyConnection.access$800(this$0, 1, 1);
      return;
    }
    finally
    {
      localObject = finally;
    }
  }
  
  public void settings(int paramInt, Settings paramSettings)
  {
    ??? = null;
    for (;;)
    {
      synchronized (this$0)
      {
        if ((this$0.settings == null) || ((paramInt & 0x1) != 0))
        {
          this$0.settings = paramSettings;
          paramSettings = (Settings)???;
          if (!SpdyConnection.access$1200(this$0).isEmpty()) {
            paramSettings = (SpdyStream[])SpdyConnection.access$1200(this$0).values().toArray(new SpdyStream[SpdyConnection.access$1200(this$0).size()]);
          }
          if (paramSettings == null) {
            break;
          }
          int i = paramSettings.length;
          paramInt = 0;
          if (paramInt >= i) {
            break;
          }
        }
      }
      synchronized (paramSettings[paramInt])
      {
        try
        {
          ((SpdyStream)???).receiveSettings(this$0.settings);
          paramInt += 1;
          continue;
        }
        finally {}
        this$0.settings.merge(paramSettings);
        continue;
        paramSettings = finally;
        throw paramSettings;
      }
    }
  }
  
  public void synReply(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException
  {
    SpdyStream localSpdyStream = SpdyConnection.access$900(this$0, paramInt2);
    if (localSpdyStream == null) {
      this$0.writeSynResetLater(paramInt2, 2);
    }
    do
    {
      return;
      localSpdyStream.receiveReply(paramList);
    } while ((paramInt1 & 0x1) == 0);
    localSpdyStream.receiveFin();
  }
  
  public void synStream(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, final List<String> paramList)
  {
    synchronized (this$0)
    {
      paramList = new SpdyStream(paramInt2, this$0, paramInt1, paramInt4, paramInt5, paramList, this$0.settings);
      if (SpdyConnection.access$1000(this$0)) {
        return;
      }
      SpdyConnection.access$1102(this$0, paramInt2);
      SpdyStream localSpdyStream = (SpdyStream)SpdyConnection.access$1200(this$0).put(Integer.valueOf(paramInt2), paramList);
      if (localSpdyStream != null)
      {
        localSpdyStream.closeLater(1);
        this$0.removeStream(paramInt2);
        return;
      }
    }
    SpdyConnection.access$1500().submit(new NamedRunnable(String.format("Callback %s stream %d", new Object[] { SpdyConnection.access$1300(this$0), Integer.valueOf(paramInt2) }))
    {
      public void execute()
      {
        try
        {
          SpdyConnection.access$1400(this$0).receive(paramList);
          return;
        }
        catch (IOException localIOException)
        {
          throw new RuntimeException(localIOException);
        }
      }
    });
  }
  
  public void windowUpdate(int paramInt1, int paramInt2, int paramInt3)
  {
    SpdyStream localSpdyStream = SpdyConnection.access$900(this$0, paramInt2);
    if (localSpdyStream != null) {
      localSpdyStream.receiveWindowUpdate(paramInt3);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.Reader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */