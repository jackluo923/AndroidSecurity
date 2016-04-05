package com.google.ads;

import android.location.Location;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import u;

public class AdRequest
{
  public static final String LOGTAG = "Ads";
  public static final String VERSION = "4.0.2";
  private AdRequest.Gender a;
  private String b;
  private Set c;
  private Map d;
  private Location e;
  private boolean f;
  
  public AdRequest()
  {
    a = localGender;
    b = localGender;
    c = localGender;
    d = localGender;
    e = localGender;
    boolean bool = false;
    f = bool;
  }
  
  public void addExtra(String paramString, Object paramObject)
  {
    Object localObject = d;
    if (localObject == null)
    {
      localObject = new java/util/HashMap;
      ((HashMap)localObject).<init>();
      d = ((Map)localObject);
    }
    localObject = d;
    ((Map)localObject).put(paramString, paramObject);
  }
  
  public void addKeyword(String paramString)
  {
    Object localObject = c;
    if (localObject == null)
    {
      localObject = new java/util/HashSet;
      ((HashSet)localObject).<init>();
      c = ((Set)localObject);
    }
    localObject = c;
    ((Set)localObject).add(paramString);
  }
  
  public Map<String, Object> getRequestMap()
  {
    HashMap localHashMap = new java/util/HashMap;
    localHashMap.<init>();
    Object localObject1 = c;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject1 = "kw";
      localObject3 = c;
      localHashMap.put(localObject1, localObject3);
    }
    localObject1 = a;
    if (localObject1 != null)
    {
      localObject1 = "cust_gender";
      localObject3 = a;
      localObject3 = ((AdRequest.Gender)localObject3).toString();
      localHashMap.put(localObject1, localObject3);
    }
    localObject1 = b;
    if (localObject1 != null)
    {
      localObject1 = "cust_age";
      localObject3 = b;
      localHashMap.put(localObject1, localObject3);
    }
    localObject1 = e;
    if (localObject1 != null)
    {
      localObject1 = "uule";
      localObject3 = e;
      localObject3 = u.a((Location)localObject3);
      localHashMap.put(localObject1, localObject3);
    }
    boolean bool = f;
    Object localObject4;
    if (bool)
    {
      localObject2 = "testing";
      int i = 1;
      localObject4 = Integer.valueOf(i);
      localHashMap.put(localObject2, localObject4);
    }
    Object localObject2 = d;
    if (localObject2 != null)
    {
      localObject2 = "extras";
      localObject4 = d;
      localHashMap.put(localObject2, localObject4);
    }
    return localHashMap;
  }
  
  public void setBirthday(String paramString)
  {
    b = paramString;
  }
  
  public void setExtras(Map<String, Object> paramMap)
  {
    d = paramMap;
  }
  
  public void setGender(AdRequest.Gender paramGender)
  {
    a = paramGender;
  }
  
  public void setKeywords(Set<String> paramSet)
  {
    c = paramSet;
  }
  
  public void setLocation(Location paramLocation)
  {
    e = paramLocation;
  }
  
  public void setTesting(boolean paramBoolean)
  {
    f = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdRequest
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */