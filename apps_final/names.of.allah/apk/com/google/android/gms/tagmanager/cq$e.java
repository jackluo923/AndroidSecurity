package com.google.android.gms.tagmanager;

import java.util.Collections;
import java.util.List;

public class cq$e
{
  private final List<cq.a> agZ;
  private final List<cq.a> aha;
  private final List<cq.a> ahb;
  private final List<cq.a> ahc;
  private final List<cq.a> ahd;
  private final List<cq.a> ahe;
  private final List<String> ahf;
  private final List<String> ahg;
  private final List<String> ahh;
  private final List<String> ahi;
  
  private cq$e(List<cq.a> paramList1, List<cq.a> paramList2, List<cq.a> paramList3, List<cq.a> paramList4, List<cq.a> paramList5, List<cq.a> paramList6, List<String> paramList7, List<String> paramList8, List<String> paramList9, List<String> paramList10)
  {
    agZ = Collections.unmodifiableList(paramList1);
    aha = Collections.unmodifiableList(paramList2);
    ahb = Collections.unmodifiableList(paramList3);
    ahc = Collections.unmodifiableList(paramList4);
    ahd = Collections.unmodifiableList(paramList5);
    ahe = Collections.unmodifiableList(paramList6);
    ahf = Collections.unmodifiableList(paramList7);
    ahg = Collections.unmodifiableList(paramList8);
    ahh = Collections.unmodifiableList(paramList9);
    ahi = Collections.unmodifiableList(paramList10);
  }
  
  public static cq.f mq()
  {
    return new cq.f(null);
  }
  
  public List<cq.a> mA()
  {
    return ahe;
  }
  
  public List<cq.a> mr()
  {
    return agZ;
  }
  
  public List<cq.a> ms()
  {
    return aha;
  }
  
  public List<cq.a> mt()
  {
    return ahb;
  }
  
  public List<cq.a> mu()
  {
    return ahc;
  }
  
  public List<cq.a> mv()
  {
    return ahd;
  }
  
  public List<String> mw()
  {
    return ahf;
  }
  
  public List<String> mx()
  {
    return ahg;
  }
  
  public List<String> my()
  {
    return ahh;
  }
  
  public List<String> mz()
  {
    return ahi;
  }
  
  public String toString()
  {
    return "Positive predicates: " + mr() + "  Negative predicates: " + ms() + "  Add tags: " + mt() + "  Remove tags: " + mu() + "  Add macros: " + mv() + "  Remove macros: " + mA();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */