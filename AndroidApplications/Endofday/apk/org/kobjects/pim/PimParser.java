package org.kobjects.pim;

import java.io.IOException;
import java.io.PrintStream;
import java.io.Reader;
import java.util.Vector;
import org.kobjects.io.LookAheadReader;

public class PimParser
{
  LookAheadReader reader;
  Class type;
  
  public PimParser(Reader paramReader, Class paramClass)
  {
    LookAheadReader localLookAheadReader = new org/kobjects/io/LookAheadReader;
    localLookAheadReader.<init>(paramReader);
    reader = localLookAheadReader;
    type = paramClass;
  }
  
  String[] readArrayValue(int paramInt)
    throws IOException
  {
    int i3 = 0;
    Vector localVector = new java/util/Vector;
    localVector.<init>();
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int j = 1;
    String[] arrayOfString;
    for (;;)
    {
      Object localObject1 = reader;
      String str2 = ";\n\r";
      localObject1 = ((LookAheadReader)localObject1).readTo(str2);
      localStringBuffer.append((String)localObject1);
      localObject1 = reader;
      int k = ((LookAheadReader)localObject1).read();
      switch (k)
      {
      }
      while (j == 0)
      {
        k = localStringBuffer.length();
        if (k != 0)
        {
          String str1 = localStringBuffer.toString();
          localVector.addElement(str1);
        }
        arrayOfString = new String[paramInt];
        int i = 0;
        for (;;)
        {
          int m = arrayOfString.length;
          i2 = localVector.size();
          m = Math.min(m, i2);
          if (i >= m) {
            break;
          }
          this = localVector.elementAt(i);
          this = (String)this;
          arrayOfString[i] = this;
          i += 1;
        }
        Object localObject2 = localStringBuffer.toString();
        localVector.addElement(localObject2);
        localStringBuffer.setLength(i3);
        continue;
        localObject2 = reader;
        int n = ((LookAheadReader)localObject2).peek(i3);
        int i2 = 10;
        if (n == i2)
        {
          localLookAheadReader1 = reader;
          localLookAheadReader1.read();
        }
        LookAheadReader localLookAheadReader1 = reader;
        int i1 = localLookAheadReader1.peek(i3);
        i2 = 32;
        if (i1 != i2)
        {
          j = 0;
        }
        else
        {
          LookAheadReader localLookAheadReader2 = reader;
          localLookAheadReader2.read();
        }
      }
    }
    return arrayOfString;
  }
  
  public PimItem readItem()
    throws IOException
  {
    String str1 = readName();
    if (str1 == null)
    {
      localObject3 = null;
      return (PimItem)localObject3;
    }
    Object localObject3 = "begin";
    boolean bool1 = str1.equals(localObject3);
    Object localObject4;
    Object localObject7;
    if (!bool1)
    {
      localObject4 = new java/lang/RuntimeException;
      localObject7 = "'begin:' expected";
      ((RuntimeException)localObject4).<init>((String)localObject7);
      throw ((Throwable)localObject4);
    }
    Object localObject1;
    try
    {
      localObject4 = type;
      localObject1 = ((Class)localObject4).newInstance();
      localObject1 = (PimItem)localObject1;
      localObject4 = reader;
      ((LookAheadReader)localObject4).read();
      localObject4 = ((PimItem)localObject1).getType();
      localObject7 = readStringValue();
      localObject7 = ((String)localObject7).toLowerCase();
      boolean bool2 = ((String)localObject4).equals(localObject7);
      if (bool2) {
        break label243;
      }
      RuntimeException localRuntimeException1 = new java/lang/RuntimeException;
      localObject7 = "item types do not match!";
      localRuntimeException1.<init>((String)localObject7);
      throw localRuntimeException1;
    }
    catch (Exception localException2)
    {
      Exception localException1 = localException2;
      RuntimeException localRuntimeException2 = new java/lang/RuntimeException;
      localObject7 = localException1.toString();
      localRuntimeException2.<init>((String)localObject7);
      throw localRuntimeException2;
    }
    String str2;
    int i = ((PimItem)localObject1).getArraySize(str2);
    for (Object localObject2 = readArrayValue(i);; localObject2 = readStringValue())
    {
      localPimField.setValue(localObject2);
      Object localObject5 = System.out;
      localObject7 = new java/lang/StringBuilder;
      ((StringBuilder)localObject7).<init>();
      String str3 = "value:";
      localObject7 = ((StringBuilder)localObject7).append(str3);
      localObject7 = ((StringBuilder)localObject7).append(localObject2);
      localObject7 = ((StringBuilder)localObject7).toString();
      ((PrintStream)localObject5).println((String)localObject7);
      ((PimItem)localObject1).addField(localPimField);
      label243:
      str2 = readName();
      localObject5 = "end";
      boolean bool3 = str2.equals(localObject5);
      if (bool3)
      {
        Object localObject6 = reader;
        ((LookAheadReader)localObject6).read();
        localObject6 = System.out;
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        str3 = "end:";
        localObject7 = ((StringBuilder)localObject7).append(str3);
        str3 = readStringValue();
        localObject7 = ((StringBuilder)localObject7).append(str3);
        localObject7 = ((StringBuilder)localObject7).toString();
        ((PrintStream)localObject6).println((String)localObject7);
        localObject6 = localObject1;
        break;
      }
      PimField localPimField = new org/kobjects/pim/PimField;
      localPimField.<init>(str2);
      readProperties(localPimField);
      int j = ((PimItem)localObject1).getType(str2);
      switch (j)
      {
      }
    }
  }
  
  String readName()
    throws IOException
  {
    Object localObject1 = reader;
    Object localObject3 = ":;";
    localObject1 = ((LookAheadReader)localObject1).readTo((String)localObject3);
    localObject1 = ((String)localObject1).trim();
    String str1 = ((String)localObject1).toLowerCase();
    localObject1 = System.out;
    localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str2 = "name:";
    localObject3 = ((StringBuilder)localObject3).append(str2);
    localObject3 = ((StringBuilder)localObject3).append(str1);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((PrintStream)localObject1).println((String)localObject3);
    localObject1 = reader;
    int j = 0;
    int i = ((LookAheadReader)localObject1).peek(j);
    j = -1;
    if (i == j) {}
    for (Object localObject2 = null;; localObject2 = str1) {
      return (String)localObject2;
    }
  }
  
  void readProperties(PimField paramPimField)
    throws IOException
  {
    LookAheadReader localLookAheadReader1 = reader;
    LookAheadReader localLookAheadReader2;
    for (int i = localLookAheadReader1.read();; i = localLookAheadReader2.read())
    {
      int j = 32;
      if (i != j) {
        break;
      }
      localLookAheadReader2 = reader;
    }
    for (;;)
    {
      int k = 58;
      if (i == k) {
        break;
      }
      Object localObject1 = reader;
      String str2 = ":;=";
      localObject1 = ((LookAheadReader)localObject1).readTo(str2);
      localObject1 = ((String)localObject1).trim();
      String str1 = ((String)localObject1).toLowerCase();
      localObject1 = reader;
      i = ((LookAheadReader)localObject1).read();
      int m = 61;
      if (i == m)
      {
        Object localObject2 = reader;
        str2 = ":;";
        localObject2 = ((LookAheadReader)localObject2).readTo(str2);
        localObject2 = ((String)localObject2).trim();
        localObject2 = ((String)localObject2).toLowerCase();
        paramPimField.setProperty(str1, (String)localObject2);
        localObject2 = reader;
        i = ((LookAheadReader)localObject2).read();
      }
      else
      {
        boolean bool = true;
        paramPimField.setAttribute(str1, bool);
      }
    }
  }
  
  String readStringValue()
    throws IOException
  {
    LookAheadReader localLookAheadReader = reader;
    Object localObject1;
    for (String str = localLookAheadReader.readLine();; str = ((StringBuilder)localObject1).toString())
    {
      localLookAheadReader = reader;
      int j = 0;
      int i = localLookAheadReader.peek(j);
      j = 32;
      if (i != j) {
        break;
      }
      localObject1 = reader;
      ((LookAheadReader)localObject1).read();
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      localObject1 = ((StringBuilder)localObject1).append(str);
      Object localObject2 = reader;
      localObject2 = ((LookAheadReader)localObject2).readLine();
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.pim.PimParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */