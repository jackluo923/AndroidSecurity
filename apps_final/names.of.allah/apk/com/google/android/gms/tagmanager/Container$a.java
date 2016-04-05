package com.google.android.gms.tagmanager;

import java.util.Map;

class Container$a
  implements s.a
{
  private Container$a(Container paramContainer) {}
  
  public Object b(String paramString, Map<String, Object> paramMap)
  {
    Container.FunctionCallMacroCallback localFunctionCallMacroCallback = aex.bF(paramString);
    if (localFunctionCallMacroCallback == null) {
      return null;
    }
    return localFunctionCallMacroCallback.getValue(paramString, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */