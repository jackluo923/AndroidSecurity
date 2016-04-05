package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

class ParameterFactory
{
  private final Format format;
  
  public ParameterFactory(Support paramSupport)
  {
    format = paramSupport.getFormat();
  }
  
  private ParameterFactory.ParameterBuilder getBuilder(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Element)) {
      return new ParameterFactory.ParameterBuilder(ElementParameter.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return new ParameterFactory.ParameterBuilder(ElementListParameter.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return new ParameterFactory.ParameterBuilder(ElementArrayParameter.class, ElementArray.class);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return new ParameterFactory.ParameterBuilder(ElementMapUnionParameter.class, ElementMapUnion.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return new ParameterFactory.ParameterBuilder(ElementListUnionParameter.class, ElementListUnion.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      return new ParameterFactory.ParameterBuilder(ElementUnionParameter.class, ElementUnion.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return new ParameterFactory.ParameterBuilder(ElementMapParameter.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof Attribute)) {
      return new ParameterFactory.ParameterBuilder(AttributeParameter.class, Attribute.class);
    }
    if ((paramAnnotation instanceof Text)) {
      return new ParameterFactory.ParameterBuilder(TextParameter.class, Text.class);
    }
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private Constructor getConstructor(Annotation paramAnnotation)
  {
    paramAnnotation = getBuilder(paramAnnotation).getConstructor();
    if (!paramAnnotation.isAccessible()) {
      paramAnnotation.setAccessible(true);
    }
    return paramAnnotation;
  }
  
  public Parameter getInstance(Constructor paramConstructor, Annotation paramAnnotation, int paramInt)
  {
    return getInstance(paramConstructor, paramAnnotation, null, paramInt);
  }
  
  public Parameter getInstance(Constructor paramConstructor, Annotation paramAnnotation1, Annotation paramAnnotation2, int paramInt)
  {
    Constructor localConstructor = getConstructor(paramAnnotation1);
    if (paramAnnotation2 != null) {
      return (Parameter)localConstructor.newInstance(new Object[] { paramConstructor, paramAnnotation1, paramAnnotation2, format, Integer.valueOf(paramInt) });
    }
    return (Parameter)localConstructor.newInstance(new Object[] { paramConstructor, paramAnnotation1, format, Integer.valueOf(paramInt) });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ParameterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */