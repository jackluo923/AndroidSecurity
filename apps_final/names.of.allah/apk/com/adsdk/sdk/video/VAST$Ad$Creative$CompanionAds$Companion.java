package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="Companion")
public class VAST$Ad$Creative$CompanionAds$Companion
{
  @Attribute(name="adSlotID", required=false)
  String adSlotID;
  @Element(name="AltText", required=false)
  String altText;
  @Attribute(name="apiFramework", required=false)
  String apiFramework;
  @Attribute(name="assetHeight", required=false)
  int assetHeight;
  @Attribute(name="assetWidth", required=false)
  int assetWidth;
  @Element(name="CompanionClickThrough", required=false)
  String companionClickThrough;
  @Element(name="CompanionClickTracking", required=false)
  String companionClickTracking;
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
  @Element(name="StaticResource", required=false)
  VAST.Ad.Creative.StaticResource staticResource;
  @ElementList(name="TrackingEvents", required=false)
  List<VAST.Ad.Creative.Tracking> trackingEvents;
  @Attribute(name="width")
  int width;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.CompanionAds.Companion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */