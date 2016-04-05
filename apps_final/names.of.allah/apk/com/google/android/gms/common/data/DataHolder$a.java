package com.google.android.gms.common.data;

import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.HashMap;

public class DataHolder$a
{
  private final String[] ED;
  private final ArrayList<HashMap<String, Object>> EM;
  private final String EN;
  private final HashMap<Object, Integer> EO;
  private boolean EP;
  private String EQ;
  
  private DataHolder$a(String[] paramArrayOfString, String paramString)
  {
    ED = ((String[])hn.f(paramArrayOfString));
    EM = new ArrayList();
    EN = paramString;
    EO = new HashMap();
    EP = false;
    EQ = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataHolder.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */