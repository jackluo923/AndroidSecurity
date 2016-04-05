package org.kobjects.xmlrpc;

import java.io.FileReader;
import org.kobjects.xml.XmlReader;

public class Driver
{
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    XmlReader localXmlReader = new org/kobjects/xml/XmlReader;
    FileReader localFileReader = new java/io/FileReader;
    int i = 0;
    String str = paramArrayOfString[i];
    localFileReader.<init>(str);
    localXmlReader.<init>(localFileReader);
    XmlRpcParser localXmlRpcParser = new org/kobjects/xmlrpc/XmlRpcParser;
    localXmlRpcParser.<init>(localXmlReader);
    localXmlRpcParser.parseResponse();
  }
}

/* Location:
 * Qualified Name:     org.kobjects.xmlrpc.Driver
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */