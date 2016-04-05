package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class l
  extends Metadata
{
  private final MetadataBundle IF;
  
  public l(MetadataBundle paramMetadataBundle)
  {
    IF = paramMetadataBundle;
  }
  
  protected final <T> T a(MetadataField<T> paramMetadataField)
  {
    return (T)IF.a(paramMetadataField);
  }
  
  public final Metadata gg()
  {
    return new l(MetadataBundle.a(IF));
  }
  
  public final boolean isDataValid()
  {
    return IF != null;
  }
  
  public final String toString()
  {
    return "Metadata [mImpl=" + IF + "]";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */