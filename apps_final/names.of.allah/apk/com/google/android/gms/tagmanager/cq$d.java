package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class cq$d
{
  private String aeR = "";
  private final List<cq.e> agW = new ArrayList();
  private final Map<String, List<cq.a>> agX = new HashMap();
  private int agY = 0;
  
  public d a(cq.a parama)
  {
    String str = dh.j((d.a)parama.mj().get(b.cI.toString()));
    List localList = (List)agX.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      agX.put(str, localObject);
    }
    ((List)localObject).add(parama);
    return this;
  }
  
  public d a(cq.e parame)
  {
    agW.add(parame);
    return this;
  }
  
  public d ce(String paramString)
  {
    aeR = paramString;
    return this;
  }
  
  public d du(int paramInt)
  {
    agY = paramInt;
    return this;
  }
  
  public cq.c mp()
  {
    return new cq.c(agW, agX, aeR, agY, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */