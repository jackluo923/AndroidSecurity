package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

class ec
{
  private final List<String> qP;
  private final List<String> qQ;
  private final String qR;
  private final String qS;
  private final String qT;
  private final String qU;
  private final String qV;
  private final boolean qW;
  private final int qX;
  
  public ec(Map<String, String> paramMap)
  {
    qV = ((String)paramMap.get("url"));
    qS = ((String)paramMap.get("base_uri"));
    qT = ((String)paramMap.get("post_parameters"));
    qW = parseBoolean((String)paramMap.get("drt_include"));
    qR = ((String)paramMap.get("activation_overlay_url"));
    qQ = t((String)paramMap.get("check_packages"));
    qX = parseInt((String)paramMap.get("request_id"));
    qU = ((String)paramMap.get("type"));
    qP = t((String)paramMap.get("errors"));
  }
  
  private static boolean parseBoolean(String paramString)
  {
    return (paramString != null) && ((paramString.equals("1")) || (paramString.equals("true")));
  }
  
  private int parseInt(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    return Integer.parseInt(paramString);
  }
  
  private List<String> t(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Arrays.asList(paramString.split(","));
  }
  
  public List<String> bt()
  {
    return qP;
  }
  
  public String bu()
  {
    return qT;
  }
  
  public boolean bv()
  {
    return qW;
  }
  
  public String getType()
  {
    return qU;
  }
  
  public String getUrl()
  {
    return qV;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */