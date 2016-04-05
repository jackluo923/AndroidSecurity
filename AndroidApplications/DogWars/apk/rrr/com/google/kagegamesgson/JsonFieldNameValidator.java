package com.google.kagegamesgson;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

class JsonFieldNameValidator
{
  private static final String COMMON_PATTERN = "[a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$";
  private static final Pattern JSON_FIELD_NAME_PATTERN;
  
  static
  {
    Object localObject = "(^[a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)|(^[\\$_][a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)";
    localObject = Pattern.compile((String)localObject);
    JSON_FIELD_NAME_PATTERN = (Pattern)localObject;
  }
  
  public String validate(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str1 = "";
    Object localObject = paramString.trim();
    boolean bool1 = str1.equals(localObject);
    if (!bool1) {}
    int i;
    for (bool1 = true;; i = 0)
    {
      Preconditions.checkArgument(bool1);
      Pattern localPattern = JSON_FIELD_NAME_PATTERN;
      Matcher localMatcher = localPattern.matcher(paramString);
      boolean bool2 = localMatcher.matches();
      if (bool2) {
        break;
      }
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      localObject = ((StringBuilder)localObject).append(paramString);
      String str2 = " is not a valid JSON field name.";
      localObject = ((StringBuilder)localObject).append(str2);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException.<init>((String)localObject);
      throw localIllegalArgumentException;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonFieldNameValidator
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */