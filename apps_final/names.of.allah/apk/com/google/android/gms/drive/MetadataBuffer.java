package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class MetadataBuffer
  extends DataBuffer<Metadata>
{
  private static final String[] HO;
  private final String HP;
  private MetadataBuffer.a HQ;
  
  static
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = e.gz().iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(((MetadataField)localIterator.next()).gx());
    }
    HO = (String[])localArrayList.toArray(new String[0]);
  }
  
  public MetadataBuffer(DataHolder paramDataHolder, String paramString)
  {
    super(paramDataHolder);
    HP = paramString;
    paramDataHolder.eP().setClassLoader(MetadataBuffer.class.getClassLoader());
  }
  
  public final Metadata get(int paramInt)
  {
    MetadataBuffer.a locala2 = HQ;
    MetadataBuffer.a locala1;
    if (locala2 != null)
    {
      locala1 = locala2;
      if (MetadataBuffer.a.a(locala2) == paramInt) {}
    }
    else
    {
      locala1 = new MetadataBuffer.a(DD, paramInt);
      HQ = locala1;
    }
    return locala1;
  }
  
  public final String getNextPageToken()
  {
    return HP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.MetadataBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */