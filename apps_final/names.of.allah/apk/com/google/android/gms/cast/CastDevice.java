package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.gj;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class CastDevice
  implements SafeParcelable
{
  public static final Parcelable.Creator<CastDevice> CREATOR = new b();
  private String Ae;
  String Af;
  private Inet4Address Ag;
  private String Ah;
  private String Ai;
  private String Aj;
  private int Ak;
  private List<WebImage> Al;
  private int Am;
  private final int xJ;
  
  private CastDevice()
  {
    this(2, null, null, null, null, null, -1, new ArrayList(), 0);
  }
  
  CastDevice(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt2, List<WebImage> paramList, int paramInt3)
  {
    xJ = paramInt1;
    Ae = paramString1;
    Af = paramString2;
    if (Af != null) {}
    try
    {
      paramString1 = InetAddress.getByName(Af);
      if ((paramString1 instanceof Inet4Address)) {
        Ag = ((Inet4Address)paramString1);
      }
      Ah = paramString3;
      Ai = paramString4;
      Aj = paramString5;
      Ak = paramInt2;
      Al = paramList;
      Am = paramInt3;
      return;
    }
    catch (UnknownHostException paramString1)
    {
      for (;;)
      {
        Ag = null;
      }
    }
  }
  
  public static CastDevice getFromBundle(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    paramBundle.setClassLoader(CastDevice.class.getClassLoader());
    return (CastDevice)paramBundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof CastDevice)) {
          return false;
        }
        paramObject = (CastDevice)paramObject;
        if (getDeviceId() != null) {
          break;
        }
      } while (((CastDevice)paramObject).getDeviceId() == null);
      return false;
    } while ((gj.a(Ae, Ae)) && (gj.a(Ag, Ag)) && (gj.a(Ai, Ai)) && (gj.a(Ah, Ah)) && (gj.a(Aj, Aj)) && (Ak == Ak) && (gj.a(Al, Al)) && (Am == Am));
    return false;
  }
  
  public int getCapabilities()
  {
    return Am;
  }
  
  public String getDeviceId()
  {
    return Ae;
  }
  
  public String getDeviceVersion()
  {
    return Aj;
  }
  
  public String getFriendlyName()
  {
    return Ah;
  }
  
  public WebImage getIcon(int paramInt1, int paramInt2)
  {
    Object localObject1 = null;
    if (Al.isEmpty()) {
      return null;
    }
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      return (WebImage)Al.get(0);
    }
    Iterator localIterator = Al.iterator();
    Object localObject2 = null;
    WebImage localWebImage;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localWebImage = (WebImage)localIterator.next();
        int i = localWebImage.getWidth();
        int j = localWebImage.getHeight();
        if ((i >= paramInt1) && (j >= paramInt2))
        {
          if ((localObject2 != null) && ((((WebImage)localObject2).getWidth() <= i) || (((WebImage)localObject2).getHeight() <= j))) {
            break label216;
          }
          localObject2 = localWebImage;
        }
        else
        {
          if ((i >= paramInt1) || (j >= paramInt2)) {
            break label216;
          }
          localObject3 = localWebImage;
          if (localObject1 != null) {
            if ((((WebImage)localObject1).getWidth() >= i) || (((WebImage)localObject1).getHeight() >= j)) {
              break label216;
            }
          }
        }
      }
    }
    label216:
    for (Object localObject3 = localWebImage;; localObject3 = localObject1)
    {
      localObject1 = localObject3;
      break;
      if (localObject2 != null) {}
      for (;;)
      {
        return (WebImage)localObject2;
        if (localObject1 != null) {
          localObject2 = localObject1;
        } else {
          localObject2 = (WebImage)Al.get(0);
        }
      }
    }
  }
  
  public List<WebImage> getIcons()
  {
    return Collections.unmodifiableList(Al);
  }
  
  public Inet4Address getIpAddress()
  {
    return Ag;
  }
  
  public String getModelName()
  {
    return Ai;
  }
  
  public int getServicePort()
  {
    return Ak;
  }
  
  int getVersionCode()
  {
    return xJ;
  }
  
  public boolean hasIcons()
  {
    return !Al.isEmpty();
  }
  
  public int hashCode()
  {
    if (Ae == null) {
      return 0;
    }
    return Ae.hashCode();
  }
  
  public boolean isSameDevice(CastDevice paramCastDevice)
  {
    if (paramCastDevice == null) {}
    do
    {
      return false;
      if (getDeviceId() != null) {
        break;
      }
    } while (paramCastDevice.getDeviceId() != null);
    return true;
    return gj.a(getDeviceId(), paramCastDevice.getDeviceId());
  }
  
  public void putInBundle(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    paramBundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
  }
  
  public String toString()
  {
    return String.format("\"%s\" (%s)", new Object[] { Ah, Ae });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.CastDevice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */