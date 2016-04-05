package com.adsdk.sdk.video;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

public class VideoData
  implements Serializable
{
  public static final int DELIVERY_PROGRESSIVE = 0;
  public static final int DELIVERY_STREAMING = 1;
  public static final int DISPLAY_FULLSCREEN = 0;
  public static final int DISPLAY_NORMAL = 1;
  public static final int OVERLAY_MARKUP = 1;
  public static final int OVERLAY_URL = 0;
  private static final long serialVersionUID = 3402649540160829602L;
  boolean allowTapNavigationBars;
  int bitrate;
  String bottomNavigationBarBackground;
  Vector<String> completeEvents = new Vector();
  int delivery;
  int display;
  int duration;
  int height;
  String htmlOverlayMarkup;
  int htmlOverlayType;
  String htmlOverlayUrl;
  Vector<NavIconData> icons = new Vector();
  Vector<String> impressionEvents = new Vector();
  Vector<String> muteEvents = new Vector();
  int orientation;
  String overlayClickThrough;
  String overlayClickTracking;
  int overlayHeight;
  int overlayWidth;
  String pauseButtonImage;
  Vector<String> pauseEvents = new Vector();
  String playButtonImage;
  String replayButtonImage;
  Vector<String> replayEvents = new Vector();
  Vector<String> resumeEvents = new Vector();
  private int sequence;
  boolean showBottomNavigationBar;
  boolean showHtmlOverlay = false;
  int showHtmlOverlayAfter;
  boolean showNavigationBars;
  boolean showPauseButton;
  boolean showReplayButton;
  boolean showSkipButton;
  int showSkipButtonAfter;
  boolean showTimer;
  boolean showTopNavigationBar;
  String skipButtonImage;
  Vector<String> skipEvents = new Vector();
  Vector<String> startEvents = new Vector();
  HashMap<Integer, Vector<String>> timeTrackingEvents = new HashMap();
  String topNavigationBarBackground;
  String type;
  Vector<String> unmuteEvents = new Vector();
  String videoClickThrough;
  List<String> videoClickTracking;
  String videoUrl;
  int width;
  
  public Vector<String> getCompleteEvents()
  {
    return completeEvents;
  }
  
  public int getSequence()
  {
    return sequence;
  }
  
  public Vector<String> getStartEvents()
  {
    return startEvents;
  }
  
  public void setCompleteEvents(Vector<String> paramVector)
  {
    completeEvents = paramVector;
  }
  
  public void setSequence(int paramInt)
  {
    sequence = paramInt;
  }
  
  public void setStartEvents(Vector<String> paramVector)
  {
    startEvents = paramVector;
  }
  
  public String toString()
  {
    return "VideoData \n[\norientation=" + orientation + ",\ndisplay=" + display + ",\ndelivery=" + delivery + ",\ntype=" + type + ",\nbitrate=" + bitrate + ",\nwidth=" + width + ",\nheight=" + height + ",\nvideoUrl=" + videoUrl + ",\nduration=" + duration + ",\nshowSkipButton=" + showSkipButton + ",\nshowSkipButtonAfter=" + showSkipButtonAfter + ",\nskipButtonImage=" + skipButtonImage + ",\nshowNavigationBars=" + showNavigationBars + ",\nallowTapNavigationBars=" + allowTapNavigationBars + ",\nshowTopNavigationBar=" + showTopNavigationBar + ",\ntopNavigationBarBackground=" + topNavigationBarBackground + ",\nshowBottomNavigationBar=" + showBottomNavigationBar + ",\nbottomNavigationBarBackground=" + bottomNavigationBarBackground + ",\nshowPauseButton=" + showPauseButton + ",\npauseButtonImage=" + pauseButtonImage + ",\nplayButtonImage=" + playButtonImage + ",\nshowReplayButton=" + showReplayButton + ",\nreplayButtonImage=" + replayButtonImage + ",\nshowTimer=" + showTimer + ",\nicons=" + icons + ",\ntimeTrackingEvents=" + timeTrackingEvents + ",\nstartEvents=" + getStartEvents() + ",\ncompleteEvents=" + getCompleteEvents() + ",\nmuteEvents=" + muteEvents + ",\nunmuteEvents=" + unmuteEvents + ",\npauseEvents=" + pauseEvents + ",\nunpauseEvents=" + resumeEvents + ",\nskipEvents=" + skipEvents + ",\nreplayEvents=" + replayEvents + ",\nshowHtmlOverlay=" + showHtmlOverlay + ",\nshowHtmlOverlayAfter=" + showHtmlOverlayAfter + ",\nhtmlOverlayType=" + htmlOverlayType + ",\nhtmlOverlayUrl=" + htmlOverlayUrl + ",\nhtmlOverlayMarkup=" + htmlOverlayMarkup + "\n]";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VideoData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */