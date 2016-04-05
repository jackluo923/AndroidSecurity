package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;

public abstract class d
{
  protected final DataHolder DD;
  private int EA;
  protected int Ez;
  
  public d(DataHolder paramDataHolder, int paramInt)
  {
    DD = ((DataHolder)hn.f(paramDataHolder));
    ac(paramInt);
  }
  
  protected void a(String paramString, CharArrayBuffer paramCharArrayBuffer)
  {
    DD.a(paramString, Ez, EA, paramCharArrayBuffer);
  }
  
  protected void ac(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < DD.getCount())) {}
    for (boolean bool = true;; bool = false)
    {
      hn.A(bool);
      Ez = paramInt;
      EA = DD.ae(Ez);
      return;
    }
  }
  
  public boolean av(String paramString)
  {
    return DD.av(paramString);
  }
  
  protected Uri aw(String paramString)
  {
    return DD.g(paramString, Ez, EA);
  }
  
  protected boolean ax(String paramString)
  {
    return DD.h(paramString, Ez, EA);
  }
  
  protected int eQ()
  {
    return Ez;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      bool1 = bool2;
      if (hl.equal(Integer.valueOf(Ez), Integer.valueOf(Ez)))
      {
        bool1 = bool2;
        if (hl.equal(Integer.valueOf(EA), Integer.valueOf(EA)))
        {
          bool1 = bool2;
          if (DD == DD) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  protected boolean getBoolean(String paramString)
  {
    return DD.d(paramString, Ez, EA);
  }
  
  protected byte[] getByteArray(String paramString)
  {
    return DD.f(paramString, Ez, EA);
  }
  
  protected float getFloat(String paramString)
  {
    return DD.e(paramString, Ez, EA);
  }
  
  protected int getInteger(String paramString)
  {
    return DD.b(paramString, Ez, EA);
  }
  
  protected long getLong(String paramString)
  {
    return DD.a(paramString, Ez, EA);
  }
  
  protected String getString(String paramString)
  {
    return DD.c(paramString, Ez, EA);
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(Ez), Integer.valueOf(EA), DD });
  }
  
  public boolean isDataValid()
  {
    return !DD.isClosed();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */