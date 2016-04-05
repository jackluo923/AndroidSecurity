package org.codehaus.jackson.util;

import java.io.IOException;
import java.util.Arrays;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter$Lf2SpacesIndenter
  implements Indenter
{
  static final char[] SPACES;
  static final int SPACE_COUNT = 64;
  static final String SYSTEM_LINE_SEPARATOR;
  
  static
  {
    Object localObject1 = null;
    try
    {
      localObject2 = System.getProperty("line.separator");
      localObject1 = localObject2;
    }
    catch (Throwable localThrowable)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "\n";
    }
    SYSTEM_LINE_SEPARATOR = (String)localObject2;
    SPACES = new char[64];
    Arrays.fill(SPACES, ' ');
  }
  
  public boolean isInline()
  {
    return false;
  }
  
  public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw(SYSTEM_LINE_SEPARATOR);
    if (paramInt > 0)
    {
      paramInt += paramInt;
      while (paramInt > 64)
      {
        paramJsonGenerator.writeRaw(SPACES, 0, 64);
        paramInt -= SPACES.length;
      }
      paramJsonGenerator.writeRaw(SPACES, 0, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter.Lf2SpacesIndenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */