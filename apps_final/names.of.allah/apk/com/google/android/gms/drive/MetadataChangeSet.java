package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.ir;
import com.google.android.gms.internal.it;
import java.util.Date;

public final class MetadataChangeSet
{
  public static final MetadataChangeSet HS = new MetadataChangeSet(MetadataBundle.gA());
  private final MetadataBundle HT;
  
  public MetadataChangeSet(MetadataBundle paramMetadataBundle)
  {
    HT = MetadataBundle.a(paramMetadataBundle);
  }
  
  public final String getDescription()
  {
    return (String)HT.a(ir.JT);
  }
  
  public final String getIndexableText()
  {
    return (String)HT.a(ir.JY);
  }
  
  public final Date getLastViewedByMeDate()
  {
    return (Date)HT.a(it.Ku);
  }
  
  public final String getMimeType()
  {
    return (String)HT.a(ir.Kh);
  }
  
  public final String getTitle()
  {
    return (String)HT.a(ir.Ko);
  }
  
  public final MetadataBundle gh()
  {
    return HT;
  }
  
  public final Boolean isPinned()
  {
    return (Boolean)HT.a(ir.Kc);
  }
  
  public final Boolean isStarred()
  {
    return (Boolean)HT.a(ir.Km);
  }
  
  public final Boolean isViewed()
  {
    return (Boolean)HT.a(ir.Kg);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.MetadataChangeSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */