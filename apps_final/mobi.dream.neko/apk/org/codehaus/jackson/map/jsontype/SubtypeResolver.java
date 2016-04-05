package org.codehaus.jackson.map.jsontype;

import java.util.Collection;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedMember;

public abstract class SubtypeResolver
{
  public abstract Collection<NamedType> collectAndResolveSubtypes(AnnotatedClass paramAnnotatedClass, MapperConfig<?> paramMapperConfig, AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract Collection<NamedType> collectAndResolveSubtypes(AnnotatedMember paramAnnotatedMember, MapperConfig<?> paramMapperConfig, AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract void registerSubtypes(Class<?>... paramVarArgs);
  
  public abstract void registerSubtypes(NamedType... paramVarArgs);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.SubtypeResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */