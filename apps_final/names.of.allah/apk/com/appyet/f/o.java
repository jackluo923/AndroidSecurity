package com.appyet.f;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public final class o
{
  Cipher a;
  Cipher b;
  byte[] c = { -87, -101, -56, 50, 86, 53, -29, 3 };
  int d = 19;
  
  public o(String paramString)
  {
    try
    {
      paramString = new PBEKeySpec(paramString.toCharArray(), c, d);
      paramString = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(paramString);
      a = Cipher.getInstance(paramString.getAlgorithm());
      b = Cipher.getInstance(paramString.getAlgorithm());
      PBEParameterSpec localPBEParameterSpec = new PBEParameterSpec(c, d);
      a.init(1, paramString, localPBEParameterSpec);
      b.init(2, paramString, localPBEParameterSpec);
      return;
    }
    catch (InvalidKeyException paramString) {}catch (NoSuchAlgorithmException paramString) {}catch (NoSuchPaddingException paramString) {}catch (InvalidKeySpecException paramString) {}catch (InvalidAlgorithmParameterException paramString) {}
  }
  
  public final String a(String paramString)
  {
    try
    {
      paramString = j.a(paramString);
      paramString = new String(b.doFinal(paramString), "UTF8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      return null;
    }
    catch (IllegalBlockSizeException paramString)
    {
      for (;;) {}
    }
    catch (BadPaddingException paramString)
    {
      for (;;) {}
    }
  }
  
  public final String b(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF8");
      paramString = j.a(a.doFinal(paramString));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      return null;
    }
    catch (IllegalBlockSizeException paramString)
    {
      for (;;) {}
    }
    catch (BadPaddingException paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */