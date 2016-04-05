package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name="Creative")
public class VAST$Ad$Creative
{
  @Attribute(name="AdID", required=false)
  String adId;
  @Attribute(name="apiFramework", required=false)
  String apiFramework;
  @Element(name="CompanionAds", required=false)
  VAST.Ad.Creative.CompanionAds companionAds;
  @Attribute(name="id", required=false)
  String id;
  @Element(name="Linear", required=false)
  VAST.Ad.Creative.Linear linear;
  @Element(name="NonLinearAds", required=false)
  VAST.Ad.Creative.NonLinearAds nonLinearAds;
  @Attribute(name="sequence", required=false)
  int sequence;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */