package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;

public final class QRCode
{
  public static final int NUM_MASK_PATTERNS = 8;
  private ErrorCorrectionLevel ecLevel;
  private int maskPattern = -1;
  private ByteMatrix matrix;
  private Mode mode;
  private Version version;
  
  public static boolean isValidMaskPattern(int paramInt)
  {
    return (paramInt >= 0) && (paramInt < 8);
  }
  
  public ErrorCorrectionLevel getECLevel()
  {
    return ecLevel;
  }
  
  public int getMaskPattern()
  {
    return maskPattern;
  }
  
  public ByteMatrix getMatrix()
  {
    return matrix;
  }
  
  public Mode getMode()
  {
    return mode;
  }
  
  public Version getVersion()
  {
    return version;
  }
  
  public void setECLevel(ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    ecLevel = paramErrorCorrectionLevel;
  }
  
  public void setMaskPattern(int paramInt)
  {
    maskPattern = paramInt;
  }
  
  public void setMatrix(ByteMatrix paramByteMatrix)
  {
    matrix = paramByteMatrix;
  }
  
  public void setMode(Mode paramMode)
  {
    mode = paramMode;
  }
  
  public void setVersion(Version paramVersion)
  {
    version = paramVersion;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(200);
    localStringBuilder.append("<<\n");
    localStringBuilder.append(" mode: ");
    localStringBuilder.append(mode);
    localStringBuilder.append("\n ecLevel: ");
    localStringBuilder.append(ecLevel);
    localStringBuilder.append("\n version: ");
    localStringBuilder.append(version);
    localStringBuilder.append("\n maskPattern: ");
    localStringBuilder.append(maskPattern);
    if (matrix == null) {
      localStringBuilder.append("\n matrix: null\n");
    }
    for (;;)
    {
      localStringBuilder.append(">>\n");
      return localStringBuilder.toString();
      localStringBuilder.append("\n matrix:\n");
      localStringBuilder.append(matrix.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.encoder.QRCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */