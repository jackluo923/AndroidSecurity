package com.google.android.gms.drive;

import android.content.Context;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.ir;
import com.google.android.gms.internal.it;
import java.util.Date;

public class MetadataChangeSet$Builder
{
  private final MetadataBundle HT = MetadataBundle.gA();
  private AppVisibleCustomProperties.a HU;
  private final Context mContext;
  
  public MetadataChangeSet$Builder()
  {
    this(null);
  }
  
  public MetadataChangeSet$Builder(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public MetadataChangeSet build()
  {
    if (HU != null) {
      HT.b(ir.JS, HU.gy());
    }
    return new MetadataChangeSet(HT);
  }
  
  public Builder setDescription(String paramString)
  {
    HT.b(ir.JT, paramString);
    return this;
  }
  
  public Builder setIndexableText(String paramString)
  {
    HT.b(ir.JY, paramString);
    return this;
  }
  
  public Builder setLastViewedByMeDate(Date paramDate)
  {
    HT.b(it.Ku, paramDate);
    return this;
  }
  
  public Builder setMimeType(String paramString)
  {
    HT.b(ir.Kh, paramString);
    return this;
  }
  
  public Builder setPinned(boolean paramBoolean)
  {
    HT.b(ir.Kc, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public Builder setStarred(boolean paramBoolean)
  {
    HT.b(ir.Km, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public Builder setTitle(String paramString)
  {
    HT.b(ir.Ko, paramString);
    return this;
  }
  
  public Builder setViewed(boolean paramBoolean)
  {
    HT.b(ir.Kg, Boolean.valueOf(paramBoolean));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.MetadataChangeSet.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */