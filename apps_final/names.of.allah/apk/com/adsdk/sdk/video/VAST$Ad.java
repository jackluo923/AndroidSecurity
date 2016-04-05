package com.adsdk.sdk.video;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name="Ad")
public class VAST$Ad
{
  @Attribute(name="id", required=false)
  String id;
  @Element(name="InLine", required=false)
  VAST.Ad.InLine inLine;
  @Attribute(name="sequence", required=false)
  int sequence;
  @Element(name="Wrapper", required=false)
  VAST.Ad.Wrapper wrapper;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST.Ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */