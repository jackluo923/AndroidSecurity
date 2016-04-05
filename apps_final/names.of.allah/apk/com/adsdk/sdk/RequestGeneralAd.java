package com.adsdk.sdk;

import com.adsdk.sdk.customevents.CustomEvent;
import com.adsdk.sdk.data.ClickType;
import com.adsdk.sdk.video.VASTParser;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class RequestGeneralAd
  extends RequestAd<AdResponse>
{
  private static final int RELOAD_AFTER_NO_AD = 20;
  
  public RequestGeneralAd() {}
  
  public RequestGeneralAd(InputStream paramInputStream)
  {
    is = paramInputStream;
    paramInputStream = new StringBuilder("Parse is null");
    if (is == null) {}
    for (boolean bool = true;; bool = false)
    {
      Log.d(bool);
      return;
    }
  }
  
  private String convertStreamToString(InputStream paramInputStream)
  {
    try
    {
      paramInputStream = new Scanner(paramInputStream).useDelimiter("\\A").next();
      return paramInputStream;
    }
    catch (NoSuchElementException paramInputStream) {}
    return "";
  }
  
  private String getAttribute(Document paramDocument, String paramString1, String paramString2)
  {
    paramDocument = (Element)paramDocument.getElementsByTagName(paramString1).item(0);
    if (paramDocument != null)
    {
      paramDocument = paramDocument.getAttribute(paramString2);
      if (paramDocument.length() != 0) {
        return paramDocument;
      }
    }
    return null;
  }
  
  private List<CustomEvent> getCustomEvents(Document paramDocument)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    paramDocument = (Element)paramDocument.getElementsByTagName("customevents").item(0);
    if (paramDocument != null) {
      paramDocument = paramDocument.getElementsByTagName("customevent");
    }
    for (;;)
    {
      if (i >= paramDocument.getLength()) {
        return localArrayList;
      }
      Element localElement = (Element)paramDocument.item(i);
      localArrayList.add(new CustomEvent(getTextValue(localElement, "class"), getTextValue(localElement, "parameter"), getTextValue(localElement, "pixel")));
      i += 1;
    }
  }
  
  private int getInteger(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return 0;
  }
  
  private String getTextValue(Element paramElement, String paramString)
  {
    paramElement = paramElement.getElementsByTagName(paramString);
    if ((paramElement.getLength() > 0) && (paramElement.item(0).getFirstChild() != null)) {
      return paramElement.item(0).getFirstChild().getNodeValue();
    }
    return "";
  }
  
  private String getValue(Document paramDocument, String paramString)
  {
    paramDocument = (Element)paramDocument.getElementsByTagName(paramString).item(0);
    if (paramDocument != null)
    {
      paramDocument = paramDocument.getChildNodes();
      if (paramDocument.getLength() > 0) {
        return paramDocument.item(0).getNodeValue();
      }
    }
    return null;
  }
  
  private boolean getValueAsBoolean(Document paramDocument, String paramString)
  {
    return "yes".equalsIgnoreCase(getValue(paramDocument, paramString));
  }
  
  private int getValueAsInt(Document paramDocument, String paramString)
  {
    return getInteger(getValue(paramDocument, paramString));
  }
  
  AdResponse parse(InputStream paramInputStream, boolean paramBoolean)
  {
    Object localObject1 = DocumentBuilderFactory.newInstance();
    AdResponse localAdResponse = new AdResponse();
    if (paramBoolean) {}
    Object localObject2;
    for (;;)
    {
      try
      {
        localAdResponse.setCustomEvents(new ArrayList());
        paramInputStream = VASTParser.fillVideoDataFromVast(VASTParser.createVastFromStream(paramInputStream));
        if (paramInputStream == null)
        {
          localAdResponse.setType(2);
          if (localAdResponse.getRefresh() > 0) {
            break label791;
          }
          localAdResponse.setRefresh(20);
          return localAdResponse;
        }
        localAdResponse.setVideoData(paramInputStream);
        localAdResponse.setType(3);
        return localAdResponse;
      }
      catch (ParserConfigurationException paramInputStream)
      {
        throw new RequestException("Cannot parse Response", paramInputStream);
        localObject2 = ((DocumentBuilderFactory)localObject1).newDocumentBuilder();
        localObject1 = new InputSource(paramInputStream);
        if (Log.LOGGING_ENABLED)
        {
          paramInputStream = convertStreamToString(paramInputStream);
          Log.d("Ad RequestPerform HTTP Response: " + paramInputStream);
          localObject1 = new InputSource(new ByteArrayInputStream(paramInputStream.getBytes("ISO-8859-1")));
        }
        ((InputSource)localObject1).setEncoding("ISO-8859-1");
        paramInputStream = ((DocumentBuilder)localObject2).parse((InputSource)localObject1);
        localObject1 = paramInputStream.getDocumentElement();
        if (localObject1 == null) {
          throw new RequestException("Document is not an xml");
        }
      }
      catch (SAXException paramInputStream)
      {
        throw new RequestException("Cannot parse Response", paramInputStream);
        localObject2 = getValue(paramInputStream, "error");
        if (localObject2 != null) {
          throw new RequestException("Error Response received: " + (String)localObject2);
        }
      }
      catch (IOException paramInputStream)
      {
        throw new RequestException("Cannot read Response", paramInputStream);
        localObject2 = ((Element)localObject1).getAttribute("type");
        ((Element)localObject1).normalize();
        if ("imageAd".equalsIgnoreCase((String)localObject2))
        {
          localAdResponse.setType(0);
          localAdResponse.setBannerWidth(getValueAsInt(paramInputStream, "bannerwidth"));
          localAdResponse.setBannerHeight(getValueAsInt(paramInputStream, "bannerheight"));
          localAdResponse.setClickType(ClickType.getValue(getValue(paramInputStream, "clicktype")));
          localAdResponse.setClickUrl(getValue(paramInputStream, "clickurl"));
          localAdResponse.setImageUrl(getValue(paramInputStream, "imageurl"));
          localAdResponse.setRefresh(getValueAsInt(paramInputStream, "refresh"));
          localAdResponse.setScale(getValueAsBoolean(paramInputStream, "scale"));
          localAdResponse.setSkipPreflight(getValueAsBoolean(paramInputStream, "skippreflight"));
          localAdResponse.setCustomEvents(getCustomEvents(paramInputStream));
          return localAdResponse;
        }
      }
      catch (Throwable paramInputStream)
      {
        throw new RequestException("Cannot read Response", paramInputStream);
      }
      if ("textAd".equalsIgnoreCase((String)localObject2))
      {
        localAdResponse.setType(1);
        localAdResponse.setText(getValue(paramInputStream, "htmlString"));
        localObject1 = getAttribute(paramInputStream, "htmlString", "skipoverlaybutton");
        Log.i("PARSER", "SkipOverlay: " + (String)localObject1);
        if (localObject1 != null) {
          localAdResponse.setSkipOverlay(Integer.parseInt((String)localObject1));
        }
        localAdResponse.setClickType(ClickType.getValue(getValue(paramInputStream, "clicktype")));
        localAdResponse.setClickUrl(getValue(paramInputStream, "clickurl"));
        localAdResponse.setRefresh(getValueAsInt(paramInputStream, "refresh"));
        localAdResponse.setScale(getValueAsBoolean(paramInputStream, "scale"));
        localAdResponse.setSkipPreflight(getValueAsBoolean(paramInputStream, "skippreflight"));
      }
      else if ("mraidAd".equalsIgnoreCase((String)localObject2))
      {
        localAdResponse.setType(4);
        localAdResponse.setText(getValue(paramInputStream, "htmlString"));
        localObject1 = getAttribute(paramInputStream, "htmlString", "skipoverlaybutton");
        Log.i("PARSER", "SkipOverlay: " + (String)localObject1);
        if (localObject1 != null) {
          localAdResponse.setSkipOverlay(Integer.parseInt((String)localObject1));
        }
        localAdResponse.setClickType(ClickType.getValue(getValue(paramInputStream, "clicktype")));
        localAdResponse.setClickUrl(getValue(paramInputStream, "clickurl"));
        localAdResponse.setUrlType(getValue(paramInputStream, "urltype"));
        localAdResponse.setRefresh(0);
        localAdResponse.setScale(getValueAsBoolean(paramInputStream, "scale"));
        localAdResponse.setSkipPreflight(getValueAsBoolean(paramInputStream, "skippreflight"));
      }
      else
      {
        if (!"noAd".equalsIgnoreCase((String)localObject2)) {
          break;
        }
        localAdResponse.setType(2);
        if (localAdResponse.getRefresh() <= 0) {
          localAdResponse.setRefresh(20);
        }
      }
    }
    throw new RequestException("Unknown response type " + (String)localObject2);
    label791:
    return localAdResponse;
  }
  
  AdResponse parseTestString()
  {
    return parse(is, false);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.RequestGeneralAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */