package org.codehaus.jackson.map;

import java.lang.annotation.Annotation;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.Named;
import org.codehaus.jackson.type.JavaType;

public abstract interface BeanProperty
  extends Named
{
  public abstract <A extends Annotation> A getAnnotation(Class<A> paramClass);
  
  public abstract <A extends Annotation> A getContextAnnotation(Class<A> paramClass);
  
  public abstract AnnotatedMember getMember();
  
  public abstract String getName();
  
  public abstract JavaType getType();
  
  public static class Std
    implements BeanProperty
  {
    protected final Annotations _contextAnnotations;
    protected final AnnotatedMember _member;
    protected final String _name;
    protected final JavaType _type;
    
    public Std(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember)
    {
      _name = paramString;
      _type = paramJavaType;
      _member = paramAnnotatedMember;
      _contextAnnotations = paramAnnotations;
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _member.getAnnotation(paramClass);
    }
    
    public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
    {
      if (_contextAnnotations == null) {
        return null;
      }
      return _contextAnnotations.get(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _member;
    }
    
    public String getName()
    {
      return _name;
    }
    
    public JavaType getType()
    {
      return _type;
    }
    
    public Std withType(JavaType paramJavaType)
    {
      return new Std(_name, paramJavaType, _contextAnnotations, _member);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.BeanProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */