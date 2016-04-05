package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class MinimalClassNameIdResolver
  extends ClassNameIdResolver
{
  protected final String _basePackageName;
  protected final String _basePackagePrefix;
  
  protected MinimalClassNameIdResolver(JavaType paramJavaType, TypeFactory paramTypeFactory)
  {
    super(paramJavaType, paramTypeFactory);
    paramJavaType = paramJavaType.getRawClass().getName();
    int i = paramJavaType.lastIndexOf('.');
    if (i < 0)
    {
      _basePackageName = "";
      _basePackagePrefix = ".";
      return;
    }
    _basePackagePrefix = paramJavaType.substring(0, i + 1);
    _basePackageName = paramJavaType.substring(0, i);
  }
  
  public JsonTypeInfo.Id getMechanism()
  {
    return JsonTypeInfo.Id.MINIMAL_CLASS;
  }
  
  public String idFromValue(Object paramObject)
  {
    String str = paramObject.getClass().getName();
    paramObject = str;
    if (str.startsWith(_basePackagePrefix)) {
      paramObject = str.substring(_basePackagePrefix.length() - 1);
    }
    return (String)paramObject;
  }
  
  public JavaType typeFromId(String paramString)
  {
    Object localObject = paramString;
    if (paramString.startsWith("."))
    {
      localObject = new StringBuilder(paramString.length() + _basePackageName.length());
      if (_basePackageName.length() != 0) {
        break label62;
      }
      ((StringBuilder)localObject).append(paramString.substring(1));
    }
    for (;;)
    {
      localObject = ((StringBuilder)localObject).toString();
      return super.typeFromId((String)localObject);
      label62:
      ((StringBuilder)localObject).append(_basePackageName).append(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.MinimalClassNameIdResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */