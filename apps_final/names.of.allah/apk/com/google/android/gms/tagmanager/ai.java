package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c.c;
import com.google.android.gms.internal.c.d;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ai
{
  private static void a(DataLayer paramDataLayer, c.d paramd)
  {
    paramd = eS;
    int j = paramd.length;
    int i = 0;
    while (i < j)
    {
      paramDataLayer.bN(dh.j(paramd[i]));
      i += 1;
    }
  }
  
  public static void a(DataLayer paramDataLayer, c.i parami)
  {
    if (fI == null)
    {
      bh.D("supplemental missing experimentSupplemental");
      return;
    }
    a(paramDataLayer, fI);
    b(paramDataLayer, fI);
    c(paramDataLayer, fI);
  }
  
  private static void b(DataLayer paramDataLayer, c.d paramd)
  {
    paramd = eR;
    int j = paramd.length;
    int i = 0;
    while (i < j)
    {
      Map localMap = c(paramd[i]);
      if (localMap != null) {
        paramDataLayer.push(localMap);
      }
      i += 1;
    }
  }
  
  private static Map<String, Object> c(d.a parama)
  {
    parama = dh.o(parama);
    if (!(parama instanceof Map))
    {
      bh.D("value: " + parama + " is not a map value, ignored.");
      return null;
    }
    return (Map)parama;
  }
  
  private static void c(DataLayer paramDataLayer, c.d paramd)
  {
    c.c[] arrayOfc = eT;
    int j = arrayOfc.length;
    int i = 0;
    while (i < j)
    {
      c.c localc = arrayOfc[i];
      if (eM == null)
      {
        bh.D("GaExperimentRandom: No key");
        i += 1;
      }
      else
      {
        Object localObject = paramDataLayer.get(eM);
        if (!(localObject instanceof Number))
        {
          paramd = null;
          label66:
          long l1 = eN;
          long l2 = eO;
          if ((!eP) || (paramd == null) || (paramd.longValue() < l1) || (paramd.longValue() > l2))
          {
            if (l1 > l2) {
              break label236;
            }
            localObject = Long.valueOf(Math.round(Math.random() * (l2 - l1) + l1));
          }
          paramDataLayer.bN(eM);
          paramd = paramDataLayer.c(eM, localObject);
          if (eQ > 0L)
          {
            if (paramd.containsKey("gtm")) {
              break label244;
            }
            paramd.put("gtm", DataLayer.mapOf(new Object[] { "lifetime", Long.valueOf(eQ) }));
          }
        }
        for (;;)
        {
          paramDataLayer.push(paramd);
          break;
          paramd = Long.valueOf(((Number)localObject).longValue());
          break label66;
          label236:
          bh.D("GaExperimentRandom: random range invalid");
          break;
          label244:
          localObject = paramd.get("gtm");
          if ((localObject instanceof Map)) {
            ((Map)localObject).put("lifetime", Long.valueOf(eQ));
          } else {
            bh.D("GaExperimentRandom: gtm not a map");
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */