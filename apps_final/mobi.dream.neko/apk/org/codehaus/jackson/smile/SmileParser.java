package org.codehaus.jackson.smile;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.SerializableString;
import org.codehaus.jackson.impl.JsonParserBase;
import org.codehaus.jackson.impl.JsonReadContext;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.BytesToNameCanonicalizer;
import org.codehaus.jackson.sym.Name;
import org.codehaus.jackson.util.TextBuffer;

public class SmileParser
  extends JsonParserBase
{
  private static final int[] NO_INTS = new int[0];
  private static final String[] NO_STRINGS = new String[0];
  protected static final ThreadLocal<SoftReference<SmileBufferRecycler<String>>> _smileRecyclerRef = new ThreadLocal();
  protected boolean _bufferRecyclable;
  protected boolean _got32BitFloat;
  protected byte[] _inputBuffer;
  protected InputStream _inputStream;
  protected boolean _mayContainRawBinary;
  protected ObjectCodec _objectCodec;
  protected int _quad1;
  protected int _quad2;
  protected int[] _quadBuffer = NO_INTS;
  protected int _seenNameCount = 0;
  protected String[] _seenNames = NO_STRINGS;
  protected int _seenStringValueCount = -1;
  protected String[] _seenStringValues = null;
  protected final SmileBufferRecycler<String> _smileBufferRecycler;
  protected final BytesToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  protected int _typeByte;
  
  public SmileParser(IOContext paramIOContext, int paramInt1, int paramInt2, ObjectCodec paramObjectCodec, BytesToNameCanonicalizer paramBytesToNameCanonicalizer, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1);
    _objectCodec = paramObjectCodec;
    _symbols = paramBytesToNameCanonicalizer;
    _inputStream = paramInputStream;
    _inputBuffer = paramArrayOfByte;
    _inputPtr = paramInt3;
    _inputEnd = paramInt4;
    _bufferRecyclable = paramBoolean;
    _tokenInputRow = -1;
    _tokenInputCol = -1;
    _smileBufferRecycler = _smileBufferRecycler();
  }
  
  private final String _addDecodedToSymbols(int paramInt, String paramString)
  {
    if (paramInt < 5) {
      return _symbols.addName(paramString, _quad1, 0).getName();
    }
    if (paramInt < 9) {
      return _symbols.addName(paramString, _quad1, _quad2).getName();
    }
    return _symbols.addName(paramString, _quadBuffer, paramInt + 3 >> 2).getName();
  }
  
  private final void _addSeenStringValue()
    throws IOException, JsonParseException
  {
    _finishToken();
    if (_seenStringValueCount < _seenStringValues.length)
    {
      String[] arrayOfString = _seenStringValues;
      int i = _seenStringValueCount;
      _seenStringValueCount = (i + 1);
      arrayOfString[i] = _textBuffer.contentsAsString();
      return;
    }
    _expandSeenStringValues();
  }
  
  private final void _decodeLongAscii()
    throws IOException, JsonParseException
  {
    int j = 0;
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    int k = _inputPtr;
    int m = _inputEnd;
    Object localObject1 = localObject2;
    int i = j;
    if (j >= localObject2.length)
    {
      localObject1 = _textBuffer.finishCurrentSegment();
      i = 0;
    }
    m = Math.min(m - k, localObject1.length - i);
    j = i;
    int n;
    for (i = m;; i = n)
    {
      localObject2 = _inputBuffer;
      m = k + 1;
      n = localObject2[k];
      if (n == -4)
      {
        _inputPtr = m;
        _textBuffer.setCurrentLength(j);
        return;
      }
      k = j + 1;
      localObject1[j] = ((char)n);
      n = i - 1;
      if (n <= 0)
      {
        _inputPtr = m;
        j = k;
        localObject2 = localObject1;
        break;
      }
      i = m;
      j = k;
      k = i;
    }
  }
  
  private final void _decodeLongUnicode()
    throws IOException, JsonParseException
  {
    int k = 0;
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = SmileConstants.sUtf8UnitLengths;
    byte[] arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    int i = j;
    if (j >= _inputEnd)
    {
      loadMoreGuaranteed();
      i = _inputPtr;
    }
    Object localObject1 = localObject2;
    j = k;
    if (k >= localObject2.length)
    {
      localObject1 = _textBuffer.finishCurrentSegment();
      j = 0;
    }
    k = _inputEnd;
    int m = i + (localObject1.length - j);
    if (m < k)
    {
      k = m;
      m = j;
      j = i;
      i = m;
    }
    for (;;)
    {
      if (j < k)
      {
        m = j + 1;
        j = arrayOfByte[j] & 0xFF;
        if (arrayOfInt[j] != 0)
        {
          _inputPtr = m;
          if (j == 252) {
            _textBuffer.setCurrentLength(i);
          }
        }
        else
        {
          localObject1[i] = ((char)j);
          j = m;
          i += 1;
        }
      }
      else
      {
        _inputPtr = j;
        localObject2 = localObject1;
        k = i;
        break;
      }
      switch (arrayOfInt[j])
      {
      default: 
        _reportInvalidChar(j);
      }
      for (;;)
      {
        localObject2 = localObject1;
        k = i;
        if (i >= localObject1.length)
        {
          localObject2 = _textBuffer.finishCurrentSegment();
          k = 0;
        }
        localObject2[k] = ((char)j);
        k += 1;
        break;
        j = _decodeUtf8_2(j);
        continue;
        if (_inputEnd - _inputPtr >= 2)
        {
          j = _decodeUtf8_3fast(j);
        }
        else
        {
          j = _decodeUtf8_3(j);
          continue;
          k = _decodeUtf8_4(j);
          j = i + 1;
          localObject1[i] = ((char)(0xD800 | k >> 10));
          localObject2 = localObject1;
          i = j;
          if (j >= localObject1.length)
          {
            localObject2 = _textBuffer.finishCurrentSegment();
            i = 0;
          }
          j = 0xDC00 | k & 0x3FF;
          localObject1 = localObject2;
        }
      }
      m = i;
      i = j;
      j = m;
    }
  }
  
  private final Name _decodeLongUnicodeName(int[] paramArrayOfInt, int paramInt1, int paramInt2)
    throws IOException, JsonParseException
  {
    int i3 = paramInt1 & 0x3;
    int i2;
    Object localObject1;
    int i;
    int m;
    label47:
    int j;
    int i1;
    int n;
    label117:
    Object localObject2;
    if (i3 < 4)
    {
      i2 = paramArrayOfInt[(paramInt2 - 1)];
      paramArrayOfInt[(paramInt2 - 1)] = (i2 << (4 - i3 << 3));
      localObject1 = _textBuffer.emptyAndGetCurrentSegment();
      i = 0;
      m = 0;
      if (i >= paramInt1) {
        break label516;
      }
      j = paramArrayOfInt[(i >> 2)] >> (3 - (i & 0x3) << 3) & 0xFF;
      int k = i + 1;
      i1 = j;
      n = k;
      if (j <= 127) {
        break label555;
      }
      if ((j & 0xE0) != 192) {
        break label451;
      }
      i = j & 0x1F;
      j = 1;
      if (k + j > paramInt1) {
        _reportInvalidEOF(" in long field name");
      }
      i1 = paramArrayOfInt[(k >> 2)] >> (3 - (k & 0x3) << 3);
      n = k + 1;
      if ((i1 & 0xC0) != 128) {
        _reportInvalidOther(i1);
      }
      i1 = i << 6 | i1 & 0x3F;
      k = i1;
      i = n;
      if (j > 1)
      {
        i = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
        n += 1;
        if ((i & 0xC0) != 128) {
          _reportInvalidOther(i);
        }
        i1 = i1 << 6 | i & 0x3F;
        k = i1;
        i = n;
        if (j > 2)
        {
          k = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
          i = n + 1;
          if ((k & 0xC0) != 128) {
            _reportInvalidOther(k & 0xFF);
          }
          k = i1 << 6 | k & 0x3F;
        }
      }
      i1 = k;
      n = i;
      if (j <= 2) {
        break label555;
      }
      k -= 65536;
      localObject2 = localObject1;
      if (m >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      j = m + 1;
      localObject2[m] = ((char)(55296 + (k >> 10)));
      i1 = 0xDC00 | k & 0x3FF;
      localObject1 = localObject2;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (j >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      m = j + 1;
      localObject2[j] = ((char)i1);
      localObject1 = localObject2;
      break label47;
      i2 = 0;
      break;
      label451:
      if ((j & 0xF0) == 224)
      {
        i = j & 0xF;
        j = 2;
        break label117;
      }
      if ((j & 0xF8) == 240)
      {
        i = j & 0x7;
        j = 3;
        break label117;
      }
      _reportInvalidInitial(j);
      i = 1;
      j = 1;
      break label117;
      label516:
      localObject1 = new String((char[])localObject1, 0, m);
      if (i3 < 4) {
        paramArrayOfInt[(paramInt2 - 1)] = i2;
      }
      return _symbols.addName((String)localObject1, paramArrayOfInt, paramInt2);
      label555:
      j = m;
      i = n;
    }
  }
  
  private final String _decodeShortAsciiName(int paramInt)
    throws IOException, JsonParseException
  {
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    byte[] arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    int i = k;
    int j = 0;
    while (i < k + paramInt - 3)
    {
      m = j + 1;
      n = i + 1;
      arrayOfChar[j] = ((char)arrayOfByte[i]);
      i = m + 1;
      j = n + 1;
      arrayOfChar[m] = ((char)arrayOfByte[n]);
      m = i + 1;
      n = j + 1;
      arrayOfChar[i] = ((char)arrayOfByte[j]);
      j = m + 1;
      i = n + 1;
      arrayOfChar[m] = ((char)arrayOfByte[n]);
    }
    int n = paramInt & 0x3;
    k = i;
    int m = j;
    if (n > 0)
    {
      m = j + 1;
      k = i + 1;
      arrayOfChar[j] = ((char)arrayOfByte[i]);
      i = k;
      if (n > 1)
      {
        i = m + 1;
        j = k + 1;
        arrayOfChar[m] = ((char)arrayOfByte[k]);
        k = j;
        m = i;
        if (n <= 2) {
          break label249;
        }
        k = j + 1;
        arrayOfChar[i] = ((char)arrayOfByte[j]);
      }
    }
    label249:
    for (i = k;; i = k)
    {
      _inputPtr = i;
      _textBuffer.setCurrentLength(paramInt);
      return _textBuffer.contentsAsString();
    }
  }
  
  private final String _decodeShortUnicodeName(int paramInt)
    throws IOException, JsonParseException
  {
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    int m = _inputPtr;
    _inputPtr += paramInt;
    int[] arrayOfInt = SmileConstants.sUtf8UnitLengths;
    byte[] arrayOfByte = _inputBuffer;
    int j = m;
    int i = 0;
    if (j < m + paramInt)
    {
      int n = j + 1;
      j = arrayOfByte[j] & 0xFF;
      int k = arrayOfInt[j];
      if (k != 0) {}
      switch (k)
      {
      default: 
        _reportError("Invalid byte " + Integer.toHexString(j) + " in short Unicode text block");
        k = i;
        i = n;
      }
      for (;;)
      {
        n = k + 1;
        arrayOfChar[k] = ((char)j);
        j = i;
        i = n;
        break;
        j = (j & 0x1F) << 6 | arrayOfByte[n] & 0x3F;
        n += 1;
        k = i;
        i = n;
        continue;
        k = n + 1;
        int i1 = arrayOfByte[n];
        n = k + 1;
        j = (j & 0xF) << 12 | (i1 & 0x3F) << 6 | arrayOfByte[k] & 0x3F;
        k = i;
        i = n;
        continue;
        k = n + 1;
        i1 = arrayOfByte[n];
        n = k + 1;
        j = ((j & 0x7) << 18 | (i1 & 0x3F) << 12 | (arrayOfByte[k] & 0x3F) << 6 | arrayOfByte[n] & 0x3F) - 65536;
        k = i + 1;
        arrayOfChar[i] = ((char)(0xD800 | j >> 10));
        j = 0xDC00 | j & 0x3FF;
        i = n + 1;
      }
    }
    _textBuffer.setCurrentLength(i);
    return _textBuffer.contentsAsString();
  }
  
  private final int _decodeUtf8_2(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    return (paramInt & 0x1F) << 6 | i & 0x3F;
  }
  
  private final int _decodeUtf8_3(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_3fast(int paramInt)
    throws IOException, JsonParseException
  {
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_4(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    _inputPtr = (k + 1);
    k = arrayOfByte[k];
    if ((k & 0xC0) != 128) {
      _reportInvalidOther(k & 0xFF, _inputPtr);
    }
    return ((((paramInt & 0x7) << 6 | i & 0x3F) << 6 | j & 0x3F) << 6 | k & 0x3F) - 65536;
  }
  
  private final String[] _expandSeenNames(String[] paramArrayOfString)
  {
    int i = 1024;
    int j = paramArrayOfString.length;
    if (j == 0)
    {
      arrayOfString = (String[])_smileBufferRecycler.allocSeenNamesBuffer();
      paramArrayOfString = arrayOfString;
      if (arrayOfString == null) {
        paramArrayOfString = new String[64];
      }
      return paramArrayOfString;
    }
    if (j == 1024)
    {
      _seenNameCount = 0;
      return paramArrayOfString;
    }
    if (j == 64) {
      i = 256;
    }
    String[] arrayOfString = new String[i];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramArrayOfString.length);
    return arrayOfString;
  }
  
  private final void _expandSeenStringValues()
  {
    int i = 1024;
    Object localObject = _seenStringValues;
    int j = localObject.length;
    String[] arrayOfString;
    if (j == 0)
    {
      arrayOfString = (String[])_smileBufferRecycler.allocSeenStringValuesBuffer();
      localObject = arrayOfString;
      if (arrayOfString == null) {
        localObject = new String[64];
      }
    }
    for (;;)
    {
      _seenStringValues = ((String[])localObject);
      localObject = _seenStringValues;
      i = _seenStringValueCount;
      _seenStringValueCount = (i + 1);
      localObject[i] = _textBuffer.contentsAsString();
      return;
      if (j == 1024)
      {
        _seenStringValueCount = 0;
      }
      else
      {
        if (j == 64) {
          i = 256;
        }
        arrayOfString = new String[i];
        System.arraycopy(localObject, 0, arrayOfString, 0, localObject.length);
        localObject = arrayOfString;
      }
    }
  }
  
  private final Name _findDecodedFromSymbols(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputEnd - _inputPtr < paramInt) {
      _loadToHaveAtLeast(paramInt);
    }
    int k;
    byte[] arrayOfByte;
    int i;
    int j;
    if (paramInt < 5)
    {
      k = _inputPtr;
      arrayOfByte = _inputBuffer;
      i = arrayOfByte[k] & 0xFF;
      j = paramInt - 1;
      paramInt = i;
      if (j > 0)
      {
        k += 1;
        i = (i << 8) + (arrayOfByte[k] & 0xFF);
        j -= 1;
        paramInt = i;
        if (j > 0)
        {
          k += 1;
          i = (i << 8) + (arrayOfByte[k] & 0xFF);
          paramInt = i;
          if (j - 1 > 0) {
            paramInt = (i << 8) + (arrayOfByte[(k + 1)] & 0xFF);
          }
        }
      }
      _quad1 = paramInt;
      return _symbols.findName(paramInt);
    }
    if (paramInt < 9)
    {
      j = _inputPtr;
      arrayOfByte = _inputBuffer;
      i = arrayOfByte[j];
      k = j + 1;
      j = arrayOfByte[k];
      int m = k + 1;
      k = arrayOfByte[m];
      m += 1;
      j = ((((i & 0xFF) << 8) + (j & 0xFF) << 8) + (k & 0xFF) << 8) + (arrayOfByte[m] & 0xFF);
      m += 1;
      i = arrayOfByte[m] & 0xFF;
      k = paramInt - 5;
      paramInt = i;
      if (k > 0)
      {
        m += 1;
        i = (i << 8) + (arrayOfByte[m] & 0xFF);
        k -= 1;
        paramInt = i;
        if (k > 0)
        {
          m += 1;
          i = (i << 8) + (arrayOfByte[m] & 0xFF);
          paramInt = i;
          if (k - 1 > 0) {
            paramInt = (i << 8) + (arrayOfByte[(m + 1)] & 0xFF);
          }
        }
      }
      _quad1 = j;
      _quad2 = paramInt;
      return _symbols.findName(j, paramInt);
    }
    return _findDecodedMedium(paramInt);
  }
  
  private final Name _findDecodedMedium(int paramInt)
    throws IOException, JsonParseException
  {
    int i = paramInt + 3 >> 2;
    if (i > _quadBuffer.length) {
      _quadBuffer = _growArrayTo(_quadBuffer, i);
    }
    int k = 0;
    i = _inputPtr;
    Object localObject = _inputBuffer;
    int j = paramInt;
    paramInt = k;
    for (;;)
    {
      int n = i + 1;
      int m = localObject[i];
      k = n + 1;
      n = localObject[n];
      i = k + 1;
      int i1 = localObject[k];
      k = i + 1;
      int i2 = localObject[i];
      int[] arrayOfInt = _quadBuffer;
      i = paramInt + 1;
      arrayOfInt[paramInt] = ((((m & 0xFF) << 8 | n & 0xFF) << 8 | i1 & 0xFF) << 8 | i2 & 0xFF);
      j -= 4;
      if (j <= 3)
      {
        if (j > 0)
        {
          m = localObject[k] & 0xFF;
          n = j - 1;
          paramInt = m;
          if (n > 0)
          {
            k += 1;
            j = (m << 8) + (localObject[k] & 0xFF);
            paramInt = j;
            if (n - 1 > 0) {
              paramInt = (j << 8) + (localObject[(k + 1)] & 0xFF);
            }
          }
          localObject = _quadBuffer;
          j = i + 1;
          localObject[i] = paramInt;
        }
        for (paramInt = j;; paramInt = i) {
          return _symbols.findName(_quadBuffer, paramInt);
        }
      }
      paramInt = i;
      i = k;
    }
  }
  
  private final void _finishBigDecimal()
    throws IOException, JsonParseException
  {
    int i = SmileUtil.zigzagDecode(_readUnsignedVInt());
    _numberBigDecimal = new BigDecimal(new BigInteger(_read7BitBinaryWithLength()), i);
    _numTypesValid = 16;
  }
  
  private final void _finishBigInteger()
    throws IOException, JsonParseException
  {
    _numberBigInt = new BigInteger(_read7BitBinaryWithLength());
    _numTypesValid = 4;
  }
  
  private final void _finishDouble()
    throws IOException, JsonParseException
  {
    long l1 = _fourBytesToInt();
    long l2 = _fourBytesToInt();
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    long l3 = arrayOfByte[i];
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    i = _inputPtr;
    _inputPtr = (i + 1);
    _numberDouble = Double.longBitsToDouble((((l1 << 28) + l2 << 7) + l3 << 7) + arrayOfByte[i]);
    _numTypesValid = 8;
  }
  
  private final void _finishFloat()
    throws IOException, JsonParseException
  {
    int i = _fourBytesToInt();
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    _numberDouble = Float.intBitsToFloat((i << 7) + arrayOfByte[j]);
    _numTypesValid = 8;
  }
  
  private final void _finishInt()
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    int k = arrayOfByte[i];
    if (k < 0) {}
    int j;
    for (i = k & 0x3F;; i = (j << 6) + (i & 0x3F))
    {
      _numberInt = SmileUtil.zigzagDecode(i);
      _numTypesValid = 1;
      return;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      arrayOfByte = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      int m = arrayOfByte[i];
      i = m;
      j = k;
      if (m >= 0)
      {
        k = (k << 7) + m;
        if (_inputPtr >= _inputEnd) {
          loadMoreGuaranteed();
        }
        arrayOfByte = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        m = arrayOfByte[i];
        i = m;
        j = k;
        if (m >= 0)
        {
          k = (k << 7) + m;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          m = arrayOfByte[i];
          i = m;
          j = k;
          if (m >= 0)
          {
            k = (k << 7) + m;
            if (_inputPtr >= _inputEnd) {
              loadMoreGuaranteed();
            }
            arrayOfByte = _inputBuffer;
            i = _inputPtr;
            _inputPtr = (i + 1);
            m = arrayOfByte[i];
            i = m;
            j = k;
            if (m >= 0)
            {
              _reportError("Corrupt input; 32-bit VInt extends beyond 5 data bytes");
              j = k;
              i = m;
            }
          }
        }
      }
    }
  }
  
  private final void _finishLong()
    throws IOException, JsonParseException
  {
    int i;
    for (long l = _fourBytesToInt();; l = (l << 7) + i)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      byte[] arrayOfByte = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i];
      if (i < 0)
      {
        _numberLong = SmileUtil.zigzagDecode((l << 6) + (i & 0x3F));
        _numTypesValid = 2;
        return;
      }
    }
  }
  
  private final void _finishRawBinary()
    throws IOException, JsonParseException
  {
    int i = _readUnsignedVInt();
    _binaryValue = new byte[i];
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    int j = 0;
    for (;;)
    {
      int k = Math.min(i, _inputEnd - _inputPtr);
      System.arraycopy(_inputBuffer, _inputPtr, _binaryValue, j, k);
      _inputPtr += k;
      j += k;
      i -= k;
      if (i <= 0) {
        return;
      }
      loadMoreGuaranteed();
    }
  }
  
  private final int _fourBytesToInt()
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    _inputPtr = (k + 1);
    k = arrayOfByte[k];
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    return (((i << 7) + j << 7) + k << 7) + arrayOfByte[m];
  }
  
  private static int[] _growArrayTo(int[] paramArrayOfInt, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt + 4];
    if (paramArrayOfInt != null) {
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, paramArrayOfInt.length);
    }
    return arrayOfInt;
  }
  
  private final void _handleLongFieldName()
    throws IOException, JsonParseException
  {
    Object localObject = _inputBuffer;
    int k = 0;
    int j = 0;
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = localObject[i];
    label50:
    int n;
    int m;
    if (-4 == i)
    {
      i = 0;
      int i1 = k << 2;
      n = i1;
      m = k;
      if (i > 0)
      {
        if (k >= _quadBuffer.length) {
          _quadBuffer = _growArrayTo(_quadBuffer, _quadBuffer.length + 256);
        }
        _quadBuffer[k] = j;
        n = i1 + i;
        m = k + 1;
      }
      localObject = _symbols.findName(_quadBuffer, m);
      if (localObject == null) {
        break label423;
      }
    }
    label423:
    for (localObject = ((Name)localObject).getName();; localObject = _decodeLongUnicodeName(_quadBuffer, n, m).getName())
    {
      if (_seenNames != null)
      {
        if (_seenNameCount >= _seenNames.length) {
          _seenNames = _expandSeenNames(_seenNames);
        }
        String[] arrayOfString = _seenNames;
        i = _seenNameCount;
        _seenNameCount = (i + 1);
        arrayOfString[i] = localObject;
      }
      _parsingContext.setCurrentName((String)localObject);
      return;
      j = i & 0xFF;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = localObject[i];
      if (-4 == i)
      {
        i = 1;
        break label50;
      }
      j = j << 8 | i & 0xFF;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = localObject[i];
      if (-4 == i)
      {
        i = 2;
        break label50;
      }
      j = j << 8 | i & 0xFF;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = localObject[i];
      if (-4 == i)
      {
        i = 3;
        break label50;
      }
      j = j << 8 | i & 0xFF;
      if (k >= _quadBuffer.length) {
        _quadBuffer = _growArrayTo(_quadBuffer, _quadBuffer.length + 256);
      }
      _quadBuffer[k] = j;
      k += 1;
      break;
    }
  }
  
  private final JsonToken _handleSharedString(int paramInt)
    throws IOException, JsonParseException
  {
    if (paramInt >= _seenStringValueCount) {
      _reportInvalidSharedStringValue(paramInt);
    }
    _textBuffer.resetWithString(_seenStringValues[paramInt]);
    JsonToken localJsonToken = JsonToken.VALUE_STRING;
    _currToken = localJsonToken;
    return localJsonToken;
  }
  
  private final byte[] _read7BitBinaryWithLength()
    throws IOException, JsonParseException
  {
    int j = _readUnsignedVInt();
    byte[] arrayOfByte1 = new byte[j];
    int i = 0;
    byte[] arrayOfByte2;
    int k;
    int n;
    while (i <= j - 7)
    {
      if (_inputEnd - _inputPtr < 8) {
        _loadToHaveAtLeast(8);
      }
      arrayOfByte2 = _inputBuffer;
      k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfByte2[k];
      arrayOfByte2 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      n = arrayOfByte2[m];
      arrayOfByte2 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      int i1 = arrayOfByte2[m];
      arrayOfByte2 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      int i2 = arrayOfByte2[m];
      arrayOfByte2 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      m = arrayOfByte2[m];
      k = (k << 25) + (n << 18) + (i1 << 11) + (i2 << 4) + (m >> 3);
      arrayOfByte2 = _inputBuffer;
      n = _inputPtr;
      _inputPtr = (n + 1);
      n = arrayOfByte2[n];
      arrayOfByte2 = _inputBuffer;
      i1 = _inputPtr;
      _inputPtr = (i1 + 1);
      i1 = arrayOfByte2[i1];
      arrayOfByte2 = _inputBuffer;
      i2 = _inputPtr;
      _inputPtr = (i2 + 1);
      m = ((m & 0x7) << 21) + (n << 14) + (i1 << 7) + arrayOfByte2[i2];
      n = i + 1;
      arrayOfByte1[i] = ((byte)(k >> 24));
      i = n + 1;
      arrayOfByte1[n] = ((byte)(k >> 16));
      n = i + 1;
      arrayOfByte1[i] = ((byte)(k >> 8));
      i = n + 1;
      arrayOfByte1[n] = ((byte)k);
      k = i + 1;
      arrayOfByte1[i] = ((byte)(m >> 16));
      i = k + 1;
      arrayOfByte1[k] = ((byte)(m >> 8));
      arrayOfByte1[i] = ((byte)m);
      i += 1;
    }
    int m = arrayOfByte1.length - i;
    j = i;
    if (m > 0)
    {
      if (_inputEnd - _inputPtr < m + 1) {
        _loadToHaveAtLeast(m + 1);
      }
      arrayOfByte2 = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      j = arrayOfByte2[j];
      k = 1;
      while (k < m)
      {
        arrayOfByte2 = _inputBuffer;
        n = _inputPtr;
        _inputPtr = (n + 1);
        j = (j << 7) + arrayOfByte2[n];
        arrayOfByte1[i] = ((byte)(j >> 7 - k));
        k += 1;
        i += 1;
      }
      arrayOfByte2 = _inputBuffer;
      k = _inputPtr;
      _inputPtr = (k + 1);
      arrayOfByte1[i] = ((byte)(arrayOfByte2[k] + (j << m)));
      j = i;
    }
    return arrayOfByte1;
  }
  
  private final int _readUnsignedVInt()
    throws IOException, JsonParseException
  {
    int j;
    for (int i = 0;; i = (i << 7) + j)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      byte[] arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      j = arrayOfByte[j];
      if (j < 0) {
        return (i << 6) + (j & 0x3F);
      }
    }
  }
  
  protected static final SmileBufferRecycler<String> _smileBufferRecycler()
  {
    Object localObject1 = (SoftReference)_smileRecyclerRef.get();
    if (localObject1 == null) {}
    for (localObject1 = null;; localObject1 = (SmileBufferRecycler)((SoftReference)localObject1).get())
    {
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new SmileBufferRecycler();
        _smileRecyclerRef.set(new SoftReference(localObject2));
      }
      return (SmileBufferRecycler<String>)localObject2;
    }
  }
  
  protected void _closeInput()
    throws IOException
  {
    if (_inputStream != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _inputStream.close();
      }
      _inputStream = null;
    }
  }
  
  protected byte[] _decodeBase64(Base64Variant paramBase64Variant)
    throws IOException, JsonParseException
  {
    _throwInternal();
    return null;
  }
  
  protected final void _decodeShortAsciiValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputEnd - _inputPtr < paramInt) {
      _loadToHaveAtLeast(paramInt);
    }
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    byte[] arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    int j = 0;
    int i = k;
    while (i < k + paramInt)
    {
      arrayOfChar[j] = ((char)arrayOfByte[i]);
      i += 1;
      j += 1;
    }
    _inputPtr = i;
    _textBuffer.setCurrentLength(paramInt);
  }
  
  protected final void _decodeShortUnicodeValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (_inputEnd - _inputPtr < paramInt) {
      _loadToHaveAtLeast(paramInt);
    }
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    int m = _inputPtr;
    _inputPtr += paramInt;
    int[] arrayOfInt = SmileConstants.sUtf8UnitLengths;
    byte[] arrayOfByte = _inputBuffer;
    int j = m;
    int i = 0;
    if (j < m + paramInt)
    {
      int n = j + 1;
      j = arrayOfByte[j] & 0xFF;
      int k = arrayOfInt[j];
      if (k != 0) {}
      switch (k)
      {
      default: 
        _reportError("Invalid byte " + Integer.toHexString(j) + " in short Unicode text block");
        k = i;
        i = n;
      }
      for (;;)
      {
        n = k + 1;
        arrayOfChar[k] = ((char)j);
        j = i;
        i = n;
        break;
        j = (j & 0x1F) << 6 | arrayOfByte[n] & 0x3F;
        n += 1;
        k = i;
        i = n;
        continue;
        k = n + 1;
        int i1 = arrayOfByte[n];
        n = k + 1;
        j = (j & 0xF) << 12 | (i1 & 0x3F) << 6 | arrayOfByte[k] & 0x3F;
        k = i;
        i = n;
        continue;
        k = n + 1;
        i1 = arrayOfByte[n];
        n = k + 1;
        j = ((j & 0x7) << 18 | (i1 & 0x3F) << 12 | (arrayOfByte[k] & 0x3F) << 6 | arrayOfByte[n] & 0x3F) - 65536;
        k = i + 1;
        arrayOfChar[i] = ((char)(0xD800 | j >> 10));
        j = 0xDC00 | j & 0x3FF;
        i = n + 1;
      }
    }
    _textBuffer.setCurrentLength(i);
  }
  
  protected final void _finishNumberToken(int paramInt)
    throws IOException, JsonParseException
  {
    paramInt &= 0x1F;
    int i = paramInt >> 2;
    if (i == 1)
    {
      paramInt &= 0x3;
      if (paramInt == 0)
      {
        _finishInt();
        return;
      }
      if (paramInt == 1)
      {
        _finishLong();
        return;
      }
      if (paramInt == 2)
      {
        _finishBigInteger();
        return;
      }
      _throwInternal();
      return;
    }
    if (i == 2) {}
    switch (paramInt & 0x3)
    {
    default: 
      _throwInternal();
      return;
    case 0: 
      _finishFloat();
      return;
    case 1: 
      _finishDouble();
      return;
    }
    _finishBigDecimal();
  }
  
  protected void _finishString()
    throws IOException, JsonParseException
  {
    _throwInternal();
  }
  
  protected void _finishToken()
    throws IOException, JsonParseException
  {
    _tokenIncomplete = false;
    int i = _typeByte;
    int j = i >> 5 & 0x7;
    if (j == 1)
    {
      _finishNumberToken(i);
      return;
    }
    if (j <= 3)
    {
      _decodeShortAsciiValue((i & 0x3F) + 1);
      return;
    }
    if (j <= 5)
    {
      _decodeShortUnicodeValue((i & 0x3F) + 2);
      return;
    }
    if (j == 7) {}
    switch ((i & 0x1F) >> 2)
    {
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    default: 
      _throwInternal();
      return;
    case 0: 
      _decodeLongAscii();
      return;
    case 1: 
      _decodeLongUnicode();
      return;
    case 2: 
      _binaryValue = _read7BitBinaryWithLength();
      return;
    }
    _finishRawBinary();
  }
  
  protected final JsonToken _handleFieldName()
    throws IOException, JsonParseException
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    Object localObject = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = localObject[i];
    _typeByte = i;
    switch (i >> 6 & 0x3)
    {
    }
    String[] arrayOfString;
    do
    {
      for (;;)
      {
        _reportError("Invalid type marker byte 0x" + Integer.toHexString(_typeByte) + " for expected field name (or END_OBJECT marker)");
        return null;
        switch (i)
        {
        }
      }
      _parsingContext.setCurrentName("");
      return JsonToken.FIELD_NAME;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      localObject = _inputBuffer;
      int j = _inputPtr;
      _inputPtr = (j + 1);
      i = ((i & 0x3) << 8) + (localObject[j] & 0xFF);
      if (i >= _seenNameCount) {
        _reportInvalidSharedName(i);
      }
      _parsingContext.setCurrentName(_seenNames[i]);
      return JsonToken.FIELD_NAME;
      _handleLongFieldName();
      return JsonToken.FIELD_NAME;
      i &= 0x3F;
      if (i >= _seenNameCount) {
        _reportInvalidSharedName(i);
      }
      _parsingContext.setCurrentName(_seenNames[i]);
      return JsonToken.FIELD_NAME;
      i = (i & 0x3F) + 1;
      localObject = _findDecodedFromSymbols(i);
      if (localObject != null)
      {
        localObject = ((Name)localObject).getName();
        _inputPtr += i;
      }
      for (;;)
      {
        if (_seenNames != null)
        {
          if (_seenNameCount >= _seenNames.length) {
            _seenNames = _expandSeenNames(_seenNames);
          }
          arrayOfString = _seenNames;
          i = _seenNameCount;
          _seenNameCount = (i + 1);
          arrayOfString[i] = localObject;
        }
        _parsingContext.setCurrentName((String)localObject);
        return JsonToken.FIELD_NAME;
        localObject = _addDecodedToSymbols(i, _decodeShortAsciiName(i));
      }
      i &= 0x3F;
      if (i <= 55) {
        break;
      }
    } while (i != 59);
    if (!_parsingContext.inObject()) {
      _reportMismatchedEndMarker(125, ']');
    }
    _parsingContext = _parsingContext.getParent();
    return JsonToken.END_OBJECT;
    i += 2;
    localObject = _findDecodedFromSymbols(i);
    if (localObject != null)
    {
      localObject = ((Name)localObject).getName();
      _inputPtr += i;
    }
    for (;;)
    {
      if (_seenNames != null)
      {
        if (_seenNameCount >= _seenNames.length) {
          _seenNames = _expandSeenNames(_seenNames);
        }
        arrayOfString = _seenNames;
        i = _seenNameCount;
        _seenNameCount = (i + 1);
        arrayOfString[i] = localObject;
      }
      _parsingContext.setCurrentName((String)localObject);
      return JsonToken.FIELD_NAME;
      localObject = _addDecodedToSymbols(i, _decodeShortUnicodeName(i));
    }
  }
  
  protected final boolean _loadToHaveAtLeast(int paramInt)
    throws IOException
  {
    if (_inputStream == null) {
      return false;
    }
    int i = _inputEnd - _inputPtr;
    if ((i > 0) && (_inputPtr > 0))
    {
      _currInputProcessed += _inputPtr;
      System.arraycopy(_inputBuffer, _inputPtr, _inputBuffer, 0, i);
      _inputEnd = i;
      label66:
      _inputPtr = 0;
    }
    for (;;)
    {
      if (_inputEnd >= paramInt) {
        break label173;
      }
      int j = _inputStream.read(_inputBuffer, _inputEnd, _inputBuffer.length - _inputEnd);
      if (j < 1)
      {
        _closeInput();
        if (j != 0) {
          break;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + i + " bytes");
        _inputEnd = 0;
        break label66;
      }
      _inputEnd += j;
    }
    label173:
    return true;
  }
  
  protected void _parseNumericValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (_tokenIncomplete)
    {
      paramInt = _typeByte;
      if ((paramInt >> 5 & 0x7) != 1) {
        _reportError("Current token (" + _currToken + ") not numeric, can not use numeric value accessors");
      }
      _tokenIncomplete = false;
      _finishNumberToken(paramInt);
    }
  }
  
  protected void _releaseBuffers()
    throws IOException
  {
    super._releaseBuffers();
    if (_bufferRecyclable)
    {
      localObject = _inputBuffer;
      if (localObject != null)
      {
        _inputBuffer = null;
        _ioContext.releaseReadIOBuffer((byte[])localObject);
      }
    }
    Object localObject = _seenNames;
    if ((localObject != null) && (localObject.length > 0))
    {
      _seenNames = null;
      if (_seenNameCount > 0) {
        Arrays.fill((Object[])localObject, 0, _seenNameCount, null);
      }
      _smileBufferRecycler.releaseSeenNamesBuffer((Object[])localObject);
    }
    localObject = _seenStringValues;
    if ((localObject != null) && (localObject.length > 0))
    {
      _seenStringValues = null;
      if (_seenStringValueCount > 0) {
        Arrays.fill((Object[])localObject, 0, _seenStringValueCount, null);
      }
      _smileBufferRecycler.releaseSeenStringValuesBuffer((Object[])localObject);
    }
  }
  
  protected void _reportInvalidChar(int paramInt)
    throws JsonParseException
  {
    if (paramInt < 32) {
      _throwInvalidSpace(paramInt);
    }
    _reportInvalidInitial(paramInt);
  }
  
  protected void _reportInvalidInitial(int paramInt)
    throws JsonParseException
  {
    _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt)
    throws JsonParseException
  {
    _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt1, int paramInt2)
    throws JsonParseException
  {
    _inputPtr = paramInt2;
    _reportInvalidOther(paramInt1);
  }
  
  protected void _reportInvalidSharedName(int paramInt)
    throws IOException
  {
    if (_seenNames == null) {
      _reportError("Encountered shared name reference, even though document header explicitly declared no shared name references are included");
    }
    _reportError("Invalid shared name reference " + paramInt + "; only got " + _seenNameCount + " names in buffer (invalid content)");
  }
  
  protected void _reportInvalidSharedStringValue(int paramInt)
    throws IOException
  {
    if (_seenStringValues == null) {
      _reportError("Encountered shared text value reference, even though document header did not declared shared text value references may be included");
    }
    _reportError("Invalid shared text value reference " + paramInt + "; only got " + _seenStringValueCount + " names in buffer (invalid content)");
  }
  
  protected void _skip7BitBinary()
    throws IOException, JsonParseException
  {
    int i = _readUnsignedVInt();
    int k = i / 7;
    int j = k * 8;
    k = i - k * 7;
    i = j;
    if (k > 0) {
      i = j + (k + 1);
    }
    _skipBytes(i);
  }
  
  protected void _skipBytes(int paramInt)
    throws IOException, JsonParseException
  {
    for (;;)
    {
      int i = Math.min(paramInt, _inputEnd - _inputPtr);
      _inputPtr += i;
      paramInt -= i;
      if (paramInt <= 0) {
        return;
      }
      loadMoreGuaranteed();
    }
  }
  
  protected void _skipIncomplete()
    throws IOException, JsonParseException
  {
    _tokenIncomplete = false;
    int i = _typeByte;
    switch (i >> 5 & 0x7)
    {
    }
    byte[] arrayOfByte;
    int j;
    for (;;)
    {
      _throwInternal();
      return;
      i &= 0x1F;
      switch (i >> 2)
      {
      default: 
        break;
      case 1: 
        switch (i & 0x3)
        {
        default: 
          break;
        case 0: 
        case 1: 
          for (;;)
          {
            i = _inputEnd;
            arrayOfByte = _inputBuffer;
            for (;;)
            {
              if (_inputPtr < i)
              {
                j = _inputPtr;
                _inputPtr = (j + 1);
                if (arrayOfByte[j] < 0)
                {
                  return;
                  _skipBytes(4);
                  break;
                }
              }
            }
            loadMoreGuaranteed();
          }
        case 2: 
          _skip7BitBinary();
          return;
        }
        break;
      case 2: 
        switch (i & 0x3)
        {
        default: 
          break;
        case 0: 
          _skipBytes(5);
          return;
        case 1: 
          _skipBytes(10);
          return;
        case 2: 
          _readUnsignedVInt();
          _skip7BitBinary();
          return;
          _skipBytes((i & 0x3F) + 1);
          return;
          _skipBytes((i & 0x3F) + 2);
          return;
          switch ((i & 0x1F) >> 2)
          {
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      i = _inputEnd;
      arrayOfByte = _inputBuffer;
      while (_inputPtr < i)
      {
        j = _inputPtr;
        _inputPtr = (j + 1);
        if (arrayOfByte[j] == -4) {
          return;
        }
      }
      loadMoreGuaranteed();
    }
    _skip7BitBinary();
    return;
    _skipBytes(_readUnsignedVInt());
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
    if (_tokenIncomplete) {
      _finishToken();
    }
    if (_currToken != JsonToken.VALUE_EMBEDDED_OBJECT) {
      _reportError("Current token (" + _currToken + ") not VALUE_EMBEDDED_OBJECT, can not access as binary");
    }
    return _binaryValue;
  }
  
  public ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public JsonLocation getCurrentLocation()
  {
    long l = _currInputProcessed + _inputPtr;
    return new JsonLocation(_ioContext.getSourceReference(), l, -1L, -1, (int)l);
  }
  
  public String getCurrentName()
    throws IOException, JsonParseException
  {
    return _parsingContext.getCurrentName();
  }
  
  public Object getEmbeddedObject()
    throws IOException, JsonParseException
  {
    if (_tokenIncomplete) {
      _finishToken();
    }
    if (_currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
      return _binaryValue;
    }
    return super.getEmbeddedObject();
  }
  
  public Object getInputSource()
  {
    return _inputStream;
  }
  
  public JsonParser.NumberType getNumberType()
    throws IOException, JsonParseException
  {
    if (_got32BitFloat) {
      return JsonParser.NumberType.FLOAT;
    }
    return super.getNumberType();
  }
  
  public String getText()
    throws IOException, JsonParseException
  {
    if (_tokenIncomplete)
    {
      _tokenIncomplete = false;
      int i = _typeByte;
      int j = i >> 5 & 0x7;
      if ((j == 2) || (j == 3))
      {
        _decodeShortAsciiValue((i & 0x3F) + 1);
        return _textBuffer.contentsAsString();
      }
      if ((j == 4) || (j == 5))
      {
        _decodeShortUnicodeValue((i & 0x3F) + 2);
        return _textBuffer.contentsAsString();
      }
      _finishToken();
    }
    if (_currToken == JsonToken.VALUE_STRING) {
      return _textBuffer.contentsAsString();
    }
    JsonToken localJsonToken = _currToken;
    if (localJsonToken == null) {
      return null;
    }
    if (localJsonToken == JsonToken.FIELD_NAME) {
      return _parsingContext.getCurrentName();
    }
    if (localJsonToken.isNumeric()) {
      return getNumberValue().toString();
    }
    return _currToken.asString();
  }
  
  public char[] getTextCharacters()
    throws IOException, JsonParseException
  {
    if (_currToken != null)
    {
      if (_tokenIncomplete) {
        _finishToken();
      }
      switch (_currToken)
      {
      default: 
        return _currToken.asCharArray();
      case ???: 
        return _textBuffer.getTextBuffer();
      case ???: 
        String str;
        int i;
        if (!_nameCopied)
        {
          str = _parsingContext.getCurrentName();
          i = str.length();
          if (_nameCopyBuffer != null) {
            break label136;
          }
          _nameCopyBuffer = _ioContext.allocNameCopyBuffer(i);
        }
        for (;;)
        {
          str.getChars(0, i, _nameCopyBuffer, 0);
          _nameCopied = true;
          return _nameCopyBuffer;
          label136:
          if (_nameCopyBuffer.length < i) {
            _nameCopyBuffer = new char[i];
          }
        }
      }
      return getNumberValue().toString().toCharArray();
    }
    return null;
  }
  
  public int getTextLength()
    throws IOException, JsonParseException
  {
    if (_currToken != null)
    {
      if (_tokenIncomplete) {
        _finishToken();
      }
      switch (_currToken)
      {
      default: 
        return _currToken.asCharArray().length;
      case ???: 
        return _textBuffer.size();
      case ???: 
        return _parsingContext.getCurrentName().length();
      }
      return getNumberValue().toString().length();
    }
    return 0;
  }
  
  public int getTextOffset()
    throws IOException, JsonParseException
  {
    return 0;
  }
  
  public JsonLocation getTokenLocation()
  {
    return new JsonLocation(_ioContext.getSourceReference(), _tokenInputTotal, -1L, -1, -1);
  }
  
  protected boolean handleSignature(boolean paramBoolean1, boolean paramBoolean2)
    throws IOException, JsonParseException
  {
    boolean bool = false;
    if (paramBoolean1) {
      _inputPtr += 1;
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    if (_inputBuffer[_inputPtr] != 41) {
      if (paramBoolean2) {
        _reportError("Malformed content: signature not valid, starts with 0x3a but followed by 0x" + Integer.toHexString(_inputBuffer[_inputPtr]) + ", not 0x29");
      }
    }
    do
    {
      return false;
      i = _inputPtr + 1;
      _inputPtr = i;
      if (i >= _inputEnd) {
        loadMoreGuaranteed();
      }
      if (_inputBuffer[_inputPtr] == 10) {
        break;
      }
    } while (!paramBoolean2);
    _reportError("Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x" + Integer.toHexString(_inputBuffer[_inputPtr]) + ", not 0xA");
    return false;
    int i = _inputPtr + 1;
    _inputPtr = i;
    if (i >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    int j = i >> 4 & 0xF;
    if (j != 0) {
      _reportError("Header version number bits (0x" + Integer.toHexString(j) + ") indicate unrecognized version; only 0x0 handled by parser");
    }
    if ((i & 0x1) == 0)
    {
      _seenNames = null;
      _seenNameCount = -1;
    }
    if ((i & 0x2) != 0)
    {
      _seenStringValues = NO_STRINGS;
      _seenStringValueCount = 0;
    }
    paramBoolean1 = bool;
    if ((i & 0x4) != 0) {
      paramBoolean1 = true;
    }
    _mayContainRawBinary = paramBoolean1;
    return true;
  }
  
  public boolean hasTextCharacters()
  {
    if (_currToken == JsonToken.VALUE_STRING) {
      return _textBuffer.hasTextAsCharacters();
    }
    if (_currToken == JsonToken.FIELD_NAME) {
      return _nameCopied;
    }
    return false;
  }
  
  protected final boolean loadMore()
    throws IOException
  {
    boolean bool2 = false;
    _currInputProcessed += _inputEnd;
    boolean bool1 = bool2;
    int i;
    if (_inputStream != null)
    {
      i = _inputStream.read(_inputBuffer, 0, _inputBuffer.length);
      if (i <= 0) {
        break label61;
      }
      _inputPtr = 0;
      _inputEnd = i;
      bool1 = true;
    }
    label61:
    do
    {
      return bool1;
      _closeInput();
      bool1 = bool2;
    } while (i != 0);
    throw new IOException("InputStream.read() returned 0 characters when trying to read " + _inputBuffer.length + " bytes");
  }
  
  public boolean mayContainRawBinary()
  {
    return _mayContainRawBinary;
  }
  
  public Boolean nextBooleanValue()
    throws IOException, JsonParseException
  {
    switch (nextToken())
    {
    default: 
      return null;
    case ???: 
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
  
  public boolean nextFieldName(SerializableString paramSerializableString)
    throws IOException, JsonParseException
  {
    if ((_parsingContext.inObject()) && (_currToken != JsonToken.FIELD_NAME))
    {
      Object localObject = paramSerializableString.asQuotedUTF8();
      int i = localObject.length;
      int k;
      int j;
      if (_inputPtr + i + 1 < _inputEnd)
      {
        k = _inputPtr;
        byte[] arrayOfByte = _inputBuffer;
        j = k + 1;
        k = arrayOfByte[k];
        _typeByte = k;
        switch (k >> 6 & 0x3)
        {
        }
      }
      label445:
      do
      {
        do
        {
          do
          {
            for (;;)
            {
              localObject = _handleFieldName();
              _currToken = ((JsonToken)localObject);
              if ((localObject != JsonToken.FIELD_NAME) || (!paramSerializableString.getValue().equals(_parsingContext.getCurrentName()))) {
                break;
              }
              return true;
              switch (k)
              {
              }
            }
            _currToken = JsonToken.FIELD_NAME;
            _inputPtr = j;
            _parsingContext.setCurrentName("");
            return i == 0;
            i = ((k & 0x3) << 8) + (_inputBuffer[j] & 0xFF);
            if (i >= _seenNameCount) {
              _reportInvalidSharedName(i);
            }
            localObject = _seenNames[i];
            _parsingContext.setCurrentName((String)localObject);
            _inputPtr = (j + 1);
            _currToken = JsonToken.FIELD_NAME;
            return ((String)localObject).equals(paramSerializableString.getValue());
            i = k & 0x3F;
            if (i >= _seenNameCount) {
              _reportInvalidSharedName(i);
            }
            _parsingContext.setCurrentName(_seenNames[i]);
            localObject = _seenNames[i];
            _parsingContext.setCurrentName((String)localObject);
            _inputPtr = j;
            _currToken = JsonToken.FIELD_NAME;
            return ((String)localObject).equals(paramSerializableString.getValue());
            k = (k & 0x3F) + 1;
          } while (k != i);
          i = 0;
          for (;;)
          {
            if (i >= k) {
              break label445;
            }
            if (localObject[i] != _inputBuffer[(j + i)]) {
              break;
            }
            i += 1;
          }
          _inputPtr = (j + k);
          paramSerializableString = paramSerializableString.getValue();
          if (_seenNames != null)
          {
            if (_seenNameCount >= _seenNames.length) {
              _seenNames = _expandSeenNames(_seenNames);
            }
            localObject = _seenNames;
            i = _seenNameCount;
            _seenNameCount = (i + 1);
            localObject[i] = paramSerializableString;
          }
          _parsingContext.setCurrentName(paramSerializableString);
          _currToken = JsonToken.FIELD_NAME;
          return true;
          k &= 0x3F;
          if (k <= 55) {
            break;
          }
        } while (k != 59);
        _currToken = JsonToken.END_OBJECT;
        if (!_parsingContext.inObject()) {
          _reportMismatchedEndMarker(125, ']');
        }
        _inputPtr = j;
        _parsingContext = _parsingContext.getParent();
        return false;
        k += 2;
      } while (k != i);
      i = 0;
      for (;;)
      {
        if (i >= k) {
          break label647;
        }
        if (localObject[i] != _inputBuffer[(j + i)]) {
          break;
        }
        i += 1;
      }
      label647:
      _inputPtr = (j + k);
      paramSerializableString = paramSerializableString.getValue();
      if (_seenNames != null)
      {
        if (_seenNameCount >= _seenNames.length) {
          _seenNames = _expandSeenNames(_seenNames);
        }
        localObject = _seenNames;
        i = _seenNameCount;
        _seenNameCount = (i + 1);
        localObject[i] = paramSerializableString;
      }
      _parsingContext.setCurrentName(paramSerializableString);
      _currToken = JsonToken.FIELD_NAME;
      return true;
      return false;
    }
    return (nextToken() == JsonToken.FIELD_NAME) && (paramSerializableString.getValue().equals(getCurrentName()));
  }
  
  public int nextIntValue(int paramInt)
    throws IOException, JsonParseException
  {
    if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
      paramInt = getIntValue();
    }
    return paramInt;
  }
  
  public long nextLongValue(long paramLong)
    throws IOException, JsonParseException
  {
    if (nextToken() == JsonToken.VALUE_NUMBER_INT) {
      paramLong = getLongValue();
    }
    return paramLong;
  }
  
  public String nextTextValue()
    throws IOException, JsonParseException
  {
    String str = null;
    int j;
    int i;
    Object localObject;
    if ((!_parsingContext.inObject()) || (_currToken == JsonToken.FIELD_NAME))
    {
      if (_tokenIncomplete) {
        _skipIncomplete();
      }
      j = _inputPtr;
      i = j;
      if (j >= _inputEnd)
      {
        if (!loadMore())
        {
          _handleEOF();
          close();
          _currToken = null;
          return null;
        }
        i = _inputPtr;
      }
      localObject = _inputBuffer;
      j = i + 1;
      i = localObject[i];
      _tokenInputTotal = (_currInputProcessed + _inputPtr);
      _binaryValue = null;
      _typeByte = i;
    }
    switch (i >> 5 & 0x7)
    {
    case 6: 
    default: 
    case 0: 
    case 1: 
      do
      {
        if (nextToken() == JsonToken.VALUE_STRING) {
          str = getText();
        }
        return str;
        if (i == 0) {
          _reportError("Invalid token byte 0x00");
        }
        i -= 1;
        if (i >= _seenStringValueCount) {
          _reportInvalidSharedStringValue(i);
        }
        _inputPtr = j;
        str = _seenStringValues[i];
        _textBuffer.resetWithString(str);
        _currToken = JsonToken.VALUE_STRING;
        return str;
      } while ((i & 0x1F) != 0);
      _inputPtr = j;
      _textBuffer.resetWithEmpty();
      _currToken = JsonToken.VALUE_STRING;
      return "";
    case 2: 
    case 3: 
      _currToken = JsonToken.VALUE_STRING;
      _inputPtr = j;
      _decodeShortAsciiValue((i & 0x3F) + 1);
      if (_seenStringValueCount >= 0)
      {
        if (_seenStringValueCount < _seenStringValues.length)
        {
          str = _textBuffer.contentsAsString();
          localObject = _seenStringValues;
          i = _seenStringValueCount;
          _seenStringValueCount = (i + 1);
          localObject[i] = str;
          return str;
        }
        _expandSeenStringValues();
        return _textBuffer.contentsAsString();
      }
      return _textBuffer.contentsAsString();
    }
    _currToken = JsonToken.VALUE_STRING;
    _inputPtr = j;
    _decodeShortUnicodeValue((i & 0x3F) + 2);
    if (_seenStringValueCount >= 0)
    {
      if (_seenStringValueCount < _seenStringValues.length)
      {
        str = _textBuffer.contentsAsString();
        localObject = _seenStringValues;
        i = _seenStringValueCount;
        _seenStringValueCount = (i + 1);
        localObject[i] = str;
        return str;
      }
      _expandSeenStringValues();
      return _textBuffer.contentsAsString();
    }
    return _textBuffer.contentsAsString();
  }
  
  public JsonToken nextToken()
    throws IOException, JsonParseException
  {
    boolean bool = true;
    _numTypesValid = 0;
    if (_tokenIncomplete) {
      _skipIncomplete();
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr);
    _binaryValue = null;
    if ((_parsingContext.inObject()) && (_currToken != JsonToken.FIELD_NAME))
    {
      localObject = _handleFieldName();
      _currToken = ((JsonToken)localObject);
      return (JsonToken)localObject;
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore()))
    {
      _handleEOF();
      close();
      _currToken = null;
      return null;
    }
    Object localObject = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = localObject[i];
    _typeByte = i;
    switch (i >> 5 & 0x7)
    {
    }
    for (;;)
    {
      _reportError("Invalid type marker byte 0x" + Integer.toHexString(i & 0xFF) + " for expected value token");
      return null;
      if (i == 0) {
        _reportError("Invalid token byte 0x00");
      }
      return _handleSharedString(i - 1);
      j = i & 0x1F;
      if (j < 4)
      {
        switch (j)
        {
        default: 
          localObject = JsonToken.VALUE_TRUE;
          _currToken = ((JsonToken)localObject);
          return (JsonToken)localObject;
        case 0: 
          _textBuffer.resetWithEmpty();
          localObject = JsonToken.VALUE_STRING;
          _currToken = ((JsonToken)localObject);
          return (JsonToken)localObject;
        case 1: 
          localObject = JsonToken.VALUE_NULL;
          _currToken = ((JsonToken)localObject);
          return (JsonToken)localObject;
        }
        localObject = JsonToken.VALUE_FALSE;
        _currToken = ((JsonToken)localObject);
        return (JsonToken)localObject;
      }
      if (j < 8)
      {
        if ((j & 0x3) <= 2)
        {
          _tokenIncomplete = true;
          _numTypesValid = 0;
          localObject = JsonToken.VALUE_NUMBER_INT;
          _currToken = ((JsonToken)localObject);
          return (JsonToken)localObject;
        }
      }
      else if (j < 12)
      {
        j &= 0x3;
        if (j <= 2)
        {
          _tokenIncomplete = true;
          _numTypesValid = 0;
          if (j == 0) {}
          for (;;)
          {
            _got32BitFloat = bool;
            localObject = JsonToken.VALUE_NUMBER_FLOAT;
            _currToken = ((JsonToken)localObject);
            return (JsonToken)localObject;
            bool = false;
          }
        }
      }
      else
      {
        if ((j == 26) && (handleSignature(false, false)))
        {
          if (_currToken == null) {
            return nextToken();
          }
          _currToken = null;
          return null;
        }
        _reportError("Unrecognized token byte 0x3A (malformed segment header?");
        continue;
        _currToken = JsonToken.VALUE_STRING;
        if (_seenStringValueCount >= 0) {
          _addSeenStringValue();
        }
        for (;;)
        {
          return _currToken;
          _tokenIncomplete = true;
        }
        _numberInt = SmileUtil.zigzagDecode(i & 0x1F);
        _numTypesValid = 1;
        localObject = JsonToken.VALUE_NUMBER_INT;
        _currToken = ((JsonToken)localObject);
        return (JsonToken)localObject;
        switch (i & 0x1F)
        {
        }
      }
    }
    _tokenIncomplete = true;
    localObject = JsonToken.VALUE_STRING;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    _tokenIncomplete = true;
    localObject = JsonToken.VALUE_EMBEDDED_OBJECT;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    localObject = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    return _handleSharedString(((i & 0x3) << 8) + (localObject[j] & 0xFF));
    _parsingContext = _parsingContext.createChildArrayContext(-1, -1);
    localObject = JsonToken.START_ARRAY;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    if (!_parsingContext.inArray()) {
      _reportMismatchedEndMarker(93, '}');
    }
    _parsingContext = _parsingContext.getParent();
    localObject = JsonToken.END_ARRAY;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    _parsingContext = _parsingContext.createChildObjectContext(-1, -1);
    localObject = JsonToken.START_OBJECT;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    _reportError("Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)");
    _tokenIncomplete = true;
    localObject = JsonToken.VALUE_EMBEDDED_OBJECT;
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
    _currToken = null;
    return null;
  }
  
  public int releaseBuffered(OutputStream paramOutputStream)
    throws IOException
  {
    int i = _inputEnd - _inputPtr;
    if (i < 1) {
      return 0;
    }
    int j = _inputPtr;
    paramOutputStream.write(_inputBuffer, j, i);
    return i;
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
  
  public static enum Feature
  {
    REQUIRE_HEADER(true);
    
    final boolean _defaultState;
    final int _mask;
    
    private Feature(boolean paramBoolean)
    {
      _defaultState = paramBoolean;
      _mask = (1 << ordinal());
    }
    
    public static int collectDefaults()
    {
      int j = 0;
      Feature[] arrayOfFeature = values();
      int m = arrayOfFeature.length;
      int i = 0;
      while (i < m)
      {
        Feature localFeature = arrayOfFeature[i];
        int k = j;
        if (localFeature.enabledByDefault()) {
          k = j | localFeature.getMask();
        }
        i += 1;
        j = k;
      }
      return j;
    }
    
    public boolean enabledByDefault()
    {
      return _defaultState;
    }
    
    public int getMask()
    {
      return _mask;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */