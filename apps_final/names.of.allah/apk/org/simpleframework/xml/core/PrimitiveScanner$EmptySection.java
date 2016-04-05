package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class PrimitiveScanner$EmptySection
  implements Section
{
  private final List<String> list = new LinkedList();
  private final Scanner scanner;
  
  public PrimitiveScanner$EmptySection(Scanner paramScanner)
  {
    scanner = paramScanner;
  }
  
  public String getAttribute(String paramString)
  {
    return null;
  }
  
  public LabelMap getAttributes()
  {
    return new LabelMap(scanner);
  }
  
  public Label getElement(String paramString)
  {
    return null;
  }
  
  public LabelMap getElements()
  {
    return new LabelMap(scanner);
  }
  
  public String getName()
  {
    return null;
  }
  
  public String getPath(String paramString)
  {
    return null;
  }
  
  public String getPrefix()
  {
    return null;
  }
  
  public Section getSection(String paramString)
  {
    return null;
  }
  
  public Label getText()
  {
    return null;
  }
  
  public boolean isSection(String paramString)
  {
    return false;
  }
  
  public Iterator<String> iterator()
  {
    return list.iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveScanner.EmptySection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */