package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cs$c
{
  private final Map<cq.e, List<cq.a>> ahB = new HashMap();
  private final Map<cq.e, List<cq.a>> ahC = new HashMap();
  private final Map<cq.e, List<String>> ahD = new HashMap();
  private final Map<cq.e, List<String>> ahE = new HashMap();
  private cq.a ahF;
  private final Set<cq.e> ahr = new HashSet();
  
  public void a(cq.e parame, cq.a parama)
  {
    List localList = (List)ahB.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      ahB.put(parame, localObject);
    }
    ((List)localObject).add(parama);
  }
  
  public void a(cq.e parame, String paramString)
  {
    List localList = (List)ahD.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      ahD.put(parame, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public void b(cq.e parame)
  {
    ahr.add(parame);
  }
  
  public void b(cq.e parame, cq.a parama)
  {
    List localList = (List)ahC.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      ahC.put(parame, localObject);
    }
    ((List)localObject).add(parama);
  }
  
  public void b(cq.e parame, String paramString)
  {
    List localList = (List)ahE.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      ahE.put(parame, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public void i(cq.a parama)
  {
    ahF = parama;
  }
  
  public Set<cq.e> mF()
  {
    return ahr;
  }
  
  public Map<cq.e, List<cq.a>> mG()
  {
    return ahB;
  }
  
  public Map<cq.e, List<String>> mH()
  {
    return ahD;
  }
  
  public Map<cq.e, List<String>> mI()
  {
    return ahE;
  }
  
  public Map<cq.e, List<cq.a>> mJ()
  {
    return ahC;
  }
  
  public cq.a mK()
  {
    return ahF;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */