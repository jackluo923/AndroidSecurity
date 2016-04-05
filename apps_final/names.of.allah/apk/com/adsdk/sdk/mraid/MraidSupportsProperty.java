package com.adsdk.sdk.mraid;

class MraidSupportsProperty
  extends MraidProperty
{
  private boolean calendar;
  private boolean inlineVideo;
  private boolean sms;
  private boolean storePicture;
  private boolean tel;
  
  public String toJsonPair()
  {
    return "supports: {sms: " + String.valueOf(sms) + ", tel: " + String.valueOf(tel) + ", calendar: " + String.valueOf(calendar) + ", storePicture: " + String.valueOf(storePicture) + ", inlineVideo: " + String.valueOf(inlineVideo) + "}";
  }
  
  public MraidSupportsProperty withCalendar(boolean paramBoolean)
  {
    calendar = paramBoolean;
    return this;
  }
  
  public MraidSupportsProperty withInlineVideo(boolean paramBoolean)
  {
    inlineVideo = paramBoolean;
    return this;
  }
  
  public MraidSupportsProperty withSms(boolean paramBoolean)
  {
    sms = paramBoolean;
    return this;
  }
  
  public MraidSupportsProperty withStorePicture(boolean paramBoolean)
  {
    storePicture = paramBoolean;
    return this;
  }
  
  public MraidSupportsProperty withTel(boolean paramBoolean)
  {
    tel = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidSupportsProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */