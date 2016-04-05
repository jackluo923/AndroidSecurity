package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="Linear")
public class VAST$Ad$Creative$Linear
{
  @Element(name="Duration")
  String duration;
  @ElementList(name="MediaFiles")
  List<VAST.Ad.Creative.Linear.MediaFile> mediaFiles;
  @Attribute(name="skipoffset", required=false)
  String skipoffset;
  @ElementList(name="TrackingEvents", required=false)
  List<VAST.Ad.Creative.Tracking> trackingEvents;
  @Element(name="VideoClicks", required=false)
  VAST.Ad.Creative.Linear.VideoClicks videoClicks;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Creative.Linear
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */