package com.google.android.gms.internal;

import com.google.android.gms.common.data.a;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.g;
import com.google.android.gms.drive.metadata.internal.k;
import com.google.android.gms.drive.metadata.internal.l;
import java.util.Collections;

public class ir
{
  public static final MetadataField<DriveId> JQ = iu.Ky;
  public static final MetadataField<String> JR = new l("alternateLink", 4300000);
  public static final ir.a JS = new ir.a(5000000);
  public static final MetadataField<String> JT = new l("description", 4300000);
  public static final MetadataField<String> JU = new l("embedLink", 4300000);
  public static final MetadataField<String> JV = new l("fileExtension", 4300000);
  public static final MetadataField<Long> JW = new g("fileSize", 4300000);
  public static final MetadataField<Boolean> JX = new com.google.android.gms.drive.metadata.internal.b("hasThumbnail", 4300000);
  public static final MetadataField<String> JY = new l("indexableText", 4300000);
  public static final MetadataField<Boolean> JZ = new com.google.android.gms.drive.metadata.internal.b("isAppData", 4300000);
  public static final MetadataField<Boolean> Ka = new com.google.android.gms.drive.metadata.internal.b("isCopyable", 4300000);
  public static final MetadataField<Boolean> Kb = new com.google.android.gms.drive.metadata.internal.b("isEditable", 4100000);
  public static final ir.b Kc = new ir.b("isPinned", 4100000);
  public static final MetadataField<Boolean> Kd = new com.google.android.gms.drive.metadata.internal.b("isRestricted", 4300000);
  public static final MetadataField<Boolean> Ke = new com.google.android.gms.drive.metadata.internal.b("isShared", 4300000);
  public static final MetadataField<Boolean> Kf = new com.google.android.gms.drive.metadata.internal.b("isTrashable", 4400000);
  public static final MetadataField<Boolean> Kg = new com.google.android.gms.drive.metadata.internal.b("isViewed", 4300000);
  public static final ir.c Kh = new ir.c("mimeType", 4100000);
  public static final MetadataField<String> Ki = new l("originalFilename", 4300000);
  public static final com.google.android.gms.drive.metadata.b<String> Kj = new k("ownerNames", 4300000);
  public static final ir.d Kk = new ir.d("parents", 4100000);
  public static final ir.e Kl = new ir.e("quotaBytesUsed", 4300000);
  public static final ir.f Km = new ir.f("starred", 4100000);
  public static final MetadataField<a> Kn = new ir.1("thumbnail", Collections.emptySet(), Collections.emptySet(), 4400000);
  public static final ir.g Ko = new ir.g("title", 4100000);
  public static final ir.h Kp = new ir.h("trashed", 4100000);
  public static final MetadataField<String> Kq = new l("webContentLink", 4300000);
  public static final MetadataField<String> Kr = new l("webViewLink", 4300000);
  public static final MetadataField<String> Ks = new l("uniqueIdentifier", 5000000);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */