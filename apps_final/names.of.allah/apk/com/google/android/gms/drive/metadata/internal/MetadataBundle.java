package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class MetadataBundle
  implements SafeParcelable
{
  public static final Parcelable.Creator<MetadataBundle> CREATOR = new h();
  final Bundle JP;
  final int xJ;
  
  MetadataBundle(int paramInt, Bundle paramBundle)
  {
    xJ = paramInt;
    JP = ((Bundle)hn.f(paramBundle));
    JP.setClassLoader(getClass().getClassLoader());
    paramBundle = new ArrayList();
    Object localObject = JP.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (e.aN(str) == null)
      {
        paramBundle.add(str);
        Log.w("MetadataBundle", "Ignored unknown metadata field in bundle: " + str);
      }
    }
    paramBundle = paramBundle.iterator();
    while (paramBundle.hasNext())
    {
      localObject = (String)paramBundle.next();
      JP.remove((String)localObject);
    }
  }
  
  private MetadataBundle(Bundle paramBundle)
  {
    this(1, paramBundle);
  }
  
  public static <T> MetadataBundle a(MetadataField<T> paramMetadataField, T paramT)
  {
    MetadataBundle localMetadataBundle = gA();
    localMetadataBundle.b(paramMetadataField, paramT);
    return localMetadataBundle;
  }
  
  public static MetadataBundle a(MetadataBundle paramMetadataBundle)
  {
    return new MetadataBundle(new Bundle(JP));
  }
  
  public static MetadataBundle gA()
  {
    return new MetadataBundle(new Bundle());
  }
  
  public final <T> T a(MetadataField<T> paramMetadataField)
  {
    return (T)paramMetadataField.e(JP);
  }
  
  public final <T> void b(MetadataField<T> paramMetadataField, T paramT)
  {
    if (e.aN(paramMetadataField.getName()) == null) {
      throw new IllegalArgumentException("Unregistered field: " + paramMetadataField.getName());
    }
    paramMetadataField.a(paramT, JP);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof MetadataBundle)) {
      return false;
    }
    paramObject = (MetadataBundle)paramObject;
    Object localObject = JP.keySet();
    if (!((Set)localObject).equals(JP.keySet())) {
      return false;
    }
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (!hl.equal(JP.get(str), JP.get(str))) {
        return false;
      }
    }
    return true;
  }
  
  public final Set<MetadataField<?>> gB()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = JP.keySet().iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(e.aN((String)localIterator.next()));
    }
    return localHashSet;
  }
  
  public final int hashCode()
  {
    Iterator localIterator = JP.keySet().iterator();
    String str;
    for (int i = 1; localIterator.hasNext(); i = JP.get(str).hashCode() + i * 31) {
      str = (String)localIterator.next();
    }
    return i;
  }
  
  public final String toString()
  {
    return "MetadataBundle [values=" + JP + "]";
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.MetadataBundle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */