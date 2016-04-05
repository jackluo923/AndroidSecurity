package com.inmobi.androidsdk;

import android.location.Location;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class AdRequest
{
  private boolean a = true;
  private Location b = null;
  private String c = null;
  private boolean d = false;
  private String e = null;
  private String f = null;
  private Calendar g = null;
  private GenderType h;
  private String i = null;
  private String j = null;
  private int k = 0;
  private EducationType l;
  private EthnicityType m;
  private int n = 0;
  private String o = null;
  private Map<String, String> p = null;
  private MaritalStatus q;
  private String r;
  private SexualOrientation s;
  private HasChildren t;
  
  public int getAge()
  {
    return n;
  }
  
  public String getAreaCode()
  {
    return f;
  }
  
  public Location getCurrentLocation()
  {
    return b;
  }
  
  public Calendar getDateOfBirth()
  {
    return g;
  }
  
  public EducationType getEducation()
  {
    return l;
  }
  
  public EthnicityType getEthnicity()
  {
    return m;
  }
  
  public GenderType getGender()
  {
    return h;
  }
  
  public HasChildren getHasChildren()
  {
    return t;
  }
  
  public int getIncome()
  {
    return k;
  }
  
  public String getInterests()
  {
    return o;
  }
  
  public String getKeywords()
  {
    return i;
  }
  
  public String getLanguage()
  {
    return r;
  }
  
  public String getLocationWithCityStateCountry()
  {
    return c;
  }
  
  public MaritalStatus getMaritalStatus()
  {
    return q;
  }
  
  public String getPostalCode()
  {
    return e;
  }
  
  public Map<String, String> getRequestParams()
  {
    return p;
  }
  
  public String getSearchString()
  {
    return j;
  }
  
  public SexualOrientation getSexualOrientation()
  {
    return s;
  }
  
  public boolean isLocationInquiryAllowed()
  {
    return a;
  }
  
  @Deprecated
  public boolean isTestMode()
  {
    return d;
  }
  
  public void setAge(int paramInt)
  {
    if (paramInt >= 0) {
      n = paramInt;
    }
  }
  
  public void setAreaCode(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      f = paramString;
    }
  }
  
  public void setCurrentLocation(Location paramLocation)
  {
    if (paramLocation != null) {
      b = paramLocation;
    }
  }
  
  public void setDateOfBirth(Calendar paramCalendar)
  {
    if (paramCalendar != null) {
      g = paramCalendar;
    }
  }
  
  public void setDateOfBirth(Date paramDate)
  {
    if (paramDate == null) {
      return;
    }
    if (g == null) {
      g = Calendar.getInstance();
    }
    g.setTime(paramDate);
  }
  
  public void setEducation(EducationType paramEducationType)
  {
    l = paramEducationType;
  }
  
  public void setEthnicity(EthnicityType paramEthnicityType)
  {
    m = paramEthnicityType;
  }
  
  public void setGender(GenderType paramGenderType)
  {
    h = paramGenderType;
  }
  
  public void setHasChildren(HasChildren paramHasChildren)
  {
    t = paramHasChildren;
  }
  
  public void setIncome(int paramInt)
  {
    k = paramInt;
  }
  
  public void setInterests(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      o = paramString;
    }
  }
  
  public void setKeywords(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      i = paramString;
    }
  }
  
  public void setLanguage(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      r = paramString;
    }
  }
  
  public void setLocationInquiryAllowed(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setLocationOfCityStateAndCountry(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      c = paramString;
    }
  }
  
  public void setLocationWithCityStateCountry(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (!"".equals(paramString1.trim()))) {
      c = paramString1;
    }
    if ((paramString2 != null) && (!"".equals(paramString2.trim()))) {
      c = (c + "-" + paramString2);
    }
    if ((paramString3 != null) && (!"".equals(paramString3.trim()))) {
      c = (c + "-" + paramString3);
    }
  }
  
  public void setMaritalStatus(MaritalStatus paramMaritalStatus)
  {
    q = paramMaritalStatus;
  }
  
  public void setPostalCode(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      e = paramString;
    }
  }
  
  public void setRequestParams(Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      if (p == null) {
        p = new HashMap();
      }
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        p.put(str, paramMap.get(str));
      }
    }
  }
  
  public void setSearchString(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString.trim()))) {
      j = paramString;
    }
  }
  
  public void setSexualOrientation(SexualOrientation paramSexualOrientation)
  {
    s = paramSexualOrientation;
  }
  
  @Deprecated
  public void setTestMode(boolean paramBoolean)
  {
    d = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.AdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */