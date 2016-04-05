package org.codehaus.jackson.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;

public abstract interface Indenter
{
  public abstract boolean isInline();
  
  public abstract void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException, JsonGenerationException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.Indenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */