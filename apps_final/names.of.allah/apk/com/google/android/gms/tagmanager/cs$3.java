package com.google.android.gms.tagmanager;

import java.util.List;
import java.util.Map;
import java.util.Set;

class cs$3
  implements cs.a
{
  cs$3(cs paramcs, Map paramMap1, Map paramMap2, Map paramMap3, Map paramMap4) {}
  
  public void a(cq.e parame, Set<cq.a> paramSet1, Set<cq.a> paramSet2, cm paramcm)
  {
    List localList1 = (List)ahw.get(parame);
    List localList2 = (List)ahx.get(parame);
    if (localList1 != null)
    {
      paramSet1.addAll(localList1);
      paramcm.lP().b(localList1, localList2);
    }
    paramSet1 = (List)ahy.get(parame);
    parame = (List)ahz.get(parame);
    if (paramSet1 != null)
    {
      paramSet2.addAll(paramSet1);
      paramcm.lQ().b(paramSet1, parame);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cs.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */