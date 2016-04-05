package com.inmobi.commons.data;

import android.content.Context;
import android.location.Location;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

public final class UserInfo
{
  private static UserInfo a = new UserInfo();
  private static int c = 1;
  private boolean b;
  private Location d;
  private boolean e = true;
  private String f;
  private EducationType g;
  private EthnicityType h;
  private GenderType i;
  private Calendar j;
  private Integer k = Integer.valueOf(0);
  private Integer l = Integer.valueOf(0);
  private String m;
  private String n;
  private String o;
  private String p;
  private HasChildren q;
  private MaritalStatus r;
  private String s;
  private SexualOrientation t;
  private Map<IMIDType, String> u = new HashMap();
  
  public static UserInfo getInstance()
  {
    return a;
  }
  
  public final void addIDType(IMIDType paramIMIDType, String paramString)
  {
    if (u != null) {
      u.put(paramIMIDType, paramString);
    }
  }
  
  public final Integer getAge()
  {
    return l;
  }
  
  public final String getAreaCode()
  {
    return p;
  }
  
  public final Location getCurrentLocation()
  {
    return d;
  }
  
  public final Calendar getDateOfBirth()
  {
    return j;
  }
  
  public final int getDeviceIDMask()
  {
    return c;
  }
  
  public final EducationType getEducation()
  {
    return g;
  }
  
  public final EthnicityType getEthnicity()
  {
    return h;
  }
  
  public final GenderType getGender()
  {
    return i;
  }
  
  public final HasChildren getHasChildren()
  {
    return q;
  }
  
  public final String getIDType(IMIDType paramIMIDType)
  {
    if (u != null) {
      return (String)u.get(paramIMIDType);
    }
    return null;
  }
  
  public final Integer getIncome()
  {
    return k;
  }
  
  public final String getInterests()
  {
    return m;
  }
  
  public final String getLanguage()
  {
    return s;
  }
  
  public final String getLocationWithCityStateCountry()
  {
    return n;
  }
  
  public final MaritalStatus getMaritalStatus()
  {
    return r;
  }
  
  public final String getPostalCode()
  {
    return o;
  }
  
  public final String getSearchString()
  {
    return f;
  }
  
  public final SexualOrientation getSexualOrientation()
  {
    return t;
  }
  
  public final boolean isLocationInquiryAllowed()
  {
    return e;
  }
  
  public final boolean isTestMode()
  {
    return b;
  }
  
  public final void removeIDType(IMIDType paramIMIDType)
  {
    if (u != null) {
      u.remove(paramIMIDType);
    }
  }
  
  public final void setAge(Integer paramInteger)
  {
    l = paramInteger;
  }
  
  public final void setAreaCode(String paramString)
  {
    p = paramString;
  }
  
  public final void setCurrentLocation(Location paramLocation)
  {
    d = paramLocation;
  }
  
  public final void setDateOfBirth(Calendar paramCalendar)
  {
    j = paramCalendar;
  }
  
  public final void setDeviceIDMask(int paramInt)
  {
    c = paramInt;
  }
  
  public final void setEducation(EducationType paramEducationType)
  {
    g = paramEducationType;
  }
  
  public final void setEthnicity(EthnicityType paramEthnicityType)
  {
    h = paramEthnicityType;
  }
  
  public final void setGender(GenderType paramGenderType)
  {
    i = paramGenderType;
  }
  
  public final void setHasChildren(HasChildren paramHasChildren)
  {
    q = paramHasChildren;
  }
  
  public final void setIncome(Integer paramInteger)
  {
    k = paramInteger;
  }
  
  public final void setInterests(String paramString)
  {
    m = paramString;
  }
  
  public final void setLanguage(String paramString)
  {
    s = paramString;
  }
  
  public final void setLocationInquiryAllowed(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final void setLocationWithCityStateCountry(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (!"".equals(paramString1.trim()))) {
      n = paramString1;
    }
    if ((paramString2 != null) && (!"".equals(paramString2.trim()))) {
      n = (n + "-" + paramString2);
    }
    if ((paramString3 != null) && (!"".equals(paramString3.trim()))) {
      n = (n + "-" + paramString3);
    }
  }
  
  public final void setMaritalStatus(MaritalStatus paramMaritalStatus)
  {
    r = paramMaritalStatus;
  }
  
  public final void setPostalCode(String paramString)
  {
    o = paramString;
  }
  
  public final void setSexualOrientation(SexualOrientation paramSexualOrientation)
  {
    t = paramSexualOrientation;
  }
  
  public final void setTestMode(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public final void updateDeviceInfo()
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      Display localDisplay = ((WindowManager)InternalSDKUtil.getContext().getSystemService("window")).getDefaultDisplay();
      localDisplay.getMetrics(localDisplayMetrics);
      float f1 = density;
      int i1 = (int)(WrapperFunctions.getDisplayWidth(localDisplay) / f1);
      int i2 = (int)(WrapperFunctions.getDisplayHeight(localDisplay) / f1);
      DeviceInfo.setScreenDensity(String.valueOf(f1));
      DeviceInfo.setScreenSize(i1 + "X" + i2);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Exception setting device info", localException);
    }
  }
  
  public final void updateInfo()
  {
    for (;;)
    {
      try
      {
        updateDeviceInfo();
        DeviceInfo.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(InternalSDKUtil.getContext()));
        DeviceInfo.getInstance().fillDeviceInfo();
        AppInfo.fillAppInfo();
        LocationInfo.b(false);
        if (isLocationInquiryAllowed())
        {
          if (getCurrentLocation() != null)
          {
            LocationInfo.a(getCurrentLocation());
            LocationInfo.b(true);
            return;
          }
          LocationInfo.verifyLocationPermission();
          if (LocationInfo.isLocationDeniedByUser()) {
            continue;
          }
          LocationInfo.updateBestKnownLocation();
          continue;
        }
      }
      catch (Exception localException)
      {
        Log.internal("[InMobi]-4.4.1", "Exception updating user info", localException);
        continue;
      }
      finally {}
      LocationInfo.a(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.data.UserInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */