package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

final class bc$3
  implements bd
{
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    str = (String)paramMap.get("u");
    if (str == null)
    {
      ev.D("URL missing from click GMSG.");
      return;
    }
    paramMap = Uri.parse(str);
    try
    {
      Object localObject = paramey.bX();
      if ((localObject == null) || (!((l)localObject).a(paramMap))) {
        break label108;
      }
      localObject = ((l)localObject).a(paramMap, paramey.getContext());
      paramMap = (Map<String, String>)localObject;
    }
    catch (m localm)
    {
      for (;;)
      {
        ev.D("Unable to append parameter to URL: " + str);
      }
    }
    paramMap = paramMap.toString();
    new et(paramey.getContext(), bYst, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bc.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */