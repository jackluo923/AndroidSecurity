package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="NonLinearAds")
public class VAST$Ad$Creative$NonLinearAds
{
  @ElementList(inline=true, required=false)
  List<VAST.Ad.Creative.NonLinearAds.NonLinear> nonLinears;
  @ElementList(name="TrackingEvents", required=false)
  List<VAST.Ad.Creative.Tracking> trackingEvents;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.NonLinearAds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */