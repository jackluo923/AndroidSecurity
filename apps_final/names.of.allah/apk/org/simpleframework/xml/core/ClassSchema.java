package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

class ClassSchema
  implements Schema
{
  private final Caller caller;
  private final Decorator decorator;
  private final Instantiator factory;
  private final boolean primitive;
  private final Version revision;
  private final Section section;
  private final Label text;
  private final Class type;
  private final Label version;
  
  public ClassSchema(Scanner paramScanner, Context paramContext)
  {
    caller = paramScanner.getCaller(paramContext);
    factory = paramScanner.getInstantiator();
    revision = paramScanner.getRevision();
    decorator = paramScanner.getDecorator();
    primitive = paramScanner.isPrimitive();
    version = paramScanner.getVersion();
    section = paramScanner.getSection();
    text = paramScanner.getText();
    type = paramScanner.getType();
  }
  
  public Caller getCaller()
  {
    return caller;
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Instantiator getInstantiator()
  {
    return factory;
  }
  
  public Version getRevision()
  {
    return revision;
  }
  
  public Section getSection()
  {
    return section;
  }
  
  public Label getText()
  {
    return text;
  }
  
  public Label getVersion()
  {
    return version;
  }
  
  public boolean isPrimitive()
  {
    return primitive;
  }
  
  public String toString()
  {
    return String.format("schema for %s", new Object[] { type });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */