package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage
  implements SafeParcelable
{
  public static final Parcelable.Creator<WebImage> CREATOR = new b();
  private final Uri Fr;
  private final int ks;
  private final int kt;
  private final int xJ;
  
  WebImage(int paramInt1, Uri paramUri, int paramInt2, int paramInt3)
  {
    xJ = paramInt1;
    Fr = paramUri;
    ks = paramInt2;
    kt = paramInt3;
  }
  
  public WebImage(Uri paramUri)
  {
    this(paramUri, 0, 0);
  }
  
  public WebImage(Uri paramUri, int paramInt1, int paramInt2)
  {
    this(1, paramUri, paramInt1, paramInt2);
    if (paramUri == null) {
      throw new IllegalArgumentException("url cannot be null");
    }
    if ((paramInt1 < 0) || (paramInt2 < 0)) {
      throw new IllegalArgumentException("width and height must not be negative");
    }
  }
  
  public WebImage(JSONObject paramJSONObject)
  {
    this(c(paramJSONObject), paramJSONObject.optInt("width", 0), paramJSONObject.optInt("height", 0));
  }
  
  private static Uri c(JSONObject paramJSONObject)
  {
    Uri localUri = null;
    if (paramJSONObject.has("url")) {}
    try
    {
      localUri = Uri.parse(paramJSONObject.getString("url"));
      return localUri;
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  public final JSONObject dU()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("url", Fr.toString());
      localJSONObject.put("width", ks);
      localJSONObject.put("height", kt);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof WebImage))) {
        return false;
      }
      paramObject = (WebImage)paramObject;
    } while ((hl.equal(Fr, Fr)) && (ks == ks) && (kt == kt));
    return false;
  }
  
  public final int getHeight()
  {
    return kt;
  }
  
  public final Uri getUrl()
  {
    return Fr;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final int getWidth()
  {
    return ks;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Fr, Integer.valueOf(ks), Integer.valueOf(kt) });
  }
  
  public final String toString()
  {
    return String.format("Image %dx%d %s", new Object[] { Integer.valueOf(ks), Integer.valueOf(kt), Fr.toString() });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.WebImage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */