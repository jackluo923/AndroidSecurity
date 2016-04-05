package org.codehaus.jackson.util;

import java.io.IOException;
import java.util.Arrays;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.PrettyPrinter;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter
  implements PrettyPrinter
{
  protected Indenter _arrayIndenter = new FixedSpaceIndenter();
  protected int _nesting = 0;
  protected Indenter _objectIndenter = new Lf2SpacesIndenter();
  protected boolean _spacesInObjectEntries = true;
  
  public void beforeArrayValues(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    _arrayIndenter.writeIndentation(paramJsonGenerator, _nesting);
  }
  
  public void beforeObjectEntries(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    _objectIndenter.writeIndentation(paramJsonGenerator, _nesting);
  }
  
  public void indentArraysWith(Indenter paramIndenter)
  {
    Object localObject = paramIndenter;
    if (paramIndenter == null) {
      localObject = new NopIndenter();
    }
    _arrayIndenter = ((Indenter)localObject);
  }
  
  public void indentObjectsWith(Indenter paramIndenter)
  {
    Object localObject = paramIndenter;
    if (paramIndenter == null) {
      localObject = new NopIndenter();
    }
    _objectIndenter = ((Indenter)localObject);
  }
  
  public void spacesInObjectEntries(boolean paramBoolean)
  {
    _spacesInObjectEntries = paramBoolean;
  }
  
  public void writeArrayValueSeparator(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw(',');
    _arrayIndenter.writeIndentation(paramJsonGenerator, _nesting);
  }
  
  public void writeEndArray(JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException, JsonGenerationException
  {
    if (!_arrayIndenter.isInline()) {
      _nesting -= 1;
    }
    if (paramInt > 0) {
      _arrayIndenter.writeIndentation(paramJsonGenerator, _nesting);
    }
    for (;;)
    {
      paramJsonGenerator.writeRaw(']');
      return;
      paramJsonGenerator.writeRaw(' ');
    }
  }
  
  public void writeEndObject(JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException, JsonGenerationException
  {
    if (!_objectIndenter.isInline()) {
      _nesting -= 1;
    }
    if (paramInt > 0) {
      _objectIndenter.writeIndentation(paramJsonGenerator, _nesting);
    }
    for (;;)
    {
      paramJsonGenerator.writeRaw('}');
      return;
      paramJsonGenerator.writeRaw(' ');
    }
  }
  
  public void writeObjectEntrySeparator(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw(',');
    _objectIndenter.writeIndentation(paramJsonGenerator, _nesting);
  }
  
  public void writeObjectFieldValueSeparator(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    if (_spacesInObjectEntries)
    {
      paramJsonGenerator.writeRaw(" : ");
      return;
    }
    paramJsonGenerator.writeRaw(':');
  }
  
  public void writeRootValueSeparator(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw(' ');
  }
  
  public void writeStartArray(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    if (!_arrayIndenter.isInline()) {
      _nesting += 1;
    }
    paramJsonGenerator.writeRaw('[');
  }
  
  public void writeStartObject(JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeRaw('{');
    if (!_objectIndenter.isInline()) {
      _nesting += 1;
    }
  }
  
  public static class FixedSpaceIndenter
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
  
  public static class Lf2SpacesIndenter
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
  
  public static class NopIndenter
    implements Indenter
  {
    public boolean isInline()
    {
      return true;
    }
    
    public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */