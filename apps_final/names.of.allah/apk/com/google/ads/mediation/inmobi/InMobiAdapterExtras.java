package com.google.ads.mediation.inmobi;

import com.google.ads.mediation.j;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class InMobiAdapterExtras
  implements j
{
  private String areaCode = null;
  private String cities = null;
  private String countries = null;
  private EducationType education = null;
  private EthnicityType ethnicity = null;
  private HasChildren hasChildren = null;
  private Map<IMIDType, String> idtypeParams = new HashMap();
  private Integer income = null;
  private Set<String> interests = null;
  private boolean isLocationInquiryAllowed = false;
  private String keywords = null;
  private String languages = null;
  private MaritalStatus martialStatus = null;
  private String postalCode = null;
  private String reftagKey = null;
  private String reftagValue = null;
  private Map<String, String> requestParams;
  private String searchString = null;
  private SexualOrientation sexualOrientations = null;
  private String states = null;
  private int uidMapFlag;
  
  public final void addIDType(IMIDType paramIMIDType, String paramString)
  {
    if (idtypeParams != null) {
      idtypeParams.put(paramIMIDType, paramString);
    }
  }
  
  public final void addInterests(String paramString)
  {
    if (interests == null) {
      interests = new HashSet();
    }
    interests.add(paramString);
  }
  
  public final InMobiAdapterExtras clearAreaCode()
  {
    return setAreaCode(null);
  }
  
  public final InMobiAdapterExtras clearCityStateCountry()
  {
    return setCityStateCountry(null, null, null);
  }
  
  public final InMobiAdapterExtras clearDeviceIdMask()
  {
    uidMapFlag = 1;
    return this;
  }
  
  public final InMobiAdapterExtras clearEducation()
  {
    return setEducation(null);
  }
  
  public final InMobiAdapterExtras clearEthnicity()
  {
    return setEthnicity(null);
  }
  
  public final InMobiAdapterExtras clearIncome()
  {
    return setIncome(null);
  }
  
  public final InMobiAdapterExtras clearInterests()
  {
    return setInterests(null);
  }
  
  public final InMobiAdapterExtras clearKeywords()
  {
    return setKeywords(null);
  }
  
  public final InMobiAdapterExtras clearLanguage()
  {
    return setlanguage(null);
  }
  
  public final InMobiAdapterExtras clearLocationInquiryAllowed()
  {
    isLocationInquiryAllowed = false;
    return this;
  }
  
  public final InMobiAdapterExtras clearMartialStatus()
  {
    return setMartialStatus(null);
  }
  
  public final InMobiAdapterExtras clearPostalCode()
  {
    return setPostalCode(null);
  }
  
  public final InMobiAdapterExtras clearRefTag()
  {
    return setRefTag(null, null);
  }
  
  public final InMobiAdapterExtras clearRequestParams()
  {
    return setRequestParams(null);
  }
  
  public final InMobiAdapterExtras clearSearchString()
  {
    return setSearchString(null);
  }
  
  public final InMobiAdapterExtras clearhasChildren()
  {
    return setHasChildren(null);
  }
  
  public final InMobiAdapterExtras clearsexualOrientations()
  {
    return setSexualOrientation(null);
  }
  
  public final String getAreaCode()
  {
    return areaCode;
  }
  
  public final String getCity()
  {
    return cities;
  }
  
  public final String getCountry()
  {
    return countries;
  }
  
  public final int getDeviceIdMask()
  {
    return uidMapFlag;
  }
  
  public final EducationType getEducation()
  {
    return education;
  }
  
  public final EthnicityType getEthnicity()
  {
    return ethnicity;
  }
  
  public final HasChildren getHasChildren()
  {
    return hasChildren;
  }
  
  public final String getIDType(IMIDType paramIMIDType)
  {
    if (idtypeParams != null) {
      return (String)idtypeParams.get(paramIMIDType);
    }
    return null;
  }
  
  public final Integer getIncome()
  {
    return income;
  }
  
  public final Set<String> getInterests()
  {
    if (interests == null) {
      return null;
    }
    return Collections.unmodifiableSet(interests);
  }
  
  public final String getKeywords()
  {
    return keywords;
  }
  
  public final String getLangauge()
  {
    return languages;
  }
  
  public final MaritalStatus getMartialStatus()
  {
    return martialStatus;
  }
  
  public final String getPostalCode()
  {
    return postalCode;
  }
  
  public final String getRefTagKey()
  {
    return reftagKey;
  }
  
  public final String getRefTagValue()
  {
    return reftagValue;
  }
  
  public final Map<String, String> getRequestParams()
  {
    return requestParams;
  }
  
  public final String getSearchString()
  {
    return searchString;
  }
  
  public final SexualOrientation getSexualOrientations()
  {
    return sexualOrientations;
  }
  
  public final String getState()
  {
    return states;
  }
  
  public final boolean isLocationInquiryAllowed()
  {
    return isLocationInquiryAllowed;
  }
  
  public final void removeIDType(IMIDType paramIMIDType)
  {
    if (idtypeParams != null) {
      idtypeParams.remove(paramIMIDType);
    }
  }
  
  public final InMobiAdapterExtras setAreaCode(String paramString)
  {
    areaCode = paramString;
    return this;
  }
  
  public final InMobiAdapterExtras setCityStateCountry(String paramString1, String paramString2, String paramString3)
  {
    states = paramString2;
    cities = paramString1;
    countries = paramString3;
    return this;
  }
  
  public final void setDeviceIDMask(int paramInt)
  {
    uidMapFlag = paramInt;
  }
  
  public final InMobiAdapterExtras setEducation(EducationType paramEducationType)
  {
    education = paramEducationType;
    return this;
  }
  
  public final InMobiAdapterExtras setEthnicity(EthnicityType paramEthnicityType)
  {
    ethnicity = paramEthnicityType;
    return this;
  }
  
  public final InMobiAdapterExtras setHasChildren(HasChildren paramHasChildren)
  {
    hasChildren = paramHasChildren;
    return this;
  }
  
  public final InMobiAdapterExtras setIncome(Integer paramInteger)
  {
    income = paramInteger;
    return this;
  }
  
  public final InMobiAdapterExtras setInterests(Collection<String> paramCollection)
  {
    if (paramCollection == null)
    {
      interests = new HashSet();
      return this;
    }
    interests = new HashSet(paramCollection);
    return this;
  }
  
  public final InMobiAdapterExtras setKeywords(String paramString)
  {
    keywords = paramString;
    return this;
  }
  
  public final void setLocationInquiryAllowed(boolean paramBoolean)
  {
    isLocationInquiryAllowed = paramBoolean;
  }
  
  public final InMobiAdapterExtras setMartialStatus(MaritalStatus paramMaritalStatus)
  {
    martialStatus = paramMaritalStatus;
    return this;
  }
  
  public final InMobiAdapterExtras setPostalCode(String paramString)
  {
    postalCode = paramString;
    return this;
  }
  
  public final InMobiAdapterExtras setRefTag(String paramString1, String paramString2)
  {
    reftagKey = paramString1;
    reftagValue = paramString2;
    return this;
  }
  
  public final InMobiAdapterExtras setRequestParams(Map<String, String> paramMap)
  {
    requestParams = paramMap;
    return this;
  }
  
  public final InMobiAdapterExtras setSearchString(String paramString)
  {
    searchString = paramString;
    return this;
  }
  
  public final InMobiAdapterExtras setSexualOrientation(SexualOrientation paramSexualOrientation)
  {
    sexualOrientations = paramSexualOrientation;
    return this;
  }
  
  public final InMobiAdapterExtras setlanguage(String paramString)
  {
    languages = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.inmobi.InMobiAdapterExtras
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */