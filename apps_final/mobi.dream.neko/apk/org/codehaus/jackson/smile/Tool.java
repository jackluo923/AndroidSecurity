package org.codehaus.jackson.smile;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser;

public class Tool
{
  public static final String SUFFIX = ".lzf";
  public final JsonFactory jsonFactory = new JsonFactory();
  public final SmileFactory smileFactory = new SmileFactory();
  
  public Tool()
  {
    smileFactory.configure(SmileGenerator.Feature.CHECK_SHARED_NAMES, true);
    smileFactory.configure(SmileGenerator.Feature.CHECK_SHARED_STRING_VALUES, true);
    smileFactory.configure(SmileGenerator.Feature.ENCODE_BINARY_AS_7BIT, true);
    smileFactory.configure(SmileGenerator.Feature.WRITE_HEADER, true);
    smileFactory.configure(SmileGenerator.Feature.WRITE_END_MARKER, false);
    smileFactory.configure(SmileParser.Feature.REQUIRE_HEADER, false);
  }
  
  private void decode(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream = smileFactory.createJsonParser(paramInputStream);
    JsonGenerator localJsonGenerator = jsonFactory.createJsonGenerator(System.out, JsonEncoding.UTF8);
    for (;;)
    {
      if ((paramInputStream.nextToken() == null) && (paramInputStream.nextToken() == null))
      {
        paramInputStream.close();
        localJsonGenerator.close();
        return;
      }
      localJsonGenerator.copyCurrentEvent(paramInputStream);
    }
  }
  
  private void encode(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream = jsonFactory.createJsonParser(paramInputStream);
    SmileGenerator localSmileGenerator = smileFactory.createJsonGenerator(System.out, JsonEncoding.UTF8);
    while (paramInputStream.nextToken() != null) {
      localSmileGenerator.copyCurrentEvent(paramInputStream);
    }
    paramInputStream.close();
    localSmileGenerator.close();
  }
  
  private InputStream inputStream(String paramString)
    throws IOException
  {
    if (paramString == null) {
      return System.in;
    }
    File localFile = new File(paramString);
    if (!localFile.exists())
    {
      System.err.println("File '" + paramString + "' does not exist.");
      System.exit(1);
    }
    return new FileInputStream(localFile);
  }
  
  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    new Tool().process(paramArrayOfString);
  }
  
  private void process(String[] paramArrayOfString)
    throws IOException
  {
    String str2 = null;
    String str1 = null;
    if (paramArrayOfString.length == 2)
    {
      str1 = paramArrayOfString[0];
      str2 = paramArrayOfString[1];
      paramArrayOfString = str1;
      str1 = str2;
    }
    while ("-e".equals(paramArrayOfString))
    {
      encode(inputStream(str1));
      return;
      if (paramArrayOfString.length == 1)
      {
        paramArrayOfString = paramArrayOfString[0];
      }
      else
      {
        showUsage();
        paramArrayOfString = str2;
      }
    }
    if ("-d".equals(paramArrayOfString))
    {
      decode(inputStream(str1));
      return;
    }
    if ("-v".equals(paramArrayOfString))
    {
      verify(inputStream(str1), inputStream(str1));
      return;
    }
    showUsage();
  }
  
  private void verify(InputStream paramInputStream1, InputStream paramInputStream2)
    throws IOException
  {
    paramInputStream1 = jsonFactory.createJsonParser(paramInputStream1);
    Object localObject1 = new ByteArrayOutputStream(4000);
    Object localObject2 = smileFactory.createJsonGenerator((OutputStream)localObject1, JsonEncoding.UTF8);
    while (paramInputStream1.nextToken() != null) {
      ((JsonGenerator)localObject2).copyCurrentEvent(paramInputStream1);
    }
    paramInputStream1.close();
    ((JsonGenerator)localObject2).close();
    paramInputStream1 = jsonFactory.createJsonParser(paramInputStream2);
    paramInputStream2 = ((ByteArrayOutputStream)localObject1).toByteArray();
    localObject1 = smileFactory.createJsonParser(paramInputStream2);
    int i = 0;
    Object localObject3;
    int j;
    do
    {
      localObject2 = paramInputStream1.nextToken();
      if (localObject2 == null) {
        break;
      }
      localObject3 = ((JsonParser)localObject1).nextToken();
      j = i + 1;
      if (localObject2 != localObject3) {
        throw new IOException("Input and encoded differ, token #" + j + "; expected " + localObject2 + ", got " + localObject3);
      }
      localObject2 = paramInputStream1.getText();
      localObject3 = ((JsonParser)localObject1).getText();
      i = j;
    } while (((String)localObject2).equals(localObject3));
    throw new IOException("Input and encoded differ, token #" + j + "; expected text '" + (String)localObject2 + "', got '" + (String)localObject3 + "'");
    System.out.println("OK: verified " + i + " tokens (from " + paramInputStream2.length + " bytes of Smile encoded data), input and encoded contents are identical");
  }
  
  protected void showUsage()
  {
    System.err.println("Usage: java " + getClass().getName() + " -e/-d [file]");
    System.err.println(" (if no file given, reads from stdin -- always writes to stdout)");
    System.err.println(" -d: decode Smile encoded input as JSON");
    System.err.println(" -e: encode JSON (text) input as Smile");
    System.err.println(" -v: encode JSON (text) input as Smile; read back, verify, do not write out");
    System.exit(1);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.Tool
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */