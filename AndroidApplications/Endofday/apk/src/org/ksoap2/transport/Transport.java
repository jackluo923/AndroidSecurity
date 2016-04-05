package org.ksoap2.transport;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.ksoap2.SoapEnvelope;
import org.kxml2.io.KXmlParser;
import org.kxml2.io.KXmlSerializer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public abstract class Transport
{
  public boolean debug;
  public String requestDump;
  public String responseDump;
  protected String url;
  private String xmlVersionTag;
  
  public Transport()
  {
    String str = "";
    xmlVersionTag = str;
  }
  
  public Transport(String paramString)
  {
    String str = "";
    xmlVersionTag = str;
    url = paramString;
  }
  
  public abstract void call(String paramString, SoapEnvelope paramSoapEnvelope)
    throws IOException, XmlPullParserException;
  
  protected byte[] createRequestData(SoapEnvelope paramSoapEnvelope)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
    localByteArrayOutputStream.<init>();
    Object localObject = xmlVersionTag;
    localObject = ((String)localObject).getBytes();
    localByteArrayOutputStream.write((byte[])localObject);
    KXmlSerializer localKXmlSerializer = new org/kxml2/io/KXmlSerializer;
    localKXmlSerializer.<init>();
    localObject = null;
    localKXmlSerializer.setOutput(localByteArrayOutputStream, (String)localObject);
    paramSoapEnvelope.write(localKXmlSerializer);
    localKXmlSerializer.flush();
    int i = 13;
    localByteArrayOutputStream.write(i);
    i = 10;
    localByteArrayOutputStream.write(i);
    localByteArrayOutputStream.flush();
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    return arrayOfByte;
  }
  
  protected void parseResponse(SoapEnvelope paramSoapEnvelope, InputStream paramInputStream)
    throws XmlPullParserException, IOException
  {
    KXmlParser localKXmlParser = new org/kxml2/io/KXmlParser;
    localKXmlParser.<init>();
    String str = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    boolean bool = true;
    localKXmlParser.setFeature(str, bool);
    str = null;
    localKXmlParser.setInput(paramInputStream, str);
    paramSoapEnvelope.parse(localKXmlParser);
  }
  
  public void reset() {}
  
  public void setUrl(String paramString)
  {
    url = paramString;
  }
  
  public void setXmlVersionTag(String paramString)
  {
    xmlVersionTag = paramString;
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.transport.Transport
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */