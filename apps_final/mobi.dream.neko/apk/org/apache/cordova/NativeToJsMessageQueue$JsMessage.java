package org.apache.cordova;

import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class NativeToJsMessageQueue$JsMessage
{
  final String jsPayloadOrCallbackId;
  final PluginResult pluginResult;
  
  NativeToJsMessageQueue$JsMessage(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    jsPayloadOrCallbackId = paramString;
    pluginResult = null;
  }
  
  NativeToJsMessageQueue$JsMessage(PluginResult paramPluginResult, String paramString)
  {
    if ((paramString == null) || (paramPluginResult == null)) {
      throw new NullPointerException();
    }
    jsPayloadOrCallbackId = paramString;
    pluginResult = paramPluginResult;
  }
  
  int calculateEncodedLength()
  {
    if (pluginResult == null) {
      return jsPayloadOrCallbackId.length() + 1;
    }
    int i = String.valueOf(pluginResult.getStatus()).length() + 2 + 1 + jsPayloadOrCallbackId.length() + 1;
    switch (pluginResult.getMessageType())
    {
    case 2: 
    default: 
      return i + pluginResult.getMessage().length();
    case 4: 
    case 5: 
      return i + 1;
    case 3: 
      return i + (pluginResult.getMessage().length() + 1);
    case 1: 
      return i + (pluginResult.getStrMessage().length() + 1);
    case 7: 
      return i + (pluginResult.getMessage().length() + 1);
    }
    return i + (pluginResult.getMessage().length() + 1);
  }
  
  void encodeAsJsMessage(StringBuilder paramStringBuilder)
  {
    if (pluginResult == null)
    {
      paramStringBuilder.append(jsPayloadOrCallbackId);
      return;
    }
    int i = pluginResult.getStatus();
    if ((i == PluginResult.Status.OK.ordinal()) || (i == PluginResult.Status.NO_RESULT.ordinal())) {}
    for (boolean bool = true;; bool = false)
    {
      paramStringBuilder.append("cordova.callbackFromNative('").append(jsPayloadOrCallbackId).append("',").append(bool).append(",").append(i).append(",[").append(pluginResult.getMessage()).append("],").append(pluginResult.getKeepCallback()).append(");");
      return;
    }
  }
  
  void encodeAsMessage(StringBuilder paramStringBuilder)
  {
    if (pluginResult == null)
    {
      paramStringBuilder.append('J').append(jsPayloadOrCallbackId);
      return;
    }
    int k = pluginResult.getStatus();
    int i;
    label45:
    int j;
    label59:
    label81:
    StringBuilder localStringBuilder;
    if (k == PluginResult.Status.NO_RESULT.ordinal())
    {
      i = 1;
      if (k != PluginResult.Status.OK.ordinal()) {
        break label191;
      }
      j = 1;
      boolean bool = pluginResult.getKeepCallback();
      if ((i == 0) && (j == 0)) {
        break label197;
      }
      c = 'S';
      localStringBuilder = paramStringBuilder.append(c);
      if (!bool) {
        break label203;
      }
    }
    label191:
    label197:
    label203:
    for (char c = '1';; c = '0')
    {
      localStringBuilder.append(c).append(k).append(' ').append(jsPayloadOrCallbackId).append(' ');
      switch (pluginResult.getMessageType())
      {
      case 2: 
      default: 
        paramStringBuilder.append(pluginResult.getMessage());
        return;
        i = 0;
        break label45;
        j = 0;
        break label59;
        c = 'F';
        break label81;
      }
    }
    paramStringBuilder.append(pluginResult.getMessage().charAt(0));
    return;
    paramStringBuilder.append('N');
    return;
    paramStringBuilder.append('n').append(pluginResult.getMessage());
    return;
    paramStringBuilder.append('s');
    paramStringBuilder.append(pluginResult.getStrMessage());
    return;
    paramStringBuilder.append('S');
    paramStringBuilder.append(pluginResult.getMessage());
    return;
    paramStringBuilder.append('A');
    paramStringBuilder.append(pluginResult.getMessage());
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NativeToJsMessageQueue.JsMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */