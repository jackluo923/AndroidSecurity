package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class hw
  implements SafeParcelable, hz.b<String, Integer>
{
  public static final hx CREATOR = new hx();
  private final HashMap<String, Integer> GT;
  private final HashMap<Integer, String> GU;
  private final ArrayList<hw.a> GV;
  private final int xJ;
  
  public hw()
  {
    xJ = 1;
    GT = new HashMap();
    GU = new HashMap();
    GV = null;
  }
  
  hw(int paramInt, ArrayList<hw.a> paramArrayList)
  {
    xJ = paramInt;
    GT = new HashMap();
    GU = new HashMap();
    GV = null;
    a(paramArrayList);
  }
  
  private void a(ArrayList<hw.a> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      hw.a locala = (hw.a)paramArrayList.next();
      f(GW, GX);
    }
  }
  
  public final String a(Integer paramInteger)
  {
    String str = (String)GU.get(paramInteger);
    paramInteger = str;
    if (str == null)
    {
      paramInteger = str;
      if (GT.containsKey("gms_unknown")) {
        paramInteger = "gms_unknown";
      }
    }
    return paramInteger;
  }
  
  public final int describeContents()
  {
    hx localhx = CREATOR;
    return 0;
  }
  
  public final hw f(String paramString, int paramInt)
  {
    GT.put(paramString, Integer.valueOf(paramInt));
    GU.put(Integer.valueOf(paramInt), paramString);
    return this;
  }
  
  public final int fA()
  {
    return 0;
  }
  
  final ArrayList<hw.a> fy()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = GT.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new hw.a(str, ((Integer)GT.get(str)).intValue()));
    }
    return localArrayList;
  }
  
  public final int fz()
  {
    return 7;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    hx localhx = CREATOR;
    hx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */