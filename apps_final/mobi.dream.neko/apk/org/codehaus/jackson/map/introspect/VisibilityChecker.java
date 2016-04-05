package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.annotate.JsonMethod;

public abstract interface VisibilityChecker<T extends VisibilityChecker<T>>
{
  public abstract boolean isCreatorVisible(Member paramMember);
  
  public abstract boolean isCreatorVisible(AnnotatedMember paramAnnotatedMember);
  
  public abstract boolean isFieldVisible(Field paramField);
  
  public abstract boolean isFieldVisible(AnnotatedField paramAnnotatedField);
  
  public abstract boolean isGetterVisible(Method paramMethod);
  
  public abstract boolean isGetterVisible(AnnotatedMethod paramAnnotatedMethod);
  
  public abstract boolean isIsGetterVisible(Method paramMethod);
  
  public abstract boolean isIsGetterVisible(AnnotatedMethod paramAnnotatedMethod);
  
  public abstract boolean isSetterVisible(Method paramMethod);
  
  public abstract boolean isSetterVisible(AnnotatedMethod paramAnnotatedMethod);
  
  public abstract T with(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T with(JsonAutoDetect paramJsonAutoDetect);
  
  public abstract T withCreatorVisibility(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withFieldVisibility(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withGetterVisibility(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withIsGetterVisibility(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withSetterVisibility(JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withVisibility(JsonMethod paramJsonMethod, JsonAutoDetect.Visibility paramVisibility);
  
  @JsonAutoDetect(creatorVisibility=JsonAutoDetect.Visibility.ANY, fieldVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, getterVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, isGetterVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, setterVisibility=JsonAutoDetect.Visibility.ANY)
  public static class Std
    implements VisibilityChecker<Std>
  {
    protected static final Std DEFAULT = new Std((JsonAutoDetect)Std.class.getAnnotation(JsonAutoDetect.class));
    protected final JsonAutoDetect.Visibility _creatorMinLevel;
    protected final JsonAutoDetect.Visibility _fieldMinLevel;
    protected final JsonAutoDetect.Visibility _getterMinLevel;
    protected final JsonAutoDetect.Visibility _isGetterMinLevel;
    protected final JsonAutoDetect.Visibility _setterMinLevel;
    
    public Std(JsonAutoDetect.Visibility paramVisibility)
    {
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT)
      {
        _getterMinLevel = DEFAULT_getterMinLevel;
        _isGetterMinLevel = DEFAULT_isGetterMinLevel;
        _setterMinLevel = DEFAULT_setterMinLevel;
        _creatorMinLevel = DEFAULT_creatorMinLevel;
        _fieldMinLevel = DEFAULT_fieldMinLevel;
        return;
      }
      _getterMinLevel = paramVisibility;
      _isGetterMinLevel = paramVisibility;
      _setterMinLevel = paramVisibility;
      _creatorMinLevel = paramVisibility;
      _fieldMinLevel = paramVisibility;
    }
    
    public Std(JsonAutoDetect.Visibility paramVisibility1, JsonAutoDetect.Visibility paramVisibility2, JsonAutoDetect.Visibility paramVisibility3, JsonAutoDetect.Visibility paramVisibility4, JsonAutoDetect.Visibility paramVisibility5)
    {
      _getterMinLevel = paramVisibility1;
      _isGetterMinLevel = paramVisibility2;
      _setterMinLevel = paramVisibility3;
      _creatorMinLevel = paramVisibility4;
      _fieldMinLevel = paramVisibility5;
    }
    
    public Std(JsonAutoDetect paramJsonAutoDetect)
    {
      JsonMethod[] arrayOfJsonMethod = paramJsonAutoDetect.value();
      JsonAutoDetect.Visibility localVisibility;
      if (hasMethod(arrayOfJsonMethod, JsonMethod.GETTER))
      {
        localVisibility = paramJsonAutoDetect.getterVisibility();
        _getterMinLevel = localVisibility;
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.IS_GETTER)) {
          break label129;
        }
        localVisibility = paramJsonAutoDetect.isGetterVisibility();
        label50:
        _isGetterMinLevel = localVisibility;
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.SETTER)) {
          break label136;
        }
        localVisibility = paramJsonAutoDetect.setterVisibility();
        label72:
        _setterMinLevel = localVisibility;
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.CREATOR)) {
          break label143;
        }
        localVisibility = paramJsonAutoDetect.creatorVisibility();
        label94:
        _creatorMinLevel = localVisibility;
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.FIELD)) {
          break label150;
        }
      }
      label129:
      label136:
      label143:
      label150:
      for (paramJsonAutoDetect = paramJsonAutoDetect.fieldVisibility();; paramJsonAutoDetect = JsonAutoDetect.Visibility.NONE)
      {
        _fieldMinLevel = paramJsonAutoDetect;
        return;
        localVisibility = JsonAutoDetect.Visibility.NONE;
        break;
        localVisibility = JsonAutoDetect.Visibility.NONE;
        break label50;
        localVisibility = JsonAutoDetect.Visibility.NONE;
        break label72;
        localVisibility = JsonAutoDetect.Visibility.NONE;
        break label94;
      }
    }
    
    public static Std defaultInstance()
    {
      return DEFAULT;
    }
    
    private static boolean hasMethod(JsonMethod[] paramArrayOfJsonMethod, JsonMethod paramJsonMethod)
    {
      int j = paramArrayOfJsonMethod.length;
      int i = 0;
      while (i < j)
      {
        JsonMethod localJsonMethod = paramArrayOfJsonMethod[i];
        if ((localJsonMethod == paramJsonMethod) || (localJsonMethod == JsonMethod.ALL)) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public boolean isCreatorVisible(Member paramMember)
    {
      return _creatorMinLevel.isVisible(paramMember);
    }
    
    public boolean isCreatorVisible(AnnotatedMember paramAnnotatedMember)
    {
      return isCreatorVisible(paramAnnotatedMember.getMember());
    }
    
    public boolean isFieldVisible(Field paramField)
    {
      return _fieldMinLevel.isVisible(paramField);
    }
    
    public boolean isFieldVisible(AnnotatedField paramAnnotatedField)
    {
      return isFieldVisible(paramAnnotatedField.getAnnotated());
    }
    
    public boolean isGetterVisible(Method paramMethod)
    {
      return _getterMinLevel.isVisible(paramMethod);
    }
    
    public boolean isGetterVisible(AnnotatedMethod paramAnnotatedMethod)
    {
      return isGetterVisible(paramAnnotatedMethod.getAnnotated());
    }
    
    public boolean isIsGetterVisible(Method paramMethod)
    {
      return _isGetterMinLevel.isVisible(paramMethod);
    }
    
    public boolean isIsGetterVisible(AnnotatedMethod paramAnnotatedMethod)
    {
      return isIsGetterVisible(paramAnnotatedMethod.getAnnotated());
    }
    
    public boolean isSetterVisible(Method paramMethod)
    {
      return _setterMinLevel.isVisible(paramMethod);
    }
    
    public boolean isSetterVisible(AnnotatedMethod paramAnnotatedMethod)
    {
      return isSetterVisible(paramAnnotatedMethod.getAnnotated());
    }
    
    public String toString()
    {
      return "[Visibility:" + " getter: " + _getterMinLevel + ", isGetter: " + _isGetterMinLevel + ", setter: " + _setterMinLevel + ", creator: " + _creatorMinLevel + ", field: " + _fieldMinLevel + "]";
    }
    
    public Std with(JsonAutoDetect.Visibility paramVisibility)
    {
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        return DEFAULT;
      }
      return new Std(paramVisibility);
    }
    
    public Std with(JsonAutoDetect paramJsonAutoDetect)
    {
      if (paramJsonAutoDetect == null) {
        return this;
      }
      JsonMethod[] arrayOfJsonMethod = paramJsonAutoDetect.value();
      Object localObject;
      if (hasMethod(arrayOfJsonMethod, JsonMethod.GETTER))
      {
        localObject = paramJsonAutoDetect.getterVisibility();
        Std localStd = withGetterVisibility((JsonAutoDetect.Visibility)localObject);
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.IS_GETTER)) {
          break label141;
        }
        localObject = paramJsonAutoDetect.isGetterVisibility();
        label54:
        localStd = localStd.withIsGetterVisibility((JsonAutoDetect.Visibility)localObject);
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.SETTER)) {
          break label148;
        }
        localObject = paramJsonAutoDetect.setterVisibility();
        label79:
        localStd = localStd.withSetterVisibility((JsonAutoDetect.Visibility)localObject);
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.CREATOR)) {
          break label155;
        }
        localObject = paramJsonAutoDetect.creatorVisibility();
        label104:
        localObject = localStd.withCreatorVisibility((JsonAutoDetect.Visibility)localObject);
        if (!hasMethod(arrayOfJsonMethod, JsonMethod.FIELD)) {
          break label162;
        }
      }
      label141:
      label148:
      label155:
      label162:
      for (paramJsonAutoDetect = paramJsonAutoDetect.fieldVisibility();; paramJsonAutoDetect = JsonAutoDetect.Visibility.NONE)
      {
        return ((Std)localObject).withFieldVisibility(paramJsonAutoDetect);
        localObject = JsonAutoDetect.Visibility.NONE;
        break;
        localObject = JsonAutoDetect.Visibility.NONE;
        break label54;
        localObject = JsonAutoDetect.Visibility.NONE;
        break label79;
        localObject = JsonAutoDetect.Visibility.NONE;
        break label104;
      }
    }
    
    public Std withCreatorVisibility(JsonAutoDetect.Visibility paramVisibility)
    {
      JsonAutoDetect.Visibility localVisibility = paramVisibility;
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        localVisibility = DEFAULT_creatorMinLevel;
      }
      if (_creatorMinLevel == localVisibility) {
        return this;
      }
      return new Std(_getterMinLevel, _isGetterMinLevel, _setterMinLevel, localVisibility, _fieldMinLevel);
    }
    
    public Std withFieldVisibility(JsonAutoDetect.Visibility paramVisibility)
    {
      JsonAutoDetect.Visibility localVisibility = paramVisibility;
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        localVisibility = DEFAULT_fieldMinLevel;
      }
      if (_fieldMinLevel == localVisibility) {
        return this;
      }
      return new Std(_getterMinLevel, _isGetterMinLevel, _setterMinLevel, _creatorMinLevel, localVisibility);
    }
    
    public Std withGetterVisibility(JsonAutoDetect.Visibility paramVisibility)
    {
      JsonAutoDetect.Visibility localVisibility = paramVisibility;
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        localVisibility = DEFAULT_getterMinLevel;
      }
      if (_getterMinLevel == localVisibility) {
        return this;
      }
      return new Std(localVisibility, _isGetterMinLevel, _setterMinLevel, _creatorMinLevel, _fieldMinLevel);
    }
    
    public Std withIsGetterVisibility(JsonAutoDetect.Visibility paramVisibility)
    {
      JsonAutoDetect.Visibility localVisibility = paramVisibility;
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        localVisibility = DEFAULT_isGetterMinLevel;
      }
      if (_isGetterMinLevel == localVisibility) {
        return this;
      }
      return new Std(_getterMinLevel, localVisibility, _setterMinLevel, _creatorMinLevel, _fieldMinLevel);
    }
    
    public Std withSetterVisibility(JsonAutoDetect.Visibility paramVisibility)
    {
      JsonAutoDetect.Visibility localVisibility = paramVisibility;
      if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT) {
        localVisibility = DEFAULT_setterMinLevel;
      }
      if (_setterMinLevel == localVisibility) {
        return this;
      }
      return new Std(_getterMinLevel, _isGetterMinLevel, localVisibility, _creatorMinLevel, _fieldMinLevel);
    }
    
    public Std withVisibility(JsonMethod paramJsonMethod, JsonAutoDetect.Visibility paramVisibility)
    {
      switch (VisibilityChecker.1.$SwitchMap$org$codehaus$jackson$annotate$JsonMethod[paramJsonMethod.ordinal()])
      {
      default: 
        return this;
      case 1: 
        return withGetterVisibility(paramVisibility);
      case 2: 
        return withSetterVisibility(paramVisibility);
      case 3: 
        return withCreatorVisibility(paramVisibility);
      case 4: 
        return withFieldVisibility(paramVisibility);
      case 5: 
        return withIsGetterVisibility(paramVisibility);
      }
      return with(paramVisibility);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.VisibilityChecker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */