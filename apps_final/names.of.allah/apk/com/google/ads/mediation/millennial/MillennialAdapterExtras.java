package com.google.ads.mediation.millennial;

import com.google.ads.mediation.j;

public final class MillennialAdapterExtras
  implements j
{
  private Boolean children = null;
  private MillennialAdapterExtras.Education education = null;
  private MillennialAdapterExtras.Ethnicity ethnicity = null;
  private Integer income = null;
  private MillennialAdapterExtras.InterstitialTime interstitialTime = MillennialAdapterExtras.InterstitialTime.UNKNOWN;
  private MillennialAdapterExtras.MaritalStatus maritalStatus = null;
  private MillennialAdapterExtras.Orientation orientation = null;
  private MillennialAdapterExtras.Politics politics = null;
  private String postalCode = null;
  
  public final MillennialAdapterExtras clearChildren()
  {
    return setChildren(null);
  }
  
  public final MillennialAdapterExtras clearEducation()
  {
    return setEducation(null);
  }
  
  public final MillennialAdapterExtras clearEthnicity()
  {
    return setEthnicity(null);
  }
  
  public final MillennialAdapterExtras clearIncomeInUsDollars()
  {
    return setIncomeInUsDollars(null);
  }
  
  public final MillennialAdapterExtras clearInterstitialTime()
  {
    return setInterstitialTime(null);
  }
  
  public final MillennialAdapterExtras clearMaritalStatus()
  {
    return setMaritalStatus(null);
  }
  
  public final MillennialAdapterExtras clearOrientation()
  {
    return setOrientation(null);
  }
  
  public final MillennialAdapterExtras clearPolitics()
  {
    return setPolitics(null);
  }
  
  public final MillennialAdapterExtras clearPostalCode()
  {
    return setPostalCode(null);
  }
  
  public final Boolean getChildren()
  {
    return children;
  }
  
  public final MillennialAdapterExtras.Education getEducation()
  {
    return education;
  }
  
  public final MillennialAdapterExtras.Ethnicity getEthnicity()
  {
    return ethnicity;
  }
  
  public final Integer getIncomeInUsDollars()
  {
    return income;
  }
  
  public final MillennialAdapterExtras.InterstitialTime getInterstitialTime()
  {
    return interstitialTime;
  }
  
  public final MillennialAdapterExtras.MaritalStatus getMaritalStatus()
  {
    return maritalStatus;
  }
  
  public final MillennialAdapterExtras.Orientation getOrientation()
  {
    return orientation;
  }
  
  public final MillennialAdapterExtras.Politics getPolitics()
  {
    return politics;
  }
  
  public final String getPostalCode()
  {
    return postalCode;
  }
  
  public final MillennialAdapterExtras setChildren(Boolean paramBoolean)
  {
    children = paramBoolean;
    return this;
  }
  
  public final MillennialAdapterExtras setEducation(MillennialAdapterExtras.Education paramEducation)
  {
    education = paramEducation;
    return this;
  }
  
  public final MillennialAdapterExtras setEthnicity(MillennialAdapterExtras.Ethnicity paramEthnicity)
  {
    ethnicity = paramEthnicity;
    return this;
  }
  
  public final MillennialAdapterExtras setIncomeInUsDollars(Integer paramInteger)
  {
    income = paramInteger;
    return this;
  }
  
  public final MillennialAdapterExtras setInterstitialTime(MillennialAdapterExtras.InterstitialTime paramInterstitialTime)
  {
    interstitialTime = paramInterstitialTime;
    return this;
  }
  
  public final MillennialAdapterExtras setMaritalStatus(MillennialAdapterExtras.MaritalStatus paramMaritalStatus)
  {
    maritalStatus = paramMaritalStatus;
    return this;
  }
  
  public final MillennialAdapterExtras setOrientation(MillennialAdapterExtras.Orientation paramOrientation)
  {
    orientation = paramOrientation;
    return this;
  }
  
  public final MillennialAdapterExtras setPolitics(MillennialAdapterExtras.Politics paramPolitics)
  {
    politics = paramPolitics;
    return this;
  }
  
  public final MillennialAdapterExtras setPostalCode(String paramString)
  {
    postalCode = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.millennial.MillennialAdapterExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */