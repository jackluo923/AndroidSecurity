package com.millennialmedia.android;

import android.location.Location;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class MMRequest
{
  public static final String EDUCATION_ASSOCIATE = "associate";
  public static final String EDUCATION_BACHELORS = "bachelors";
  public static final String EDUCATION_HIGH_SCHOOL = "highschool";
  public static final String EDUCATION_IN_COLLEGE = "incollege";
  public static final String EDUCATION_MASTERS = "masters";
  public static final String EDUCATION_PHD = "phd";
  public static final String EDUCATION_PROFESSIONAL = "professional";
  public static final String EDUCATION_SOME_COLLEGE = "somecollege";
  public static final String ETHNICITY_ASIAN = "asian";
  public static final String ETHNICITY_BLACK = "black";
  public static final String ETHNICITY_HISPANIC = "hispanic";
  public static final String ETHNICITY_INDIAN = "indian";
  public static final String ETHNICITY_MIDDLE_EASTERN = "middleeastern";
  public static final String ETHNICITY_NATIVE_AMERICAN = "nativeamerican";
  public static final String ETHNICITY_OTHER = "other";
  public static final String ETHNICITY_PACIFIC_ISLANDER = "pacificislander";
  public static final String ETHNICITY_WHITE = "white";
  public static final String GENDER_FEMALE = "female";
  public static final String GENDER_MALE = "male";
  public static final String KEY_AGE = "age";
  public static final String KEY_CHILDREN = "children";
  public static final String KEY_EDUCATION = "education";
  public static final String KEY_ETHNICITY = "ethnicity";
  public static final String KEY_GENDER = "gender";
  public static final String KEY_HEIGHT = "hsht";
  public static final String KEY_INCOME = "income";
  public static final String KEY_KEYWORDS = "keywords";
  public static final String KEY_MARITAL_STATUS = "marital";
  public static final String KEY_ORIENTATION = "orientation";
  public static final String KEY_POLITICS = "politics";
  public static final String KEY_VENDOR = "vendor";
  public static final String KEY_WIDTH = "hswd";
  public static final String KEY_ZIP_CODE = "zip";
  public static final String MARITAL_DIVORCED = "divorced";
  public static final String MARITAL_ENGAGED = "engaged";
  public static final String MARITAL_MARRIED = "married";
  public static final String MARITAL_RELATIONSHIP = "relationship";
  public static final String MARITAL_SINGLE = "single";
  public static final String ORIENTATION_BISEXUAL = "bisexual";
  public static final String ORIENTATION_GAY = "gay";
  public static final String ORIENTATION_STRAIGHT = "straight";
  static Location location;
  String age = null;
  String children = null;
  String education = null;
  String ethnicity = null;
  String gender = null;
  String income = null;
  String keywords = null;
  String marital = null;
  String orientation = null;
  String politics = null;
  private Map<String, String> values = new HashMap();
  String vendor = null;
  String zip = null;
  
  public static Location getUserLocation()
  {
    return location;
  }
  
  static void insertLocation(Map<String, String> paramMap)
  {
    if (location != null)
    {
      paramMap.put("lat", Double.toString(location.getLatitude()));
      paramMap.put("long", Double.toString(location.getLongitude()));
      if (location.hasAccuracy())
      {
        paramMap.put("ha", Float.toString(location.getAccuracy()));
        paramMap.put("va", Float.toString(location.getAccuracy()));
      }
      if (location.hasSpeed()) {
        paramMap.put("spd", Float.toString(location.getSpeed()));
      }
      if (location.hasBearing()) {
        paramMap.put("brg", Float.toString(location.getBearing()));
      }
      if (location.hasAltitude()) {
        paramMap.put("alt", Double.toString(location.getAltitude()));
      }
      paramMap.put("tslr", Long.toString(location.getTime()));
      paramMap.put("loc", "true");
      paramMap.put("lsrc", location.getProvider());
      return;
    }
    paramMap.put("loc", "false");
  }
  
  public static void setUserLocation(Location paramLocation)
  {
    if (paramLocation == null) {
      return;
    }
    location = paramLocation;
  }
  
  final void getUrlParams(Map<String, String> paramMap)
  {
    Iterator localIterator = values.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramMap.put(localEntry.getKey(), localEntry.getValue());
    }
    if (age != null) {
      paramMap.put("age", age);
    }
    if (children != null) {
      paramMap.put("children", children);
    }
    if (education != null) {
      paramMap.put("education", education);
    }
    if (ethnicity != null) {
      paramMap.put("ethnicity", ethnicity);
    }
    if (gender != null) {
      paramMap.put("gender", gender);
    }
    if (income != null) {
      paramMap.put("income", income);
    }
    if (keywords != null) {
      paramMap.put("keywords", keywords);
    }
    if (marital != null) {
      paramMap.put("marital", marital);
    }
    if (orientation != null) {
      paramMap.put("orientation", orientation);
    }
    if (politics != null) {
      paramMap.put("politics", politics);
    }
    if (vendor != null) {
      paramMap.put("vendor", vendor);
    }
    if (zip != null) {
      paramMap.put("zip", zip);
    }
  }
  
  public final MMRequest put(String paramString1, String paramString2)
  {
    if (paramString1.equals("age"))
    {
      age = paramString2;
      return this;
    }
    if (paramString1.equals("children"))
    {
      children = paramString2;
      return this;
    }
    if (paramString1.equals("education"))
    {
      education = paramString2;
      return this;
    }
    if (paramString1.equals("ethnicity"))
    {
      ethnicity = paramString2;
      return this;
    }
    if (paramString1.equals("gender"))
    {
      gender = paramString2;
      return this;
    }
    if (paramString1.equals("income"))
    {
      income = paramString2;
      return this;
    }
    if (paramString1.equals("keywords"))
    {
      keywords = paramString2;
      return this;
    }
    if (paramString1.equals("marital"))
    {
      marital = paramString2;
      return this;
    }
    if (paramString1.equals("orientation"))
    {
      orientation = paramString2;
      return this;
    }
    if (paramString1.equals("politics"))
    {
      politics = paramString2;
      return this;
    }
    if (paramString1.equals("vendor"))
    {
      vendor = paramString2;
      return this;
    }
    if (paramString1.equals("zip"))
    {
      zip = paramString2;
      return this;
    }
    if (paramString2 != null)
    {
      values.put(paramString1, paramString2);
      return this;
    }
    values.remove(paramString1);
    return this;
  }
  
  public final void setAge(String paramString)
  {
    age = paramString;
  }
  
  public final void setChildren(String paramString)
  {
    children = paramString;
  }
  
  public final void setEducation(String paramString)
  {
    education = paramString;
  }
  
  public final void setEthnicity(String paramString)
  {
    ethnicity = paramString;
  }
  
  public final void setGender(String paramString)
  {
    gender = paramString;
  }
  
  public final void setIncome(String paramString)
  {
    income = paramString;
  }
  
  public final void setKeywords(String paramString)
  {
    keywords = paramString;
  }
  
  public final void setMarital(String paramString)
  {
    marital = paramString;
  }
  
  public final void setMetaValues(Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }
  
  public final void setOrientation(String paramString)
  {
    orientation = paramString;
  }
  
  public final void setPolitics(String paramString)
  {
    politics = paramString;
  }
  
  public final void setVendor(String paramString)
  {
    vendor = paramString;
  }
  
  public final void setZip(String paramString)
  {
    zip = paramString;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */