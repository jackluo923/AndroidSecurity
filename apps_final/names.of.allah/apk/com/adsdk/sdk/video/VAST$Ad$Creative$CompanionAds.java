package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="CompanionAds")
public class VAST$Ad$Creative$CompanionAds
{
  @ElementList(inline=true, required=false)
  List<VAST.Ad.Creative.CompanionAds.Companion> companions;
  @Attribute(name="required", required=false)
  String required;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.CompanionAds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */