package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

@Root
public class VAST$Ad$AdSystem
{
  @Text
  String name;
  @Attribute(name="version", required=false)
  String version;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.AdSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */