package com.adsdk.sdk.video;

import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name="VAST")
public class VAST
{
  @ElementList(inline=true)
  public List<VAST.Ad> ads;
  @Element(name="Error", required=false)
  public String error;
  @Attribute(name="version")
  public String version;
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VAST
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */