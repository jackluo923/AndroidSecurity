package com.google.android.gms.internal;

import android.content.Context;
import org.json.JSONObject;

public class ag
  implements af
{
  private final ey lL;
  
  public ag(Context paramContext, ew paramew)
  {
    lL = ey.a(paramContext, new am(), false, false, null, paramew);
  }
  
  public void a(af.a parama)
  {
    lL.bW().a(new ag.1(this, parama));
  }
  
  public void a(String paramString, bd parambd)
  {
    lL.bW().a(paramString, parambd);
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    lL.a(paramString, paramJSONObject);
  }
  
  public void d(String paramString)
  {
    lL.loadUrl(paramString);
  }
  
  public void e(String paramString)
  {
    lL.bW().a(paramString, null);
  }
  
  public void pause()
  {
    ep.a(lL);
  }
  
  public void resume()
  {
    ep.b(lL);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */