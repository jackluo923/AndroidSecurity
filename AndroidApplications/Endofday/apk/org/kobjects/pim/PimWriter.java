package org.kobjects.pim;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;

public class PimWriter
{
  Writer writer;
  
  public PimWriter(Writer paramWriter)
  {
    writer = paramWriter;
  }
  
  public void writeEntry(PimItem paramPimItem)
    throws IOException
  {
    Writer localWriter1 = writer;
    String str = "begin:";
    localWriter1.write(str);
    localWriter1 = writer;
    str = paramPimItem.getType();
    localWriter1.write(str);
    localWriter1 = writer;
    str = "\r\n";
    localWriter1.write(str);
    Enumeration localEnumeration = paramPimItem.fieldNames();
    boolean bool = localEnumeration.hasMoreElements();
    if (bool)
    {
      Object localObject1 = localEnumeration.nextElement();
      localObject1 = (String)localObject1;
      int i = 0;
      for (;;)
      {
        int j = paramPimItem.getFieldCount((String)localObject1);
        if (i >= j) {
          break;
        }
        PimField localPimField = paramPimItem.getField((String)localObject1, i);
        localWriter2 = writer;
        localWriter2.write((String)localObject1);
        localWriter2 = writer;
        int k = 58;
        localWriter2.write(k);
        localWriter2 = writer;
        localObject2 = localPimField.getValue();
        localObject2 = localObject2.toString();
        localWriter2.write((String)localObject2);
        localWriter2 = writer;
        localObject2 = "\r\n";
        localWriter2.write((String)localObject2);
        i += 1;
      }
    }
    Writer localWriter2 = writer;
    Object localObject2 = "end:";
    localWriter2.write((String)localObject2);
    localWriter2 = writer;
    localObject2 = paramPimItem.getType();
    localWriter2.write((String)localObject2);
    localWriter2 = writer;
    localObject2 = "\r\n\r\n";
    localWriter2.write((String)localObject2);
  }
}

/* Location:
 * Qualified Name:     org.kobjects.pim.PimWriter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */