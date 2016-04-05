package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Text;

@Root(name="MediaFile")
public class VAST$Ad$Creative$Linear$MediaFile
{
  @Attribute(name="apiFramework", required=false)
  String apiFramework;
  @Attribute(name="bitrate", required=false)
  String bitrate;
  @Attribute(name="codec", required=false)
  String codec;
  @Attribute(name="delivery")
  String delivery;
  @Attribute(name="height")
  int height;
  @Attribute(name="id", required=false)
  String id;
  @Attribute(name="maintainAspectRatio", required=false)
  boolean maintainAspectRatio;
  @Attribute(name="scalable", required=false)
  boolean scalable;
  @Attribute(name="type")
  String type;
  @Text
  String url;
  @Attribute(name="width")
  int width;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.Linear.MediaFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */