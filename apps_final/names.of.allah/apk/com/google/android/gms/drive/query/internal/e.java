package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Iterator;
import java.util.Set;

class e
{
  static MetadataField<?> b(MetadataBundle paramMetadataBundle)
  {
    paramMetadataBundle = paramMetadataBundle.gB();
    if (paramMetadataBundle.size() != 1) {
      throw new IllegalArgumentException("bundle should have exactly 1 populated field");
    }
    return (MetadataField)paramMetadataBundle.iterator().next();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */