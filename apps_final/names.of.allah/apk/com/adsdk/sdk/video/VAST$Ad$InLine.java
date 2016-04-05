package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="InLine")
public class VAST$Ad$InLine
{
  @Element(name="AdSystem")
  VAST.Ad.AdSystem adSystem;
  @Element(name="AdTitle")
  String adTitle;
  @Element(name="Advertiser", required=false)
  String advertiser;
  @ElementList(name="Creatives")
  List<VAST.Ad.Creative> creatives;
  @Element(name="Description", required=false)
  String description;
  @Element(name="Error", required=false)
  String error;
  @ElementList(inline=true)
  List<VAST.Ad.Impression> impressions;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.InLine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */