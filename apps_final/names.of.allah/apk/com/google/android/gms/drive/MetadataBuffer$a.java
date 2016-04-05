package com.google.android.gms.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.internal.l;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.internal.e;
import com.google.android.gms.internal.ir;
import java.util.Collection;
import java.util.Iterator;

class MetadataBuffer$a
  extends Metadata
{
  private final DataHolder DD;
  private final int EA;
  private final int HR;
  
  public MetadataBuffer$a(DataHolder paramDataHolder, int paramInt)
  {
    DD = paramDataHolder;
    HR = paramInt;
    EA = paramDataHolder.ae(paramInt);
  }
  
  protected <T> T a(MetadataField<T> paramMetadataField)
  {
    return (T)paramMetadataField.a(DD, HR, EA);
  }
  
  public Metadata gg()
  {
    MetadataBundle localMetadataBundle = MetadataBundle.gA();
    Iterator localIterator = e.gz().iterator();
    while (localIterator.hasNext())
    {
      MetadataField localMetadataField = (MetadataField)localIterator.next();
      if ((!(localMetadataField instanceof b)) && (localMetadataField != ir.Kn)) {
        localMetadataField.a(DD, localMetadataBundle, HR, EA);
      }
    }
    return new l(localMetadataBundle);
  }
  
  public boolean isDataValid()
  {
    return !DD.isClosed();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.MetadataBuffer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */