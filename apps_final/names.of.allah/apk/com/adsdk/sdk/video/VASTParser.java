package com.adsdk.sdk.video;

import android.content.res.Resources.NotFoundException;
import com.adsdk.sdk.Log;
import java.io.InputStream;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

public class VASTParser
{
  private static final Pattern DURATION_PATTERN = Pattern.compile("^([0-5]?\\d):([0-5]?\\d):([0-5]?\\d)(?:\\.(\\d?\\d?\\d))?$");
  private static final Pattern PERCENT_PATTERN = Pattern.compile("^(\\d?\\d?)%$");
  
  public static VAST createVastFromStream(InputStream paramInputStream)
  {
    Persister localPersister = new Persister();
    try
    {
      paramInputStream = (VAST)localPersister.read(VAST.class, paramInputStream);
      return paramInputStream;
    }
    catch (Resources.NotFoundException paramInputStream)
    {
      paramInputStream.printStackTrace();
      return null;
    }
    catch (Exception paramInputStream)
    {
      paramInputStream.printStackTrace();
    }
    return null;
  }
  
  public static VAST createVastFromString(String paramString)
  {
    Persister localPersister = new Persister();
    try
    {
      paramString = (VAST)localPersister.read(VAST.class, paramString);
      return paramString;
    }
    catch (Resources.NotFoundException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static VideoData fillVideoDataFromVast(VAST paramVAST)
  {
    Object localObject6 = null;
    if (paramVAST == null) {}
    VideoData localVideoData;
    Iterator localIterator;
    Object localObject2;
    Object localObject1;
    label35:
    Object localObject3;
    Object localObject4;
    Object localObject5;
    while (localObject5 == null)
    {
      return null;
      localVideoData = new VideoData();
      localIterator = ads.iterator();
      localObject2 = null;
      localObject1 = null;
      paramVAST = null;
      if (localIterator.hasNext()) {
        break;
      }
      localObject3 = paramVAST;
      localObject4 = localObject1;
      localObject5 = localObject2;
    }
    localVideoData.setSequence(sequence);
    orientation = 4;
    if ((delivery != null) && (delivery.contains("streaming")))
    {
      delivery = 1;
      label100:
      display = 0;
      type = type;
      if (bitrate != null) {
        bitrate = Integer.parseInt(bitrate);
      }
      width = width;
      height = height;
      videoUrl = url;
      if (linear.duration != null) {
        duration = getDurationFromString(linear.duration);
      }
      showSkipButton = true;
      if (linear.skipoffset != null) {
        showSkipButtonAfter = getSkipoffsetFromString(linear.skipoffset, duration);
      }
      getTrackingEvents(localVideoData, linear.trackingEvents);
      paramVAST = inLine.impressions.iterator();
      label254:
      if (paramVAST.hasNext()) {
        break label698;
      }
      if ((linear.videoClicks != null) && (linear.videoClicks.clickThrough != null))
      {
        if (linear.videoClicks.clickTracking != null)
        {
          videoClickTracking = new ArrayList();
          paramVAST = linear.videoClicks.clickTracking.iterator();
          label327:
          if (paramVAST.hasNext()) {
            break label724;
          }
        }
        videoClickThrough = linear.videoClicks.clickThrough;
      }
      localObject1 = inLine.creatives.iterator();
      label365:
      if (((Iterator)localObject1).hasNext()) {
        break label752;
      }
      localObject1 = null;
      paramVAST = (VAST)localObject6;
      label379:
      if (localObject1 != null)
      {
        overlayClickThrough = nonLinearClickThrough;
        overlayClickTracking = nonLinearClickTracking.trim();
        overlayHeight = height;
        overlayWidth = width;
        showHtmlOverlayAfter = 0;
        showHtmlOverlay = true;
        if (staticResource == null) {
          break label875;
        }
        htmlOverlayType = 1;
        if (!staticResource.type.contains("image")) {
          break label819;
        }
        localObject1 = MessageFormat.format("<body style='\"'margin: 0px; padding: 0px; text-align:center;'\"'><img src='\"'{0}'\"' width='\"'{1}'dp\"' height='\"'{2}'dp\"'/></body>", new Object[] { staticResource.url.trim(), Integer.valueOf(width), Integer.valueOf(height) });
        htmlOverlayMarkup = ("<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>" + (String)localObject1);
      }
    }
    for (;;)
    {
      getTrackingEvents(localVideoData, trackingEvents);
      return localVideoData;
      localObject3 = (VAST.Ad)localIterator.next();
      if (inLine == null) {
        break label35;
      }
      localObject5 = inLine.creatives.iterator();
      label571:
      if (!((Iterator)localObject5).hasNext())
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = paramVAST;
        paramVAST = (VAST)localObject3;
      }
      for (;;)
      {
        localObject5 = paramVAST;
        localObject4 = localObject2;
        localObject3 = localObject1;
        if (localObject1 != null) {
          break;
        }
        localObject3 = localObject2;
        localObject4 = localObject1;
        localObject2 = paramVAST;
        localObject1 = localObject3;
        paramVAST = (VAST)localObject4;
        break label35;
        localObject4 = (VAST.Ad.Creative)((Iterator)localObject5).next();
        if ((linear == null) || (linear.mediaFiles == null) || (linear.mediaFiles.isEmpty())) {
          break label571;
        }
        paramVAST = (VAST.Ad.Creative.Linear.MediaFile)linear.mediaFiles.get(0);
        localObject1 = localObject4;
        localObject2 = localObject3;
      }
      delivery = 0;
      break label100;
      label698:
      localObject1 = (VAST.Ad.Impression)paramVAST.next();
      impressionEvents.add(url);
      break label254;
      label724:
      localObject1 = (VAST.Ad.Creative.Linear.ClickTracking)paramVAST.next();
      videoClickTracking.add(url);
      break label327;
      label752:
      paramVAST = (VAST.Ad.Creative)((Iterator)localObject1).next();
      if ((nonLinearAds == null) || (nonLinearAds.nonLinears == null) || (nonLinearAds.nonLinears.isEmpty())) {
        break label365;
      }
      localObject1 = (VAST.Ad.Creative.NonLinearAds.NonLinear)nonLinearAds.nonLinears.get(0);
      paramVAST = nonLinearAds;
      break label379;
      label819:
      if (staticResource.type.contains("x-javascript"))
      {
        htmlOverlayMarkup = ("<script src=\"" + staticResource.url.trim() + "\"></script>");
        continue;
        label875:
        if (iframeResource != null)
        {
          htmlOverlayType = 0;
          htmlOverlayUrl = iframeResource;
        }
        else if (htmlResource != null)
        {
          htmlOverlayType = 1;
          htmlOverlayMarkup = htmlResource;
        }
      }
    }
  }
  
  public static int getDurationFromString(String paramString)
  {
    Matcher localMatcher = DURATION_PATTERN.matcher(paramString);
    if ((localMatcher.find()) && (localMatcher.groupCount() == 4)) {
      try
      {
        int i = Integer.parseInt(localMatcher.group(1));
        int j = Integer.parseInt(localMatcher.group(2));
        int k = Integer.parseInt(localMatcher.group(3));
        return k + j * 60 + i * 3600;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Log.e("Failed to parse duration: " + paramString);
        return 0;
      }
    }
    Log.e("Failed to parse duration: " + paramString);
    return 0;
  }
  
  private static int getSkipoffsetFromString(String paramString, int paramInt)
  {
    int j = 0;
    int i = j;
    Matcher localMatcher1;
    Matcher localMatcher2;
    if (paramString != null)
    {
      localMatcher1 = DURATION_PATTERN.matcher(paramString);
      localMatcher2 = PERCENT_PATTERN.matcher(paramString);
      if ((!localMatcher1.find()) || (localMatcher1.groupCount() != 4)) {
        break label113;
      }
    }
    label113:
    do
    {
      do
      {
        try
        {
          paramInt = Integer.parseInt(localMatcher1.group(1));
          i = Integer.parseInt(localMatcher1.group(2));
          j = Integer.parseInt(localMatcher1.group(3));
          i = j + i * 60 + paramInt * 3600;
          return i;
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          Log.e("Failed to parse skipoffset: " + paramString);
          return 0;
        }
        i = j;
      } while (!localMatcher2.find());
      i = j;
    } while (localMatcher2.groupCount() != 1);
    try
    {
      long l = Integer.parseInt(localMatcher2.group(1)) * paramInt / 100L;
      return (int)l;
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      Log.e("Failed to parse skipoffset: " + paramString);
    }
    return 0;
  }
  
  public static void getTrackingEvents(VideoData paramVideoData, List<VAST.Ad.Creative.Tracking> paramList)
  {
    Iterator localIterator = paramList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      VAST.Ad.Creative.Tracking localTracking = (VAST.Ad.Creative.Tracking)localIterator.next();
      paramList = event;
      if ((paramList.equals("start")) || (paramList.equals("creativeView")))
      {
        startEvents.add(url);
      }
      else if (paramList.equals("complete"))
      {
        completeEvents.add(url);
      }
      else if (paramList.equals("mute"))
      {
        muteEvents.add(url);
      }
      else if (paramList.equals("unmute"))
      {
        unmuteEvents.add(url);
      }
      else if (paramList.equals("pause"))
      {
        pauseEvents.add(url);
      }
      else if (paramList.equals("resume"))
      {
        resumeEvents.add(url);
      }
      else if ((paramList.equals("skip")) || (paramList.equals("close")))
      {
        skipEvents.add(url);
      }
      else
      {
        int i;
        Vector localVector;
        if (paramList.equals("firstQuartile"))
        {
          i = duration / 4;
          localVector = (Vector)timeTrackingEvents.get(Integer.valueOf(i));
          paramList = localVector;
          if (localVector == null)
          {
            paramList = new Vector();
            timeTrackingEvents.put(Integer.valueOf(i), paramList);
          }
          paramList.add(url);
        }
        else if (paramList.equals("midpoint"))
        {
          i = duration / 2;
          localVector = (Vector)timeTrackingEvents.get(Integer.valueOf(i));
          paramList = localVector;
          if (localVector == null)
          {
            paramList = new Vector();
            timeTrackingEvents.put(Integer.valueOf(i), paramList);
          }
          paramList.add(url);
        }
        else if (paramList.equals("thirdQuartile"))
        {
          i = duration * 3 / 4;
          localVector = (Vector)timeTrackingEvents.get(Integer.valueOf(i));
          paramList = localVector;
          if (localVector == null)
          {
            paramList = new Vector();
            timeTrackingEvents.put(Integer.valueOf(i), paramList);
          }
          paramList.add(url);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.VASTParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */