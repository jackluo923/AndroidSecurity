package com.google.android.gms.plus.model.moments;

import com.google.android.gms.internal.ko;
import com.google.android.gms.internal.kq;
import java.util.HashSet;
import java.util.Set;

public class Moment$Builder
{
  private final Set<Integer> acp = new HashSet();
  private String adc;
  private ko adk;
  private ko adl;
  private String qU;
  private String xD;
  
  public Moment build()
  {
    return new kq(acp, xD, adk, adc, adl, qU);
  }
  
  public Builder setId(String paramString)
  {
    xD = paramString;
    acp.add(Integer.valueOf(2));
    return this;
  }
  
  public Builder setResult(ItemScope paramItemScope)
  {
    adk = ((ko)paramItemScope);
    acp.add(Integer.valueOf(4));
    return this;
  }
  
  public Builder setStartDate(String paramString)
  {
    adc = paramString;
    acp.add(Integer.valueOf(5));
    return this;
  }
  
  public Builder setTarget(ItemScope paramItemScope)
  {
    adl = ((ko)paramItemScope);
    acp.add(Integer.valueOf(6));
    return this;
  }
  
  public Builder setType(String paramString)
  {
    qU = paramString;
    acp.add(Integer.valueOf(7));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.moments.Moment.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */