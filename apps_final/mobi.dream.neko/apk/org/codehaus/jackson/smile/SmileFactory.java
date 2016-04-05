package org.codehaus.jackson.smile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URL;
import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.format.InputAccessor;
import org.codehaus.jackson.format.MatchStrength;
import org.codehaus.jackson.io.IOContext;

public class SmileFactory
  extends JsonFactory
{
  static final int DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS = SmileGenerator.Feature.collectDefaults();
  static final int DEFAULT_SMILE_PARSER_FEATURE_FLAGS = ;
  public static final String FORMAT_NAME_SMILE = "Smile";
  protected boolean _cfgDelegateToTextual;
  protected int _smileGeneratorFeatures = DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS;
  protected int _smileParserFeatures = DEFAULT_SMILE_PARSER_FEATURE_FLAGS;
  
  public SmileFactory()
  {
    this(null);
  }
  
  public SmileFactory(ObjectCodec paramObjectCodec)
  {
    super(paramObjectCodec);
  }
  
  protected JsonGenerator _createJsonGenerator(Writer paramWriter, IOContext paramIOContext)
    throws IOException
  {
    if (_cfgDelegateToTextual) {
      return super._createJsonGenerator(paramWriter, paramIOContext);
    }
    throw new UnsupportedOperationException("Can not create generator for non-byte-based target");
  }
  
  protected SmileGenerator _createJsonGenerator(OutputStream paramOutputStream, IOContext paramIOContext)
    throws IOException
  {
    int i = _smileGeneratorFeatures;
    paramOutputStream = new SmileGenerator(paramIOContext, _generatorFeatures, i, _objectCodec, paramOutputStream);
    if ((SmileGenerator.Feature.WRITE_HEADER.getMask() & i) != 0) {
      paramOutputStream.writeHeader();
    }
    do
    {
      return paramOutputStream;
      if ((SmileGenerator.Feature.CHECK_SHARED_STRING_VALUES.getMask() & i) != 0) {
        throw new JsonGenerationException("Inconsistent settings: WRITE_HEADER disabled, but CHECK_SHARED_STRING_VALUES enabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or disable CHECK_SHARED_STRING_VALUES to resolve)");
      }
    } while ((SmileGenerator.Feature.ENCODE_BINARY_AS_7BIT.getMask() & i) != 0);
    throw new JsonGenerationException("Inconsistent settings: WRITE_HEADER disabled, but ENCODE_BINARY_AS_7BIT disabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or ENCODE_BINARY_AS_7BIT to resolve)");
  }
  
  protected JsonParser _createJsonParser(Reader paramReader, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    if (_cfgDelegateToTextual) {
      return super._createJsonParser(paramReader, paramIOContext);
    }
    throw new UnsupportedOperationException("Can not create generator for non-byte-based target");
  }
  
  protected SmileParser _createJsonParser(InputStream paramInputStream, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return new SmileParserBootstrapper(paramIOContext, paramInputStream).constructParser(_parserFeatures, _smileParserFeatures, _objectCodec, _rootByteSymbols);
  }
  
  protected SmileParser _createJsonParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2, IOContext paramIOContext)
    throws IOException, JsonParseException
  {
    return new SmileParserBootstrapper(paramIOContext, paramArrayOfByte, paramInt1, paramInt2).constructParser(_parserFeatures, _smileParserFeatures, _objectCodec, _rootByteSymbols);
  }
  
  protected Writer _createWriter(OutputStream paramOutputStream, JsonEncoding paramJsonEncoding, IOContext paramIOContext)
    throws IOException
  {
    if (_cfgDelegateToTextual) {
      return super._createWriter(paramOutputStream, paramJsonEncoding, paramIOContext);
    }
    throw new UnsupportedOperationException("Can not create generator for non-byte-based target");
  }
  
  public final SmileFactory configure(SmileGenerator.Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      enable(paramFeature);
      return this;
    }
    disable(paramFeature);
    return this;
  }
  
  public final SmileFactory configure(SmileParser.Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      enable(paramFeature);
      return this;
    }
    disable(paramFeature);
    return this;
  }
  
  public SmileGenerator createJsonGenerator(OutputStream paramOutputStream)
    throws IOException
  {
    return _createJsonGenerator(paramOutputStream, _createContext(paramOutputStream, false));
  }
  
  public SmileGenerator createJsonGenerator(OutputStream paramOutputStream, JsonEncoding paramJsonEncoding)
    throws IOException
  {
    return createJsonGenerator(paramOutputStream);
  }
  
  public SmileParser createJsonParser(File paramFile)
    throws IOException, JsonParseException
  {
    return _createJsonParser(new FileInputStream(paramFile), _createContext(paramFile, true));
  }
  
  public SmileParser createJsonParser(InputStream paramInputStream)
    throws IOException, JsonParseException
  {
    return _createJsonParser(paramInputStream, _createContext(paramInputStream, false));
  }
  
  public SmileParser createJsonParser(URL paramURL)
    throws IOException, JsonParseException
  {
    return _createJsonParser(_optimizedStreamFromURL(paramURL), _createContext(paramURL, true));
  }
  
  public SmileParser createJsonParser(byte[] paramArrayOfByte)
    throws IOException, JsonParseException
  {
    IOContext localIOContext = _createContext(paramArrayOfByte, true);
    return _createJsonParser(paramArrayOfByte, 0, paramArrayOfByte.length, localIOContext);
  }
  
  public SmileParser createJsonParser(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonParseException
  {
    return _createJsonParser(paramArrayOfByte, paramInt1, paramInt2, _createContext(paramArrayOfByte, true));
  }
  
  public void delegateToTextual(boolean paramBoolean)
  {
    _cfgDelegateToTextual = paramBoolean;
  }
  
  public SmileFactory disable(SmileGenerator.Feature paramFeature)
  {
    _smileGeneratorFeatures &= (paramFeature.getMask() ^ 0xFFFFFFFF);
    return this;
  }
  
  public SmileFactory disable(SmileParser.Feature paramFeature)
  {
    _smileParserFeatures &= (paramFeature.getMask() ^ 0xFFFFFFFF);
    return this;
  }
  
  public SmileFactory enable(SmileGenerator.Feature paramFeature)
  {
    _smileGeneratorFeatures |= paramFeature.getMask();
    return this;
  }
  
  public SmileFactory enable(SmileParser.Feature paramFeature)
  {
    _smileParserFeatures |= paramFeature.getMask();
    return this;
  }
  
  public String getFormatName()
  {
    return "Smile";
  }
  
  public MatchStrength hasFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    return SmileParserBootstrapper.hasSmileFormat(paramInputAccessor);
  }
  
  public final boolean isEnabled(SmileGenerator.Feature paramFeature)
  {
    return (_smileGeneratorFeatures & paramFeature.getMask()) != 0;
  }
  
  public final boolean isEnabled(SmileParser.Feature paramFeature)
  {
    return (_smileParserFeatures & paramFeature.getMask()) != 0;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */