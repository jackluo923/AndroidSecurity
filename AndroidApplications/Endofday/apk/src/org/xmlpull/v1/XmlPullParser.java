package org.xmlpull.v1;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

public abstract interface XmlPullParser
{
  public static final int CDSECT = 5;
  public static final int COMMENT = 9;
  public static final int DOCDECL = 10;
  public static final int END_DOCUMENT = 1;
  public static final int END_TAG = 3;
  public static final int ENTITY_REF = 6;
  public static final String FEATURE_PROCESS_DOCDECL = "http://xmlpull.org/v1/doc/features.html#process-docdecl";
  public static final String FEATURE_PROCESS_NAMESPACES = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
  public static final String FEATURE_REPORT_NAMESPACE_ATTRIBUTES = "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes";
  public static final String FEATURE_VALIDATION = "http://xmlpull.org/v1/doc/features.html#validation";
  public static final int IGNORABLE_WHITESPACE = 7;
  public static final String NO_NAMESPACE = "";
  public static final int PROCESSING_INSTRUCTION = 8;
  public static final int START_DOCUMENT = 0;
  public static final int START_TAG = 2;
  public static final int TEXT = 4;
  public static final String[] TYPES;
  
  static
  {
    int i = 11;
    String[] arrayOfString = new String[i];
    int j = 0;
    String str = "START_DOCUMENT";
    arrayOfString[j] = str;
    j = 1;
    str = "END_DOCUMENT";
    arrayOfString[j] = str;
    j = 2;
    str = "START_TAG";
    arrayOfString[j] = str;
    j = 3;
    str = "END_TAG";
    arrayOfString[j] = str;
    j = 4;
    str = "TEXT";
    arrayOfString[j] = str;
    j = 5;
    str = "CDSECT";
    arrayOfString[j] = str;
    j = 6;
    str = "ENTITY_REF";
    arrayOfString[j] = str;
    j = 7;
    str = "IGNORABLE_WHITESPACE";
    arrayOfString[j] = str;
    j = 8;
    str = "PROCESSING_INSTRUCTION";
    arrayOfString[j] = str;
    j = 9;
    str = "COMMENT";
    arrayOfString[j] = str;
    j = 10;
    str = "DOCDECL";
    arrayOfString[j] = str;
    TYPES = arrayOfString;
  }
  
  public abstract void defineEntityReplacementText(String paramString1, String paramString2)
    throws XmlPullParserException;
  
  public abstract int getAttributeCount();
  
  public abstract String getAttributeName(int paramInt);
  
  public abstract String getAttributeNamespace(int paramInt);
  
  public abstract String getAttributePrefix(int paramInt);
  
  public abstract String getAttributeType(int paramInt);
  
  public abstract String getAttributeValue(int paramInt);
  
  public abstract String getAttributeValue(String paramString1, String paramString2);
  
  public abstract int getColumnNumber();
  
  public abstract int getDepth();
  
  public abstract int getEventType()
    throws XmlPullParserException;
  
  public abstract boolean getFeature(String paramString);
  
  public abstract String getInputEncoding();
  
  public abstract int getLineNumber();
  
  public abstract String getName();
  
  public abstract String getNamespace();
  
  public abstract String getNamespace(String paramString);
  
  public abstract int getNamespaceCount(int paramInt)
    throws XmlPullParserException;
  
  public abstract String getNamespacePrefix(int paramInt)
    throws XmlPullParserException;
  
  public abstract String getNamespaceUri(int paramInt)
    throws XmlPullParserException;
  
  public abstract String getPositionDescription();
  
  public abstract String getPrefix();
  
  public abstract Object getProperty(String paramString);
  
  public abstract String getText();
  
  public abstract char[] getTextCharacters(int[] paramArrayOfInt);
  
  public abstract boolean isAttributeDefault(int paramInt);
  
  public abstract boolean isEmptyElementTag()
    throws XmlPullParserException;
  
  public abstract boolean isWhitespace()
    throws XmlPullParserException;
  
  public abstract int next()
    throws XmlPullParserException, IOException;
  
  public abstract int nextTag()
    throws XmlPullParserException, IOException;
  
  public abstract String nextText()
    throws XmlPullParserException, IOException;
  
  public abstract int nextToken()
    throws XmlPullParserException, IOException;
  
  public abstract void require(int paramInt, String paramString1, String paramString2)
    throws XmlPullParserException, IOException;
  
  public abstract void setFeature(String paramString, boolean paramBoolean)
    throws XmlPullParserException;
  
  public abstract void setInput(InputStream paramInputStream, String paramString)
    throws XmlPullParserException;
  
  public abstract void setInput(Reader paramReader)
    throws XmlPullParserException;
  
  public abstract void setProperty(String paramString, Object paramObject)
    throws XmlPullParserException;
}

/* Location:
 * Qualified Name:     org.xmlpull.v1.XmlPullParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */