package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class eh
{
  private final Object lq = new Object();
  private boolean qL = false;
  private final ei rA;
  private final LinkedList<eh.a> rB;
  private final String rC;
  private final String rD;
  private long rE = -1L;
  private long rF = -1L;
  private long rG = -1L;
  private long rH = 0L;
  private long rI = -1L;
  private long rJ = -1L;
  
  public eh(ei paramei, String paramString1, String paramString2)
  {
    rA = paramei;
    rC = paramString1;
    rD = paramString2;
    rB = new LinkedList();
  }
  
  public eh(String paramString1, String paramString2)
  {
    this(ei.bC(), paramString1, paramString2);
  }
  
  public void bw()
  {
    synchronized (lq)
    {
      if ((rJ != -1L) && (rF == -1L))
      {
        rF = SystemClock.elapsedRealtime();
        rA.a(this);
      }
      ei localei = rA;
      ei.bF().bw();
      return;
    }
  }
  
  public void bx()
  {
    synchronized (lq)
    {
      if (rJ != -1L)
      {
        Object localObject2 = new eh.a();
        ((eh.a)localObject2).bB();
        rB.add(localObject2);
        rH += 1L;
        localObject2 = rA;
        ei.bF().bx();
        rA.a(this);
      }
      return;
    }
  }
  
  public void by()
  {
    synchronized (lq)
    {
      if ((rJ != -1L) && (!rB.isEmpty()))
      {
        eh.a locala = (eh.a)rB.getLast();
        if (locala.bz() == -1L)
        {
          locala.bA();
          rA.a(this);
        }
      }
      return;
    }
  }
  
  public void f(aj paramaj)
  {
    synchronized (lq)
    {
      rI = SystemClock.elapsedRealtime();
      ei localei = rA;
      ei.bF().b(paramaj, rI);
      return;
    }
  }
  
  public void j(long paramLong)
  {
    synchronized (lq)
    {
      rJ = paramLong;
      if (rJ != -1L) {
        rA.a(this);
      }
      return;
    }
  }
  
  public void k(long paramLong)
  {
    synchronized (lq)
    {
      if (rJ != -1L)
      {
        rE = paramLong;
        rA.a(this);
      }
      return;
    }
  }
  
  public void n(boolean paramBoolean)
  {
    synchronized (lq)
    {
      if (rJ != -1L)
      {
        rG = SystemClock.elapsedRealtime();
        if (!paramBoolean)
        {
          rF = rG;
          rA.a(this);
        }
      }
      return;
    }
  }
  
  public void o(boolean paramBoolean)
  {
    synchronized (lq)
    {
      if (rJ != -1L)
      {
        qL = paramBoolean;
        rA.a(this);
      }
      return;
    }
  }
  
  public Bundle toBundle()
  {
    ArrayList localArrayList;
    synchronized (lq)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("seqnum", rC);
      localBundle1.putString("slotid", rD);
      localBundle1.putBoolean("ismediation", qL);
      localBundle1.putLong("treq", rI);
      localBundle1.putLong("tresponse", rJ);
      localBundle1.putLong("timp", rF);
      localBundle1.putLong("tload", rG);
      localBundle1.putLong("pcc", rH);
      localBundle1.putLong("tfetch", rE);
      localArrayList = new ArrayList();
      Iterator localIterator = rB.iterator();
      if (localIterator.hasNext()) {
        localArrayList.add(((eh.a)localIterator.next()).toBundle());
      }
    }
    localBundle2.putParcelableArrayList("tclick", localArrayList);
    return localBundle2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */