package org.codehaus.jackson.mrbean;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.org.objectweb.asm.ClassWriter;
import org.codehaus.jackson.org.objectweb.asm.FieldVisitor;
import org.codehaus.jackson.org.objectweb.asm.MethodVisitor;
import org.codehaus.jackson.org.objectweb.asm.Type;
import org.codehaus.jackson.type.JavaType;

public class BeanBuilder
{
  protected Map<String, Property> _beanProperties = new LinkedHashMap();
  protected final Class<?> _implementedType;
  protected final TypeFactory _typeFactory;
  protected LinkedHashMap<String, Method> _unsupportedMethods = new LinkedHashMap();
  
  public BeanBuilder(DeserializationConfig paramDeserializationConfig, Class<?> paramClass)
  {
    _implementedType = paramClass;
    _typeFactory = paramDeserializationConfig.getTypeFactory();
  }
  
  private void addGetter(Method paramMethod)
  {
    Property localProperty = findProperty(getPropertyName(paramMethod.getName()));
    if (localProperty.getGetter() == null) {
      localProperty.setGetter(paramMethod);
    }
  }
  
  private void addSetter(Method paramMethod)
  {
    Property localProperty = findProperty(getPropertyName(paramMethod.getName()));
    if (localProperty.getSetter() == null) {
      localProperty.setSetter(paramMethod);
    }
  }
  
  private static String buildGetterName(String paramString)
  {
    return "get" + paramString.substring(0, 1).toUpperCase() + paramString.substring(1);
  }
  
  private static String buildSetterName(String paramString)
  {
    return "set" + paramString.substring(0, 1).toUpperCase() + paramString.substring(1);
  }
  
  private static void createField(ClassWriter paramClassWriter, Property paramProperty, TypeDescription paramTypeDescription)
  {
    if (paramTypeDescription.hasGenerics()) {}
    for (String str = paramTypeDescription.genericSignature();; str = null)
    {
      paramTypeDescription = paramTypeDescription.erasedSignature();
      paramClassWriter.visitField(1, paramProperty.getFieldName(), paramTypeDescription, str, null).visitEnd();
      return;
    }
  }
  
  private static void createGetter(ClassWriter paramClassWriter, String paramString, Property paramProperty, TypeDescription paramTypeDescription)
  {
    Object localObject = paramProperty.getGetter();
    String str1;
    if (localObject != null)
    {
      str1 = Type.getMethodDescriptor((Method)localObject);
      localObject = ((Method)localObject).getName();
      if (!paramTypeDescription.hasGenerics()) {
        break label163;
      }
    }
    label163:
    for (String str2 = "()" + paramTypeDescription.genericSignature();; str2 = null)
    {
      paramClassWriter = paramClassWriter.visitMethod(1, (String)localObject, str1, str2, null);
      paramClassWriter.visitCode();
      paramClassWriter.visitVarInsn(25, 0);
      paramClassWriter.visitFieldInsn(180, paramString, paramProperty.getFieldName(), paramTypeDescription.erasedSignature());
      paramClassWriter.visitInsn(paramTypeDescription.getReturnOpcode());
      paramClassWriter.visitMaxs(0, 0);
      paramClassWriter.visitEnd();
      return;
      str1 = "()" + paramTypeDescription.erasedSignature();
      localObject = buildGetterName(paramProperty.getName());
      break;
    }
  }
  
  private static void createSetter(ClassWriter paramClassWriter, String paramString, Property paramProperty, TypeDescription paramTypeDescription)
  {
    Object localObject = paramProperty.getSetter();
    String str1;
    if (localObject != null)
    {
      str1 = Type.getMethodDescriptor((Method)localObject);
      localObject = ((Method)localObject).getName();
      if (!paramTypeDescription.hasGenerics()) {
        break label183;
      }
    }
    label183:
    for (String str2 = "(" + paramTypeDescription.genericSignature() + ")V";; str2 = null)
    {
      paramClassWriter = paramClassWriter.visitMethod(1, (String)localObject, str1, str2, null);
      paramClassWriter.visitCode();
      paramClassWriter.visitVarInsn(25, 0);
      paramClassWriter.visitVarInsn(paramTypeDescription.getLoadOpcode(), 1);
      paramClassWriter.visitFieldInsn(181, paramString, paramProperty.getFieldName(), paramTypeDescription.erasedSignature());
      paramClassWriter.visitInsn(177);
      paramClassWriter.visitMaxs(0, 0);
      paramClassWriter.visitEnd();
      return;
      str1 = "(" + paramTypeDescription.erasedSignature() + ")V";
      localObject = buildSetterName(paramProperty.getName());
      break;
    }
  }
  
  private static void createUnimplementedMethod(ClassWriter paramClassWriter, String paramString, Method paramMethod)
  {
    paramString = getInternalClassName(UnsupportedOperationException.class.getName());
    String str = Type.getMethodDescriptor(paramMethod);
    paramMethod = paramMethod.getName();
    paramClassWriter = paramClassWriter.visitMethod(1, paramMethod, str, null, null);
    paramClassWriter.visitTypeInsn(187, paramString);
    paramClassWriter.visitInsn(89);
    paramClassWriter.visitLdcInsn("Unimplemented method '" + paramMethod + "' (not a setter/getter, could not materialize)");
    paramClassWriter.visitMethodInsn(183, paramString, "<init>", "(Ljava/lang/String;)V");
    paramClassWriter.visitInsn(191);
    paramClassWriter.visitMaxs(0, 0);
    paramClassWriter.visitEnd();
  }
  
  private Property findProperty(String paramString)
  {
    Property localProperty2 = (Property)_beanProperties.get(paramString);
    Property localProperty1 = localProperty2;
    if (localProperty2 == null)
    {
      localProperty1 = new Property(paramString);
      _beanProperties.put(paramString, localProperty1);
    }
    return localProperty1;
  }
  
  private static void generateDefaultConstructor(ClassWriter paramClassWriter, String paramString)
  {
    paramClassWriter = paramClassWriter.visitMethod(1, "<init>", "()V", null, null);
    paramClassWriter.visitCode();
    paramClassWriter.visitVarInsn(25, 0);
    paramClassWriter.visitMethodInsn(183, paramString, "<init>", "()V");
    paramClassWriter.visitInsn(177);
    paramClassWriter.visitMaxs(0, 0);
    paramClassWriter.visitEnd();
  }
  
  private static String getInternalClassName(String paramString)
  {
    return paramString.replace(".", "/");
  }
  
  private static String getPropertyName(String paramString)
  {
    if (paramString.startsWith("is")) {}
    for (int i = 2;; i = 3)
    {
      paramString = paramString.substring(i);
      StringBuilder localStringBuilder = new StringBuilder(paramString);
      localStringBuilder.setCharAt(0, Character.toLowerCase(paramString.charAt(0)));
      return localStringBuilder.toString();
    }
  }
  
  private static final boolean returnsBoolean(Method paramMethod)
  {
    paramMethod = paramMethod.getReturnType();
    return (paramMethod == Boolean.class) || (paramMethod == Boolean.TYPE);
  }
  
  public byte[] build(String paramString)
  {
    ClassWriter localClassWriter = new ClassWriter(1);
    String str = getInternalClassName(paramString);
    Object localObject2 = getInternalClassName(_implementedType.getName());
    Object localObject1;
    if (_implementedType.isInterface())
    {
      localObject1 = "java/lang/Object";
      localClassWriter.visit(49, 33, str, null, "java/lang/Object", new String[] { localObject2 });
    }
    for (;;)
    {
      localClassWriter.visitSource(paramString + ".java", null);
      generateDefaultConstructor(localClassWriter, (String)localObject1);
      paramString = _beanProperties.values().iterator();
      while (paramString.hasNext())
      {
        localObject1 = (Property)paramString.next();
        localObject2 = ((Property)localObject1).selectType(_typeFactory);
        createField(localClassWriter, (Property)localObject1, (TypeDescription)localObject2);
        if (!((Property)localObject1).hasConcreteGetter()) {
          createGetter(localClassWriter, str, (Property)localObject1, (TypeDescription)localObject2);
        }
        if (!((Property)localObject1).hasConcreteSetter()) {
          createSetter(localClassWriter, str, (Property)localObject1, (TypeDescription)localObject2);
        }
      }
      localObject1 = localObject2;
      localClassWriter.visit(49, 33, str, null, (String)localObject2, null);
    }
    paramString = _unsupportedMethods.values().iterator();
    while (paramString.hasNext()) {
      createUnimplementedMethod(localClassWriter, str, (Method)paramString.next());
    }
    localClassWriter.visitEnd();
    return localClassWriter.toByteArray();
  }
  
  public BeanBuilder implement(boolean paramBoolean)
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add(_implementedType);
    BeanUtil.findSuperTypes(_implementedType, Object.class, (List)localObject);
    localObject = ((ArrayList)localObject).iterator();
    if (((Iterator)localObject).hasNext())
    {
      Method[] arrayOfMethod = ((Class)((Iterator)localObject).next()).getDeclaredMethods();
      int j = arrayOfMethod.length;
      int i = 0;
      label62:
      Method localMethod;
      String str;
      int k;
      if (i < j)
      {
        localMethod = arrayOfMethod[i];
        str = localMethod.getName();
        k = localMethod.getParameterTypes().length;
        if (k != 0) {
          break label138;
        }
        if ((!str.startsWith("get")) && ((!str.startsWith("is")) || (!returnsBoolean(localMethod)))) {
          break label163;
        }
        addGetter(localMethod);
      }
      for (;;)
      {
        i += 1;
        break label62;
        break;
        label138:
        if ((k == 1) && (str.startsWith("set"))) {
          addSetter(localMethod);
        } else {
          label163:
          if ((!BeanUtil.isConcrete(localMethod)) && (!_unsupportedMethods.containsKey(str)))
          {
            if (paramBoolean) {
              throw new IllegalArgumentException("Unrecognized abstract method '" + str + "' (not a getter or setter) -- to avoid exception, disable AbstractTypeMaterializer.Feature.FAIL_ON_UNMATERIALIZED_METHOD");
            }
            _unsupportedMethods.put(str, localMethod);
          }
        }
      }
    }
    return this;
  }
  
  private static class Property
  {
    protected final String _fieldName;
    protected Method _getter;
    protected final String _name;
    protected Method _setter;
    
    public Property(String paramString)
    {
      _name = paramString;
      _fieldName = ("_" + paramString);
    }
    
    private BeanBuilder.TypeDescription getterType(TypeFactory paramTypeFactory)
    {
      Class localClass = _getter.getDeclaringClass();
      return new BeanBuilder.TypeDescription(paramTypeFactory.constructType(_getter.getGenericReturnType(), localClass));
    }
    
    private BeanBuilder.TypeDescription setterType(TypeFactory paramTypeFactory)
    {
      Class localClass = _setter.getDeclaringClass();
      return new BeanBuilder.TypeDescription(paramTypeFactory.constructType(_setter.getGenericParameterTypes()[0], localClass));
    }
    
    public String getFieldName()
    {
      return _fieldName;
    }
    
    public Method getGetter()
    {
      return _getter;
    }
    
    public String getName()
    {
      return _name;
    }
    
    public Method getSetter()
    {
      return _setter;
    }
    
    public boolean hasConcreteGetter()
    {
      return (_getter != null) && (BeanUtil.isConcrete(_getter));
    }
    
    public boolean hasConcreteSetter()
    {
      return (_setter != null) && (BeanUtil.isConcrete(_setter));
    }
    
    public BeanBuilder.TypeDescription selectType(TypeFactory paramTypeFactory)
    {
      if (_getter == null) {
        paramTypeFactory = setterType(paramTypeFactory);
      }
      BeanBuilder.TypeDescription localTypeDescription2;
      BeanBuilder.TypeDescription localTypeDescription3;
      BeanBuilder.TypeDescription localTypeDescription1;
      do
      {
        return paramTypeFactory;
        if (_setter == null) {
          return getterType(paramTypeFactory);
        }
        localTypeDescription2 = setterType(paramTypeFactory);
        localTypeDescription3 = getterType(paramTypeFactory);
        localTypeDescription1 = BeanBuilder.TypeDescription.moreSpecificType(localTypeDescription2, localTypeDescription3);
        paramTypeFactory = localTypeDescription1;
      } while (localTypeDescription1 != null);
      throw new IllegalArgumentException("Invalid property '" + getName() + "': incompatible types for getter/setter (" + localTypeDescription3 + " vs " + localTypeDescription2 + ")");
    }
    
    public void setGetter(Method paramMethod)
    {
      _getter = paramMethod;
    }
    
    public void setSetter(Method paramMethod)
    {
      _setter = paramMethod;
    }
  }
  
  private static class TypeDescription
  {
    private final Type _asmType;
    private JavaType _jacksonType;
    
    public TypeDescription(JavaType paramJavaType)
    {
      _jacksonType = paramJavaType;
      _asmType = Type.getType(paramJavaType.getRawClass());
    }
    
    public static TypeDescription moreSpecificType(TypeDescription paramTypeDescription1, TypeDescription paramTypeDescription2)
    {
      Class localClass1 = paramTypeDescription1.getRawClass();
      Class localClass2 = paramTypeDescription2.getRawClass();
      if (localClass1.isAssignableFrom(localClass2)) {
        return paramTypeDescription2;
      }
      if (localClass2.isAssignableFrom(localClass1)) {
        return paramTypeDescription1;
      }
      return null;
    }
    
    public String erasedSignature()
    {
      return _jacksonType.getErasedSignature();
    }
    
    public String genericSignature()
    {
      return _jacksonType.getGenericSignature();
    }
    
    public int getLoadOpcode()
    {
      return _asmType.getOpcode(21);
    }
    
    public Class<?> getRawClass()
    {
      return _jacksonType.getRawClass();
    }
    
    public int getReturnOpcode()
    {
      return _asmType.getOpcode(172);
    }
    
    public boolean hasGenerics()
    {
      return _jacksonType.hasGenericTypes();
    }
    
    public String toString()
    {
      return _jacksonType.toString();
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.BeanBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */