package org.codehaus.jackson.mrbean;

import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.Module;
import org.codehaus.jackson.map.Module.SetupContext;

public class MrBeanModule
  extends Module
{
  private static final Version VERSION = new Version(1, 8, 0, null);
  private final String NAME = "MrBeanModule";
  protected AbstractTypeMaterializer _materializer;
  
  public MrBeanModule()
  {
    this(new AbstractTypeMaterializer());
  }
  
  public MrBeanModule(AbstractTypeMaterializer paramAbstractTypeMaterializer)
  {
    _materializer = paramAbstractTypeMaterializer;
  }
  
  public String getModuleName()
  {
    return "MrBeanModule";
  }
  
  public void setupModule(Module.SetupContext paramSetupContext)
  {
    paramSetupContext.addAbstractTypeResolver(_materializer);
  }
  
  public Version version()
  {
    return VERSION;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.MrBeanModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */