package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="Wrapper")
public class VAST$Ad$Wrapper
{
  @Element(name="VASTAdTagURI")
  String VASTAdTagUri;
  @Element(name="AdSystem")
  VAST.Ad.AdSystem adSystem;
  @ElementList(name="Creatives", required=false)
  List<VAST.Ad.Creative> creatives;
  @Element(name="Error", required=false)
  String error;
  @ElementList(inline=true)
  List<VAST.Ad.Impression> impressions;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad.Wrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */