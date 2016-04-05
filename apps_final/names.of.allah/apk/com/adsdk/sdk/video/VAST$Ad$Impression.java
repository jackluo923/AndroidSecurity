package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

@Root(name="Impression")
public class VAST$Ad$Impression
{
  @Attribute(name="id", required=false)
  String id;
  @Text
  String url;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Impression
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */