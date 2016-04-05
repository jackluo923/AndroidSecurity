package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name="NonLinear")
public class VAST$Ad$Creative$NonLinearAds$NonLinear
{
  @Attribute(name="apiFramework", required=false)
  String apiFramework;
  @Attribute(name="expandedHeight", required=false)
  int expandedHeight;
  @Attribute(name="expandedWidth", required=false)
  int expandedWidth;
  @Attribute(name="height")
  int height;
  @Element(name="HTMLResource", required=false)
  String htmlResource;
  @Attribute(name="id", required=false)
  String id;
  @Element(name="IFrameResource", required=false)
  String iframeResource;
  @Attribute(name="maintainAspectRatio", required=false)
  boolean maintainAspectRatio;
  @Attribute(name="minSuggestedDuration", required=false)
  String minSuggestedDuration;
  @Element(name="NonLinearClickThrough", required=false)
  String nonLinearClickThrough;
  @Element(name="NonLinearClickTracking", required=false)
  String nonLinearClickTracking;
  @Attribute(name="scalable", required=false)
  boolean scalable;
  @Element(name="StaticResource", required=false)
  VAST.Ad.Creative.StaticResource staticResource;
  @Attribute(name="width")
  int width;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.NonLinearAds.NonLinear
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */