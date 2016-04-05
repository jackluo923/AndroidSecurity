package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="VideoClicks")
public class VAST$Ad$Creative$Linear$VideoClicks
{
  @Element(name="ClickThrough", required=false)
  String clickThrough;
  @ElementList(inline=true, required=false)
  List<VAST.Ad.Creative.Linear.ClickTracking> clickTracking;
  @ElementList(inline=true, required=false)
  List<VAST.Ad.Creative.Linear.CustomClick> customClicks;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.Linear.VideoClicks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */