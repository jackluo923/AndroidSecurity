package org.codehaus.jackson.util;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter$NopIndenter
  implements Indenter
{
  public boolean isInline()
  {
    return true;
  }
  
  public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt) {}
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter.NopIndenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */