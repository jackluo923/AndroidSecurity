package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

class Structure
{
  private final Instantiator factory;
  private final Model model;
  private final boolean primitive;
  private final Label text;
  private final Label version;
  
  public Structure(Instantiator paramInstantiator, Model paramModel, Label paramLabel1, Label paramLabel2, boolean paramBoolean)
  {
    primitive = paramBoolean;
    factory = paramInstantiator;
    version = paramLabel1;
    model = paramModel;
    text = paramLabel2;
  }
  
  public Instantiator getInstantiator()
  {
    return factory;
  }
  
  public Version getRevision()
  {
    if (version != null) {
      return (Version)version.getContact().getAnnotation(Version.class);
    }
    return null;
  }
  
  public Section getSection()
  {
    return new ModelSection(model);
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
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Structure
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */