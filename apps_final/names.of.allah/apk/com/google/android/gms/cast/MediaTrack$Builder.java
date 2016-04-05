package com.google.android.gms.cast;

import com.google.android.gms.internal.gj;
import java.util.Locale;
import org.json.JSONObject;

public class MediaTrack$Builder
{
  private final MediaTrack AS;
  
  public MediaTrack$Builder(long paramLong, int paramInt)
  {
    AS = new MediaTrack(paramLong, paramInt);
  }
  
  public MediaTrack build()
  {
    return AS;
  }
  
  public Builder setContentId(String paramString)
  {
    AS.setContentId(paramString);
    return this;
  }
  
  public Builder setContentType(String paramString)
  {
    AS.setContentType(paramString);
    return this;
  }
  
  public Builder setCustomData(JSONObject paramJSONObject)
  {
    AS.setCustomData(paramJSONObject);
    return this;
  }
  
  public Builder setLanguage(String paramString)
  {
    AS.setLanguage(paramString);
    return this;
  }
  
  public Builder setLanguage(Locale paramLocale)
  {
    AS.setLanguage(gj.b(paramLocale));
    return this;
  }
  
  public Builder setName(String paramString)
  {
    AS.setName(paramString);
    return this;
  }
  
  public Builder setSubtype(int paramInt)
  {
    AS.R(paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.MediaTrack.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */