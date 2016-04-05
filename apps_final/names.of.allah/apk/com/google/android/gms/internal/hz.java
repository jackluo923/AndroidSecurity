package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class hz
{
  private void a(StringBuilder paramStringBuilder, hz.a parama, Object paramObject)
  {
    if (parama.fz() == 11)
    {
      paramStringBuilder.append(((hz)parama.fJ().cast(paramObject)).toString());
      return;
    }
    if (parama.fz() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(io.aK((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }
  
  private void a(StringBuilder paramStringBuilder, hz.a parama, ArrayList<Object> paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0) {
        paramStringBuilder.append(",");
      }
      Object localObject = paramArrayList.get(i);
      if (localObject != null) {
        a(paramStringBuilder, parama, localObject);
      }
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  protected <O, I> I a(hz.a<I, O> parama, Object paramObject)
  {
    Object localObject = paramObject;
    if (hz.a.c(parama) != null) {
      localObject = parama.g(paramObject);
    }
    return (I)localObject;
  }
  
  protected boolean a(hz.a parama)
  {
    if (parama.fA() == 11)
    {
      if (parama.fG()) {
        return aI(parama.fH());
      }
      return aH(parama.fH());
    }
    return aG(parama.fH());
  }
  
  protected abstract Object aF(String paramString);
  
  protected abstract boolean aG(String paramString);
  
  protected boolean aH(String paramString)
  {
    throw new UnsupportedOperationException("Concrete types not supported");
  }
  
  protected boolean aI(String paramString)
  {
    throw new UnsupportedOperationException("Concrete type arrays not supported");
  }
  
  protected Object b(hz.a parama)
  {
    String str = parama.fH();
    if (parama.fJ() != null)
    {
      boolean bool;
      if (aF(parama.fH()) == null)
      {
        bool = true;
        hn.a(bool, "Concrete field shouldn't be value object: %s", new Object[] { parama.fH() });
        if (!parama.fG()) {
          break label71;
        }
      }
      label71:
      for (parama = fD();; parama = fC())
      {
        if (parama == null) {
          break label79;
        }
        return parama.get(str);
        bool = false;
        break;
      }
      try
      {
        label79:
        parama = "get" + Character.toUpperCase(str.charAt(0)) + str.substring(1);
        parama = getClass().getMethod(parama, new Class[0]).invoke(this, new Object[0]);
        return parama;
      }
      catch (Exception parama)
      {
        throw new RuntimeException(parama);
      }
    }
    return aF(parama.fH());
  }
  
  public abstract HashMap<String, hz.a<?, ?>> fB();
  
  public HashMap<String, Object> fC()
  {
    return null;
  }
  
  public HashMap<String, Object> fD()
  {
    return null;
  }
  
  public String toString()
  {
    HashMap localHashMap = fB();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      hz.a locala = (hz.a)localHashMap.get(str);
      if (a(locala))
      {
        Object localObject = a(locala, b(locala));
        if (localStringBuilder.length() == 0) {
          localStringBuilder.append("{");
        }
        for (;;)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null) {
            break label135;
          }
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label135:
        switch (locala.fA())
        {
        default: 
          if (locala.fF()) {
            a(localStringBuilder, locala, (ArrayList)localObject);
          }
          break;
        case 8: 
          localStringBuilder.append("\"").append(ii.d((byte[])localObject)).append("\"");
          break;
        case 9: 
          localStringBuilder.append("\"").append(ii.e((byte[])localObject)).append("\"");
          break;
        case 10: 
          ip.a(localStringBuilder, (HashMap)localObject);
          continue;
          a(localStringBuilder, locala, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.append("}");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */