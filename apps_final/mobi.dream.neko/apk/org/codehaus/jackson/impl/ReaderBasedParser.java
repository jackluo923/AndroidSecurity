package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.CharsToNameCanonicalizer;
import org.codehaus.jackson.util.ByteArrayBuilder;
import org.codehaus.jackson.util.CharTypes;
import org.codehaus.jackson.util.TextBuffer;

public final class ReaderBasedParser
  extends JsonParserBase
{
  protected char[] _inputBuffer;
  protected ObjectCodec _objectCodec;
  protected Reader _reader;
  protected final CharsToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  
  public ReaderBasedParser(IOContext paramIOContext, int paramInt, Reader paramReader, ObjectCodec paramObjectCodec, CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    super(paramIOContext, paramInt);
    _reader = paramReader;
    _inputBuffer = paramIOContext.allocTokenBuffer();
    _objectCodec = paramObjectCodec;
    _symbols = paramCharsToNameCanonicalizer;
  }
  
  private final JsonToken _nextAfterName()
  {
    _nameCopied = false;
    JsonToken localJsonToken = _nextToken;
    _nextToken = null;
    if (localJsonToken == JsonToken.START_ARRAY) {
      _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
    }
    for (;;)
    {
      _currToken = localJsonToken;
      return localJsonToken;
      if (localJsonToken == JsonToken.START_OBJECT) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
    }
  }
  
  private String _parseFieldName2(int paramInt1, int paramInt2, int paramInt3)
    throws IOException, JsonParseException
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    Object localObject = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(": was expecting closing '" + (char)paramInt3 + "' for name");
      }
      char[] arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      int j = arrayOfChar[k];
      int i = j;
      if (j <= 92)
      {
        if (j != 92) {
          break label174;
        }
        i = _decodeEscaped();
      }
      for (;;)
      {
        paramInt2 = paramInt2 * 31 + j;
        k = paramInt1 + 1;
        localObject[paramInt1] = i;
        if (k < localObject.length) {
          break label262;
        }
        localObject = _textBuffer.finishCurrentSegment();
        paramInt1 = 0;
        break;
        label174:
        i = j;
        if (j <= paramInt3)
        {
          if (j == paramInt3)
          {
            _textBuffer.setCurrentLength(paramInt1);
            localObject = _textBuffer;
            arrayOfChar = ((TextBuffer)localObject).getTextBuffer();
            paramInt1 = ((TextBuffer)localObject).getTextOffset();
            paramInt3 = ((TextBuffer)localObject).size();
            return _symbols.findSymbol(arrayOfChar, paramInt1, paramInt3, paramInt2);
          }
          i = j;
          if (j < 32)
          {
            _throwUnquotedSpace(j, "name");
            i = j;
          }
        }
      }
      label262:
      paramInt1 = k;
    }
  }
  
  private String _parseUnusualFieldName2(int paramInt1, int paramInt2, int[] paramArrayOfInt)
    throws IOException, JsonParseException
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    char[] arrayOfChar = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    int k = paramArrayOfInt.length;
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
      int j;
      for (;;)
      {
        _textBuffer.setCurrentLength(paramInt1);
        paramArrayOfInt = _textBuffer;
        arrayOfChar = paramArrayOfInt.getTextBuffer();
        paramInt1 = paramArrayOfInt.getTextOffset();
        j = paramArrayOfInt.size();
        return _symbols.findSymbol(arrayOfChar, paramInt1, j, paramInt2);
        int i = _inputBuffer[_inputPtr];
        if (i <= k)
        {
          if (paramArrayOfInt[i] != 0) {}
        }
        else {
          while (Character.isJavaIdentifierPart(i))
          {
            _inputPtr += 1;
            paramInt2 = paramInt2 * 31 + i;
            j = paramInt1 + 1;
            arrayOfChar[paramInt1] = i;
            if (j < arrayOfChar.length) {
              break label188;
            }
            arrayOfChar = _textBuffer.finishCurrentSegment();
            paramInt1 = 0;
            break;
          }
        }
      }
      label188:
      paramInt1 = j;
    }
  }
  
  private final void _skipCComment()
    throws IOException, JsonParseException
  {
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfChar[i];
        if (i > 42) {
          continue;
        }
        if (i != 42) {
          break label101;
        }
        if ((_inputPtr < _inputEnd) || (loadMore())) {}
      }
      else
      {
        _reportInvalidEOF(" in a comment");
        return;
      }
      if (_inputBuffer[_inputPtr] == '/')
      {
        _inputPtr += 1;
        return;
        label101:
        if (i < 32) {
          if (i == 10) {
            _skipLF();
          } else if (i == 13) {
            _skipCR();
          } else if (i != 9) {
            _throwInvalidSpace(i);
          }
        }
      }
    }
  }
  
  private final void _skipComment()
    throws IOException, JsonParseException
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
      _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in a comment");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfChar[i];
    if (i == 47)
    {
      _skipCppComment();
      return;
    }
    if (i == 42)
    {
      _skipCComment();
      return;
    }
    _reportUnexpectedChar(i, "was expecting either '*' or '/' for a comment");
  }
  
  private final void _skipCppComment()
    throws IOException, JsonParseException
  {
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfChar[i];
        if (i >= 32) {
          continue;
        }
        if (i == 10) {
          _skipLF();
        }
      }
      else
      {
        return;
      }
      if (i == 13)
      {
        _skipCR();
        return;
      }
      if (i != 9) {
        _throwInvalidSpace(i);
      }
    }
  }
  
  private final int _skipWS()
    throws IOException, JsonParseException
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
      if (i > 32)
      {
        if (i != 47) {
          return i;
        }
        _skipComment();
      }
      else if (i != 32)
      {
        if (i == 10) {
          _skipLF();
        } else if (i == 13) {
          _skipCR();
        } else if (i != 9) {
          _throwInvalidSpace(i);
        }
      }
    }
    throw _constructError("Unexpected end-of-input within/between " + _parsingContext.getTypeDesc() + " entries");
  }
  
  private final int _skipWSOrEnd()
    throws IOException, JsonParseException
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      int j = arrayOfChar[i];
      if (j > 32)
      {
        i = j;
        if (j != 47) {
          return i;
        }
        _skipComment();
      }
      else if (j != 32)
      {
        if (j == 10) {
          _skipLF();
        } else if (j == 13) {
          _skipCR();
        } else if (j != 9) {
          _throwInvalidSpace(j);
        }
      }
    }
    _handleEOF();
    int i = -1;
    return i;
  }
  
  private final char _verifyNoLeadingZeroes()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    char c2;
    do
    {
      for (char c1 = '0'; (_inputPtr >= _inputEnd) && (!loadMore()); c1 = c2) {
        do
        {
          return c1;
          c2 = _inputBuffer[_inputPtr];
          if ((c2 < '0') || (c2 > '9')) {
            return '0';
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
          }
          _inputPtr += 1;
          c1 = c2;
        } while (c2 != '0');
      }
      c2 = _inputBuffer[_inputPtr];
      if ((c2 < '0') || (c2 > '9')) {
        return '0';
      }
      _inputPtr += 1;
      c1 = c2;
    } while (c2 == '0');
    return c2;
  }
  
  private final JsonToken parseNumberText2(boolean paramBoolean)
    throws IOException, JsonParseException
  {
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    int k = 0;
    if (paramBoolean)
    {
      localObject2[0] = 45;
      k = 0 + 1;
    }
    int n = 0;
    Object localObject1;
    int m;
    int i;
    int j;
    int i1;
    label85:
    int i4;
    if (_inputPtr < _inputEnd)
    {
      localObject1 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      i = localObject1[m];
      j = i;
      if (i == 48) {
        j = _verifyNoLeadingZeroes();
      }
      i1 = 0;
      i = j;
      if ((i < 48) || (i > 57)) {
        break label910;
      }
      n += 1;
      localObject1 = localObject2;
      m = k;
      if (k >= localObject2.length)
      {
        localObject1 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      k = m + 1;
      localObject1[m] = i;
      if ((_inputPtr < _inputEnd) || (loadMore())) {
        break label682;
      }
      i = 0;
      m = 1;
      i4 = n;
    }
    for (;;)
    {
      if (i4 == 0) {
        reportInvalidNumber("Missing integer part (next char " + _getCharDesc(i) + ")");
      }
      int i5 = 0;
      i1 = 0;
      label234:
      int i2;
      if (i == 46)
      {
        n = k + 1;
        localObject1[k] = i;
        k = n;
        if ((_inputPtr >= _inputEnd) && (!loadMore()))
        {
          i2 = 1;
          label255:
          j = i;
          m = i2;
          i5 = i1;
          localObject2 = localObject1;
          n = k;
          if (i1 == 0)
          {
            reportUnexpectedNumberChar(i, "Decimal point not followed by a digit");
            n = k;
            localObject2 = localObject1;
            i5 = i1;
            m = i2;
            j = i;
          }
        }
      }
      for (;;)
      {
        int i3 = 0;
        i1 = 0;
        int i6;
        if (j != 101)
        {
          k = m;
          i6 = n;
          if (j != 69) {}
        }
        else
        {
          localObject1 = localObject2;
          k = n;
          if (n >= localObject2.length)
          {
            localObject1 = _textBuffer.finishCurrentSegment();
            k = 0;
          }
          n = k + 1;
          localObject1[k] = j;
          if (_inputPtr >= _inputEnd) {
            break label820;
          }
          localObject2 = _inputBuffer;
          k = _inputPtr;
          _inputPtr = (k + 1);
          i = localObject2[k];
          label406:
          if ((i != 45) && (i != 43)) {
            break label886;
          }
          if (n < localObject1.length) {
            break label879;
          }
          localObject1 = _textBuffer.finishCurrentSegment();
          k = 0;
          label438:
          localObject1[k] = i;
          if (_inputPtr >= _inputEnd) {
            break label831;
          }
          localObject2 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          i = localObject2[n];
          label481:
          k += 1;
          i3 = i1;
        }
        for (;;)
        {
          i2 = m;
          i1 = i3;
          n = k;
          if (i <= 57)
          {
            i2 = m;
            i1 = i3;
            n = k;
            if (i >= 48)
            {
              i1 = i3 + 1;
              localObject2 = localObject1;
              n = k;
              if (k >= localObject1.length)
              {
                localObject2 = _textBuffer.finishCurrentSegment();
                n = 0;
              }
              k = n + 1;
              localObject2[n] = i;
              if ((_inputPtr < _inputEnd) || (loadMore())) {
                break label842;
              }
              i2 = 1;
              n = k;
            }
          }
          k = i2;
          i3 = i1;
          i6 = n;
          if (i1 == 0)
          {
            reportUnexpectedNumberChar(i, "Exponent indicator not followed by a digit");
            i6 = n;
            i3 = i1;
            k = i2;
          }
          if (k == 0) {
            _inputPtr -= 1;
          }
          _textBuffer.setCurrentLength(i6);
          return reset(paramBoolean, i4, i5, i3);
          i = getNextChar("No digit following minus sign");
          break;
          label682:
          localObject2 = _inputBuffer;
          m = _inputPtr;
          _inputPtr = (m + 1);
          i = localObject2[m];
          localObject2 = localObject1;
          break label85;
          localObject2 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          j = localObject2[n];
          i = j;
          i2 = m;
          if (j < 48) {
            break label255;
          }
          i = j;
          i2 = m;
          if (j > 57) {
            break label255;
          }
          i1 += 1;
          localObject2 = localObject1;
          n = k;
          if (k >= localObject1.length)
          {
            localObject2 = _textBuffer.finishCurrentSegment();
            n = 0;
          }
          localObject2[n] = j;
          k = n + 1;
          i = j;
          localObject1 = localObject2;
          break label234;
          label820:
          i = getNextChar("expected a digit for number exponent");
          break label406;
          label831:
          i = getNextChar("expected a digit for number exponent");
          break label481;
          label842:
          localObject1 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          i = localObject1[n];
          i3 = i1;
          localObject1 = localObject2;
          continue;
          label879:
          k = n;
          break label438;
          label886:
          k = n;
          i3 = i1;
        }
        j = i;
        localObject2 = localObject1;
        n = k;
      }
      label910:
      m = i1;
      i4 = n;
      localObject1 = localObject2;
    }
  }
  
  protected void _closeInput()
    throws IOException
  {
    if (_reader != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _reader.close();
      }
      _reader = null;
    }
  }
  
  protected byte[] _decodeBase64(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      char c = arrayOfChar[i];
      if (c > ' ')
      {
        int j = paramBase64Variant.decodeBase64Char(c);
        i = j;
        if (j < 0)
        {
          if (c == '"') {
            return localByteArrayBuilder.toByteArray();
          }
          i = _decodeBase64Escape(paramBase64Variant, c, 0);
          if (i < 0) {}
        }
        else
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          c = arrayOfChar[j];
          int k = paramBase64Variant.decodeBase64Char(c);
          j = k;
          if (k < 0) {
            j = _decodeBase64Escape(paramBase64Variant, c, 1);
          }
          int m = i << 6 | j;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((c == '"') && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.append(m >> 4);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, c, 2);
            }
            k = i;
            if (i == -2)
            {
              if (_inputPtr >= _inputEnd) {
                loadMoreGuaranteed();
              }
              arrayOfChar = _inputBuffer;
              i = _inputPtr;
              _inputPtr = (i + 1);
              c = arrayOfChar[i];
              if (!paramBase64Variant.usesPaddingChar(c)) {
                throw reportInvalidBase64Char(paramBase64Variant, c, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              }
              localByteArrayBuilder.append(m >> 4);
              continue;
            }
          }
          m = m << 6 | k;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((c == '"') && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.appendTwoBytes(m >> 2);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, c, 3);
            }
            k = i;
            if (i == -2)
            {
              localByteArrayBuilder.appendTwoBytes(m >> 2);
              continue;
            }
          }
          localByteArrayBuilder.appendThreeBytes(m << 6 | k);
        }
      }
    }
  }
  
  protected final char _decodeEscaped()
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in character escape sequence");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    char c2 = arrayOfChar[i];
    char c1 = c2;
    switch (c2)
    {
    default: 
      c1 = _handleUnrecognizedCharacterEscape(c2);
    case '"': 
    case '/': 
    case '\\': 
      return c1;
    case 'b': 
      return '\b';
    case 't': 
      return '\t';
    case 'n': 
      return '\n';
    case 'f': 
      return '\f';
    case 'r': 
      return '\r';
    }
    int j = 0;
    i = 0;
    while (i < 4)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in character escape sequence");
      }
      arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfChar[k];
      int m = CharTypes.charToHex(k);
      if (m < 0) {
        _reportUnexpectedChar(k, "expected a hex-digit for character escape sequence");
      }
      j = j << 4 | m;
      i += 1;
    }
    return (char)j;
  }
  
  protected void _finishString()
    throws IOException, JsonParseException
  {
    int i = _inputPtr;
    int k = _inputEnd;
    int j = i;
    if (i < k)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int m = arrayOfInt.length;
      do
      {
        int n = _inputBuffer[i];
        if ((n < m) && (arrayOfInt[n] != 0))
        {
          j = i;
          if (n != 34) {
            break;
          }
          _textBuffer.resetWithShared(_inputBuffer, _inputPtr, i - _inputPtr);
          _inputPtr = (i + 1);
          return;
        }
        j = i + 1;
        i = j;
      } while (j < k);
    }
    _textBuffer.resetWithCopy(_inputBuffer, _inputPtr, j - _inputPtr);
    _inputPtr = j;
    _finishString2();
  }
  
  protected void _finishString2()
    throws IOException, JsonParseException
  {
    Object localObject1 = _textBuffer.getCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    Object localObject2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = localObject2[m];
    int i = j;
    if (j <= 92)
    {
      if (j != 92) {
        break label131;
      }
      i = _decodeEscaped();
    }
    for (;;)
    {
      localObject2 = localObject1;
      m = k;
      if (k >= localObject1.length)
      {
        localObject2 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      localObject2[m] = i;
      k = m + 1;
      localObject1 = localObject2;
      break;
      label131:
      i = j;
      if (j <= 34)
      {
        if (j == 34)
        {
          _textBuffer.setCurrentLength(k);
          return;
        }
        i = j;
        if (j < 32)
        {
          _throwUnquotedSpace(j, "string value");
          i = j;
        }
      }
    }
  }
  
  protected final String _getText2(JsonToken paramJsonToken)
  {
    if (paramJsonToken == null) {
      return null;
    }
    switch (paramJsonToken)
    {
    default: 
      return paramJsonToken.asString();
    case ???: 
      return _parsingContext.getCurrentName();
    }
    return _textBuffer.contentsAsString();
  }
  
  protected final JsonToken _handleApostropheValue()
    throws IOException, JsonParseException
  {
    Object localObject1 = _textBuffer.emptyAndGetCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    Object localObject2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = localObject2[m];
    int i = j;
    if (j <= 92)
    {
      if (j != 92) {
        break label131;
      }
      i = _decodeEscaped();
    }
    for (;;)
    {
      localObject2 = localObject1;
      m = k;
      if (k >= localObject1.length)
      {
        localObject2 = _textBuffer.finishCurrentSegment();
        m = 0;
      }
      localObject2[m] = i;
      k = m + 1;
      localObject1 = localObject2;
      break;
      label131:
      i = j;
      if (j <= 39)
      {
        if (j == 39)
        {
          _textBuffer.setCurrentLength(k);
          return JsonToken.VALUE_STRING;
        }
        i = j;
        if (j < 32)
        {
          _throwUnquotedSpace(j, "string value");
          i = j;
        }
      }
    }
  }
  
  protected JsonToken _handleInvalidNumberStart(int paramInt, boolean paramBoolean)
    throws IOException, JsonParseException
  {
    double d = Double.NEGATIVE_INFINITY;
    int i = paramInt;
    Object localObject;
    if (paramInt == 73)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      localObject = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      paramInt = localObject[paramInt];
      if (paramInt != 78) {
        break label162;
      }
      if (paramBoolean)
      {
        localObject = "-INF";
        _matchToken((String)localObject, 3);
        if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
          break label117;
        }
        if (!paramBoolean) {
          break label110;
        }
      }
      for (;;)
      {
        return resetAsNaN((String)localObject, d);
        localObject = "+INF";
        break;
        label110:
        d = Double.POSITIVE_INFINITY;
      }
      label117:
      _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
      i = paramInt;
    }
    for (;;)
    {
      reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
      return null;
      label162:
      i = paramInt;
      if (paramInt == 110)
      {
        if (paramBoolean)
        {
          localObject = "-Infinity";
          _matchToken((String)localObject, 3);
          if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            break label224;
          }
          if (!paramBoolean) {
            break label217;
          }
        }
        for (;;)
        {
          return resetAsNaN((String)localObject, d);
          localObject = "+Infinity";
          break;
          label217:
          d = Double.POSITIVE_INFINITY;
        }
        label224:
        _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        i = paramInt;
      }
    }
  }
  
  protected final JsonToken _handleUnexpectedValue(int paramInt)
    throws IOException, JsonParseException
  {
    switch (paramInt)
    {
    default: 
    case 39: 
    case 78: 
      for (;;)
      {
        _reportUnexpectedChar(paramInt, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
        if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))
        {
          return _handleApostropheValue();
          _matchToken("NaN", 1);
          if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            return resetAsNaN("NaN", NaN.0D);
          }
          _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        }
      }
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOFInValue();
    }
    char[] arrayOfChar = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    return _handleInvalidNumberStart(arrayOfChar[paramInt], false);
  }
  
  protected final String _handleUnusualFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))) {
      return _parseApostropheFieldName();
    }
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
      _reportUnexpectedChar(paramInt, "was expecting double-quote to start field name");
    }
    int[] arrayOfInt = CharTypes.getInputCodeLatin1JsNames();
    int m = arrayOfInt.length;
    boolean bool;
    int j;
    int k;
    int n;
    if (paramInt < m) {
      if ((arrayOfInt[paramInt] == 0) && ((paramInt < 48) || (paramInt > 57)))
      {
        bool = true;
        if (!bool) {
          _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        i = _inputPtr;
        j = 0;
        k = 0;
        n = _inputEnd;
        paramInt = i;
        if (i >= n) {
          break label258;
        }
        paramInt = i;
        i = k;
      }
    }
    label228:
    do
    {
      j = _inputBuffer[paramInt];
      if (j < m)
      {
        if (arrayOfInt[j] == 0) {
          break label228;
        }
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
        bool = false;
        break;
        bool = Character.isJavaIdentifierPart((char)paramInt);
        break;
      }
      if (!Character.isJavaIdentifierPart((char)j))
      {
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
      }
      j = i * 31 + j;
      k = paramInt + 1;
      i = j;
      paramInt = k;
    } while (k < n);
    paramInt = k;
    label258:
    int i = _inputPtr;
    _inputPtr = paramInt;
    return _parseUnusualFieldName2(i - 1, j, arrayOfInt);
  }
  
  protected final void _matchToken(String paramString, int paramInt)
    throws IOException, JsonParseException
  {
    int j = paramString.length();
    int i;
    do
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      if (_inputBuffer[_inputPtr] != paramString.charAt(paramInt)) {
        _reportInvalidToken(paramString.substring(0, paramInt), "'null', 'true', 'false' or NaN");
      }
      _inputPtr += 1;
      i = paramInt + 1;
      paramInt = i;
    } while (i < j);
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    char c;
    do
    {
      return;
      c = _inputBuffer[_inputPtr];
    } while ((c < '0') || (c == ']') || (c == '}') || (!Character.isJavaIdentifierPart(c)));
    _reportInvalidToken(paramString.substring(0, i), "'null', 'true', 'false' or NaN");
  }
  
  protected final String _parseApostropheFieldName()
    throws IOException, JsonParseException
  {
    int k = _inputPtr;
    int i = 0;
    int m = 0;
    int n = _inputEnd;
    int j = k;
    if (k < n)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int i1 = arrayOfInt.length;
      j = k;
      i = m;
      k = _inputBuffer[j];
      if (k == 39)
      {
        k = _inputPtr;
        _inputPtr = (j + 1);
        return _symbols.findSymbol(_inputBuffer, k, j - k, i);
      }
      if ((k >= i1) || (arrayOfInt[k] == 0)) {
        break label123;
      }
    }
    for (;;)
    {
      k = _inputPtr;
      _inputPtr = j;
      return _parseFieldName2(k, i, 39);
      label123:
      m = i * 31 + k;
      k = j + 1;
      i = m;
      j = k;
      if (k < n) {
        break;
      }
      i = m;
      j = k;
    }
  }
  
  protected final String _parseFieldName(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt != 34) {
      return _handleUnusualFieldName(paramInt);
    }
    paramInt = _inputPtr;
    int k = 0;
    int i = 0;
    int m = _inputEnd;
    int j = paramInt;
    if (paramInt < m)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int n = arrayOfInt.length;
      do
      {
        int i1 = _inputBuffer[paramInt];
        if ((i1 < n) && (arrayOfInt[i1] != 0))
        {
          k = i;
          j = paramInt;
          if (i1 != 34) {
            break;
          }
          j = _inputPtr;
          _inputPtr = (paramInt + 1);
          return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
        }
        k = i * 31 + i1;
        j = paramInt + 1;
        i = k;
        paramInt = j;
      } while (j < m);
    }
    paramInt = _inputPtr;
    _inputPtr = j;
    return _parseFieldName2(paramInt, k, 34);
  }
  
  protected void _releaseBuffers()
    throws IOException
  {
    super._releaseBuffers();
    char[] arrayOfChar = _inputBuffer;
    if (arrayOfChar != null)
    {
      _inputBuffer = null;
      _ioContext.releaseTokenBuffer(arrayOfChar);
    }
  }
  
  protected void _reportInvalidToken(String paramString1, String paramString2)
    throws IOException, JsonParseException
  {
    paramString1 = new StringBuilder(paramString1);
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
      char c;
      do
      {
        _reportError("Unrecognized token '" + paramString1.toString() + "': was expecting ");
        return;
        c = _inputBuffer[_inputPtr];
      } while (!Character.isJavaIdentifierPart(c));
      _inputPtr += 1;
      paramString1.append(c);
    }
  }
  
  protected final void _skipCR()
    throws IOException
  {
    if (((_inputPtr < _inputEnd) || (loadMore())) && (_inputBuffer[_inputPtr] == '\n')) {
      _inputPtr += 1;
    }
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected final void _skipLF()
    throws IOException
  {
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected void _skipString()
    throws IOException, JsonParseException
  {
    _tokenIncomplete = false;
    int i = _inputPtr;
    int j = _inputEnd;
    char[] arrayOfChar = _inputBuffer;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i >= j)
      {
        _inputPtr = i;
        if (!loadMore()) {
          _reportInvalidEOF(": was expecting closing quote for a string value");
        }
        m = _inputPtr;
        k = _inputEnd;
      }
      i = m + 1;
      j = arrayOfChar[m];
      if (j <= 92)
      {
        if (j == 92)
        {
          _inputPtr = i;
          _decodeEscaped();
          i = _inputPtr;
          j = _inputEnd;
          continue;
        }
        if (j <= 34)
        {
          if (j == 34)
          {
            _inputPtr = i;
            return;
          }
          if (j < 32)
          {
            _inputPtr = i;
            _throwUnquotedSpace(j, "string value");
          }
        }
      }
      j = k;
    }
  }
  
  public void close()
    throws IOException
  {
    super.close();
    _symbols.release();
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    if ((_currToken != JsonToken.VALUE_STRING) && ((_currToken != JsonToken.VALUE_EMBEDDED_OBJECT) || (_binaryValue == null))) {
      _reportError("Current token (" + _currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
    }
    if (_tokenIncomplete) {}
    for (;;)
    {
      try
      {
        _binaryValue = _decodeBase64(paramBase64Variant);
        _tokenIncomplete = false;
        return _binaryValue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw _constructError("Failed to decode VALUE_STRING as base64 (" + paramBase64Variant + "): " + localIllegalArgumentException.getMessage());
      }
      if (_binaryValue == null)
      {
        ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
        _decodeBase64(getText(), localByteArrayBuilder, paramBase64Variant);
        _binaryValue = localByteArrayBuilder.toByteArray();
      }
    }
  }
  
  public ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public Object getInputSource()
  {
    return _reader;
  }
  
  protected char getNextChar(String paramString)
    throws IOException, JsonParseException
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(paramString);
    }
    paramString = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    return paramString[i];
  }
  
  public final String getText()
    throws IOException, JsonParseException
  {
    JsonToken localJsonToken = _currToken;
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return _getText2(localJsonToken);
  }
  
  public char[] getTextCharacters()
    throws IOException, JsonParseException
  {
    if (_currToken != null)
    {
      switch (_currToken)
      {
      default: 
        return _currToken.asCharArray();
      case ???: 
        String str;
        int i;
        if (!_nameCopied)
        {
          str = _parsingContext.getCurrentName();
          i = str.length();
          if (_nameCopyBuffer != null) {
            break label116;
          }
          _nameCopyBuffer = _ioContext.allocNameCopyBuffer(i);
        }
        for (;;)
        {
          str.getChars(0, i, _nameCopyBuffer, 0);
          _nameCopied = true;
          return _nameCopyBuffer;
          if (_nameCopyBuffer.length < i) {
            _nameCopyBuffer = new char[i];
          }
        }
      case ???: 
        label116:
        if (_tokenIncomplete)
        {
          _tokenIncomplete = false;
          _finishString();
        }
        break;
      }
      return _textBuffer.getTextBuffer();
    }
    return null;
  }
  
  public int getTextLength()
    throws IOException, JsonParseException
  {
    int i = 0;
    if (_currToken != null) {}
    switch (_currToken)
    {
    default: 
      i = _currToken.asCharArray().length;
      return i;
    case ???: 
      return _parsingContext.getCurrentName().length();
    case ???: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.size();
  }
  
  public int getTextOffset()
    throws IOException, JsonParseException
  {
    if (_currToken != null) {}
    switch (_currToken)
    {
    case ???: 
    default: 
      return 0;
    case ???: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.getTextOffset();
  }
  
  protected final boolean loadMore()
    throws IOException
  {
    boolean bool2 = false;
    _currInputProcessed += _inputEnd;
    _currInputRowStart -= _inputEnd;
    boolean bool1 = bool2;
    int i;
    if (_reader != null)
    {
      i = _reader.read(_inputBuffer, 0, _inputBuffer.length);
      if (i <= 0) {
        break label74;
      }
      _inputPtr = 0;
      _inputEnd = i;
      bool1 = true;
    }
    label74:
    do
    {
      return bool1;
      _closeInput();
      bool1 = bool2;
    } while (i != 0);
    throw new IOException("Reader returned 0 characters when trying to read " + _inputEnd);
  }
  
  public Boolean nextBooleanValue()
    throws IOException, JsonParseException
  {
    Boolean localBoolean = null;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      JsonToken localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_TRUE) {
        localBoolean = Boolean.TRUE;
      }
      do
      {
        return localBoolean;
        if (localJsonToken == JsonToken.VALUE_FALSE) {
          return Boolean.FALSE;
        }
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return null;
        }
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return null;
    }
    switch (nextToken())
    {
    default: 
      return null;
    case ???: 
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
  
  public int nextIntValue(int paramInt)
    throws IOException, JsonParseException
  {
    JsonToken localJsonToken;
    int i;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        i = getIntValue();
      }
    }
    do
    {
      do
      {
        return i;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return paramInt;
        }
        i = paramInt;
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return paramInt;
      i = paramInt;
    } while (nextToken() != JsonToken.VALUE_NUMBER_INT);
    return getIntValue();
  }
  
  public long nextLongValue(long paramLong)
    throws IOException, JsonParseException
  {
    JsonToken localJsonToken;
    long l;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        l = getLongValue();
      }
    }
    do
    {
      do
      {
        return l;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return paramLong;
        }
        l = paramLong;
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return paramLong;
      l = paramLong;
    } while (nextToken() != JsonToken.VALUE_NUMBER_INT);
    return getLongValue();
  }
  
  public String nextTextValue()
    throws IOException, JsonParseException
  {
    String str = null;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        if (_tokenIncomplete)
        {
          _tokenIncomplete = false;
          _finishString();
        }
        str = _textBuffer.contentsAsString();
      }
    }
    while (nextToken() != JsonToken.VALUE_STRING)
    {
      JsonToken localJsonToken;
      do
      {
        return str;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return null;
        }
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return null;
    }
    return getText();
  }
  
  public JsonToken nextToken()
    throws IOException, JsonParseException
  {
    _numTypesValid = 0;
    if (_currToken == JsonToken.FIELD_NAME) {
      return _nextAfterName();
    }
    if (_tokenIncomplete) {
      _skipString();
    }
    int j = _skipWSOrEnd();
    if (j < 0)
    {
      close();
      _currToken = null;
      return null;
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr - 1L);
    _tokenInputRow = _currInputRow;
    _tokenInputCol = (_inputPtr - _currInputRowStart - 1);
    _binaryValue = null;
    Object localObject;
    if (j == 93)
    {
      if (!_parsingContext.inArray()) {
        _reportMismatchedEndMarker(j, '}');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_ARRAY;
      _currToken = ((JsonToken)localObject);
      return (JsonToken)localObject;
    }
    if (j == 125)
    {
      if (!_parsingContext.inObject()) {
        _reportMismatchedEndMarker(j, ']');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_OBJECT;
      _currToken = ((JsonToken)localObject);
      return (JsonToken)localObject;
    }
    int i = j;
    if (_parsingContext.expectComma())
    {
      if (j != 44) {
        _reportUnexpectedChar(j, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
      }
      i = _skipWS();
    }
    boolean bool = _parsingContext.inObject();
    j = i;
    if (bool)
    {
      localObject = _parseFieldName(i);
      _parsingContext.setCurrentName((String)localObject);
      _currToken = JsonToken.FIELD_NAME;
      i = _skipWS();
      if (i != 58) {
        _reportUnexpectedChar(i, "was expecting a colon to separate field name and value");
      }
      j = _skipWS();
    }
    switch (j)
    {
    default: 
      localObject = _handleUnexpectedValue(j);
    }
    while (bool)
    {
      _nextToken = ((JsonToken)localObject);
      return _currToken;
      _tokenIncomplete = true;
      localObject = JsonToken.VALUE_STRING;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_ARRAY;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_OBJECT;
      continue;
      _reportUnexpectedChar(j, "expected a value");
      _matchToken("true", 1);
      localObject = JsonToken.VALUE_TRUE;
      continue;
      _matchToken("false", 1);
      localObject = JsonToken.VALUE_FALSE;
      continue;
      _matchToken("null", 1);
      localObject = JsonToken.VALUE_NULL;
      continue;
      localObject = parseNumberText(j);
    }
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
  }
  
  protected final JsonToken parseNumberText(int paramInt)
    throws IOException, JsonParseException
  {
    boolean bool;
    int i2;
    int i3;
    int i;
    if (paramInt == 45)
    {
      bool = true;
      j = _inputPtr;
      i2 = j - 1;
      i3 = _inputEnd;
      i = j;
      if (!bool) {
        break label114;
      }
      if (j < _inputEnd) {
        break label75;
      }
    }
    label75:
    label114:
    int k;
    label125:
    int i1;
    int m;
    int n;
    label252:
    label293:
    do
    {
      do
      {
        paramInt = i2;
        if (bool) {
          paramInt = i2 + 1;
        }
        _inputPtr = paramInt;
        return parseNumberText2(bool);
        bool = false;
        break;
        arrayOfChar = _inputBuffer;
        i = j + 1;
        paramInt = arrayOfChar[j];
        if ((paramInt > 57) || (paramInt < 48))
        {
          _inputPtr = i;
          return _handleInvalidNumberStart(paramInt, true);
        }
      } while (paramInt == 48);
      k = 1;
      paramInt = i;
      if (paramInt < _inputEnd)
      {
        arrayOfChar = _inputBuffer;
        i = paramInt + 1;
        i1 = arrayOfChar[paramInt];
        if ((i1 < 48) || (i1 > 57))
        {
          m = 0;
          n = 0;
          paramInt = i;
          j = i1;
          if (i1 != 46) {
            break label252;
          }
          j = i;
          i = n;
        }
      }
      for (;;)
      {
        if (j >= i3)
        {
          break;
          k += 1;
          paramInt = i;
          break label125;
          break;
        }
        arrayOfChar = _inputBuffer;
        paramInt = j + 1;
        j = arrayOfChar[j];
        if ((j < 48) || (j > 57))
        {
          if (i == 0) {
            reportUnexpectedNumberChar(j, "Decimal point not followed by a digit");
          }
          m = i;
          n = 0;
          i = 0;
          if (j != 101)
          {
            i1 = paramInt;
            if (j != 69) {
              break label412;
            }
          }
          if (paramInt < i3) {
            break label293;
          }
          break;
        }
        i += 1;
        j = paramInt;
      }
      arrayOfChar = _inputBuffer;
      n = paramInt + 1;
      j = arrayOfChar[paramInt];
      if ((j != 45) && (j != 43)) {
        break label452;
      }
    } while (n >= i3);
    char[] arrayOfChar = _inputBuffer;
    paramInt = n + 1;
    int j = arrayOfChar[n];
    for (;;)
    {
      if ((j <= 57) && (j >= 48))
      {
        i += 1;
        if (paramInt >= i3) {
          break;
        }
        j = _inputBuffer[paramInt];
        paramInt += 1;
        continue;
      }
      n = i;
      i1 = paramInt;
      if (i == 0)
      {
        reportUnexpectedNumberChar(j, "Exponent indicator not followed by a digit");
        i1 = paramInt;
        n = i;
      }
      label412:
      paramInt = i1 - 1;
      _inputPtr = paramInt;
      _textBuffer.resetWithShared(_inputBuffer, i2, paramInt - i2);
      return reset(bool, k, m, n);
      label452:
      paramInt = n;
    }
  }
  
  public int releaseBuffered(Writer paramWriter)
    throws IOException
  {
    int i = _inputEnd - _inputPtr;
    if (i < 1) {
      return 0;
    }
    int j = _inputPtr;
    paramWriter.write(_inputBuffer, j, i);
    return i;
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.ReaderBasedParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */