package com.appyet.f;

import android.webkit.MimeTypeMap;

public final class v
{
  public static String a(String paramString)
  {
    Object localObject = null;
    String str = MimeTypeMap.getFileExtensionFromUrl(paramString.substring(paramString.lastIndexOf('.')));
    paramString = (String)localObject;
    if (str != null) {
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */