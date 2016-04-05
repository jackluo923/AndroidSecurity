package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

@Root(name="StaticResource")
public class VAST$Ad$Creative$StaticResource
{
  @Attribute(name="creativeType", required=false)
  String type;
  @Text
  String url;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.StaticResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */