package org.codehaus.jackson.util;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter$FixedSpaceIndenter
  implements Indenter
{
  public boolean isInline()
  {
    return true;
  }
  
  public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw(' ');
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter.FixedSpaceIndenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */