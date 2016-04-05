package org.codehaus.jackson.xc;

import java.beans.Introspector;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessOrder;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorOrder;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElement.DEFAULT;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlElementRefs;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlElements;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;
import javax.xml.bind.annotation.adapters.XmlAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter.DEFAULT;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapters;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.Versioned;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.NamedType;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdTypeResolverBuilder;
import org.codehaus.jackson.map.util.BeanUtil;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.VersionUtil;

public class JaxbAnnotationIntrospector
  extends AnnotationIntrospector
  implements Versioned
{
  protected static final String MARKER_FOR_DEFAULT = "##default";
  protected final JsonDeserializer<?> _dataHandlerDeserializer;
  protected final JsonSerializer<?> _dataHandlerSerializer;
  protected final String _jaxbPackageName = XmlElement.class.getPackage().getName();
  
  public JaxbAnnotationIntrospector()
  {
    Object localObject1 = null;
    localObject4 = null;
    try
    {
      localObject2 = (JsonSerializer)Class.forName("org.codehaus.jackson.xc.DataHandlerJsonSerializer").newInstance();
      localObject1 = localObject2;
      JsonDeserializer localJsonDeserializer = (JsonDeserializer)Class.forName("org.codehaus.jackson.xc.DataHandlerJsonDeserializer").newInstance();
      localObject1 = localObject2;
      localObject2 = localJsonDeserializer;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Object localObject2;
        Object localObject3 = localObject4;
      }
    }
    _dataHandlerSerializer = ((JsonSerializer)localObject1);
    _dataHandlerDeserializer = ((JsonDeserializer)localObject2);
  }
  
  private final XmlAdapter<Object, Object> checkAdapter(XmlJavaTypeAdapter paramXmlJavaTypeAdapter, Class<?> paramClass)
  {
    Class localClass = paramXmlJavaTypeAdapter.type();
    if ((localClass == XmlJavaTypeAdapter.DEFAULT.class) || (localClass.isAssignableFrom(paramClass))) {
      return (XmlAdapter)ClassUtil.createInstance(paramXmlJavaTypeAdapter.value(), false);
    }
    return null;
  }
  
  private XmlAdapter<Object, Object> findAdapter(Annotated paramAnnotated, boolean paramBoolean)
  {
    Object localObject1;
    if ((paramAnnotated instanceof AnnotatedClass)) {
      localObject1 = findAdapterForClass((AnnotatedClass)paramAnnotated, paramBoolean);
    }
    Object localObject2;
    Object localObject3;
    do
    {
      do
      {
        return (XmlAdapter<Object, Object>)localObject1;
        localObject1 = paramAnnotated.getRawType();
        localObject2 = localObject1;
        if (localObject1 == Void.TYPE)
        {
          localObject2 = localObject1;
          if ((paramAnnotated instanceof AnnotatedMethod)) {
            localObject2 = ((AnnotatedMethod)paramAnnotated).getParameterClass(0);
          }
        }
        localObject1 = (Member)paramAnnotated.getAnnotated();
        if (localObject1 == null) {
          break;
        }
        localObject1 = ((Member)localObject1).getDeclaringClass();
        if (localObject1 == null) {
          break;
        }
        localObject1 = (XmlJavaTypeAdapter)((Class)localObject1).getAnnotation(XmlJavaTypeAdapter.class);
        if (localObject1 == null) {
          break;
        }
        localObject3 = checkAdapter((XmlJavaTypeAdapter)localObject1, (Class)localObject2);
        localObject1 = localObject3;
      } while (localObject3 != null);
      localObject1 = (XmlJavaTypeAdapter)findAnnotation(XmlJavaTypeAdapter.class, paramAnnotated, true, false, false);
      if (localObject1 == null) {
        break;
      }
      localObject3 = checkAdapter((XmlJavaTypeAdapter)localObject1, (Class)localObject2);
      localObject1 = localObject3;
    } while (localObject3 != null);
    paramAnnotated = (XmlJavaTypeAdapters)findAnnotation(XmlJavaTypeAdapters.class, paramAnnotated, true, false, false);
    if (paramAnnotated != null)
    {
      localObject3 = paramAnnotated.value();
      int j = localObject3.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label211;
        }
        paramAnnotated = checkAdapter(localObject3[i], (Class)localObject2);
        localObject1 = paramAnnotated;
        if (paramAnnotated != null) {
          break;
        }
        i += 1;
      }
    }
    label211:
    return null;
  }
  
  private XmlAdapter<Object, Object> findAdapterForClass(AnnotatedClass paramAnnotatedClass, boolean paramBoolean)
  {
    paramAnnotatedClass = (XmlJavaTypeAdapter)paramAnnotatedClass.getAnnotated().getAnnotation(XmlJavaTypeAdapter.class);
    if (paramAnnotatedClass != null) {
      return (XmlAdapter)ClassUtil.createInstance(paramAnnotatedClass.value(), false);
    }
    return null;
  }
  
  private <A extends Annotation> A findFieldAnnotation(Class<A> paramClass, Class<?> paramClass1, String paramString)
  {
    Object localObject1 = paramClass1.getDeclaredFields();
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1[i];
      if (paramString.equals(((Field)localObject2).getName())) {
        return ((Field)localObject2).getAnnotation(paramClass);
      }
      i += 1;
    }
    if ((paramClass1.isInterface()) || (paramClass1 == Object.class)) {}
    for (;;)
    {
      return null;
      localObject1 = paramClass1.getSuperclass();
      paramClass1 = (Class<?>)localObject1;
      if (localObject1 != null) {
        break;
      }
    }
  }
  
  private static String findJaxbPropertyName(Annotated paramAnnotated, Class<?> paramClass, String paramString)
  {
    Object localObject = (XmlElementWrapper)paramAnnotated.getAnnotation(XmlElementWrapper.class);
    if (localObject != null)
    {
      localObject = ((XmlElementWrapper)localObject).name();
      if ("##default".equals(localObject)) {}
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return (String)localObject;
            return paramString;
            localObject = (XmlAttribute)paramAnnotated.getAnnotation(XmlAttribute.class);
            if (localObject == null) {
              break;
            }
            paramAnnotated = ((XmlAttribute)localObject).name();
            localObject = paramAnnotated;
          } while (!"##default".equals(paramAnnotated));
          return paramString;
          localObject = (XmlElement)paramAnnotated.getAnnotation(XmlElement.class);
          if (localObject == null) {
            break;
          }
          paramAnnotated = ((XmlElement)localObject).name();
          localObject = paramAnnotated;
        } while (!"##default".equals(paramAnnotated));
        return paramString;
        paramString = (XmlElementRef)paramAnnotated.getAnnotation(XmlElementRef.class);
        if (paramString == null) {
          break;
        }
        paramString = paramString.name();
        localObject = paramString;
      } while (!"##default".equals(paramString));
      if (paramClass == null) {
        break;
      }
      paramString = (XmlRootElement)paramClass.getAnnotation(XmlRootElement.class);
      if (paramString == null) {
        break;
      }
      paramAnnotated = paramString.name();
      localObject = paramAnnotated;
    } while (!"##default".equals(paramAnnotated));
    return Introspector.decapitalize(paramClass.getSimpleName());
    if ((XmlValue)paramAnnotated.getAnnotation(XmlValue.class) != null) {
      return "value";
    }
    return null;
  }
  
  private XmlRootElement findRootElementAnnotation(AnnotatedClass paramAnnotatedClass)
  {
    return (XmlRootElement)findAnnotation(XmlRootElement.class, paramAnnotatedClass, true, false, true);
  }
  
  private boolean isDataHandler(Class<?> paramClass)
  {
    return (paramClass != null) && (Object.class != paramClass) && (("javax.activation.DataHandler".equals(paramClass.getName())) || (isDataHandler(paramClass.getSuperclass())));
  }
  
  private boolean isIndexedType(Class<?> paramClass)
  {
    return (paramClass.isArray()) || (Collection.class.isAssignableFrom(paramClass)) || (Map.class.isAssignableFrom(paramClass));
  }
  
  private boolean isVisible(AnnotatedField paramAnnotatedField)
  {
    Object localObject = paramAnnotatedField.getAnnotated().getDeclaredAnnotations();
    int j = localObject.length;
    int i = 0;
    if (i < j) {
      if (!isHandled(localObject[i])) {}
    }
    do
    {
      return true;
      i += 1;
      break;
      localObject = XmlAccessType.PUBLIC_MEMBER;
      XmlAccessorType localXmlAccessorType = (XmlAccessorType)findAnnotation(XmlAccessorType.class, paramAnnotatedField, true, true, true);
      if (localXmlAccessorType != null) {
        localObject = localXmlAccessorType.value();
      }
    } while (localObject == XmlAccessType.FIELD);
    if (localObject == XmlAccessType.PUBLIC_MEMBER) {
      return Modifier.isPublic(paramAnnotatedField.getAnnotated().getModifiers());
    }
    return false;
  }
  
  private boolean isVisible(AnnotatedMethod paramAnnotatedMethod)
  {
    Object localObject = paramAnnotatedMethod.getAnnotated().getDeclaredAnnotations();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      if (isHandled(localObject[i])) {
        return true;
      }
      i += 1;
    }
    localObject = XmlAccessType.PUBLIC_MEMBER;
    XmlAccessorType localXmlAccessorType = (XmlAccessorType)findAnnotation(XmlAccessorType.class, paramAnnotatedMethod, true, true, true);
    if (localXmlAccessorType != null) {
      localObject = localXmlAccessorType.value();
    }
    if ((localObject == XmlAccessType.PROPERTY) || (localObject == XmlAccessType.PUBLIC_MEMBER)) {
      return Modifier.isPublic(paramAnnotatedMethod.getModifiers());
    }
    return false;
  }
  
  protected Class<?> _doFindDeserializationType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    if (paramAnnotated.hasAnnotation(XmlJavaTypeAdapter.class)) {
      paramJavaType = null;
    }
    Class localClass;
    do
    {
      return paramJavaType;
      paramJavaType = (XmlElement)findAnnotation(XmlElement.class, paramAnnotated, false, false, false);
      if (paramJavaType == null) {
        break;
      }
      localClass = paramJavaType.type();
      paramJavaType = localClass;
    } while (localClass != XmlElement.DEFAULT.class);
    if (((paramAnnotated instanceof AnnotatedMethod)) && (paramString != null))
    {
      paramAnnotated = (XmlElement)findFieldAnnotation(XmlElement.class, ((AnnotatedMethod)paramAnnotated).getDeclaringClass(), paramString);
      if ((paramAnnotated != null) && (paramAnnotated.type() != XmlElement.DEFAULT.class)) {
        return paramAnnotated.type();
      }
    }
    return null;
  }
  
  protected TypeResolverBuilder<?> _typeResolverFromXmlElements(AnnotatedMember paramAnnotatedMember)
  {
    XmlElements localXmlElements = (XmlElements)findAnnotation(XmlElements.class, paramAnnotatedMember, false, false, false);
    paramAnnotatedMember = (XmlElementRefs)findAnnotation(XmlElementRefs.class, paramAnnotatedMember, false, false, false);
    if ((localXmlElements == null) && (paramAnnotatedMember == null)) {
      return null;
    }
    return new StdTypeResolverBuilder().init(JsonTypeInfo.Id.NAME, null).inclusion(JsonTypeInfo.As.WRAPPER_OBJECT);
  }
  
  protected XmlAccessType findAccessType(Annotated paramAnnotated)
  {
    paramAnnotated = (XmlAccessorType)findAnnotation(XmlAccessorType.class, paramAnnotated, true, true, true);
    if (paramAnnotated == null) {
      return null;
    }
    return paramAnnotated.value();
  }
  
  protected <A extends Annotation> A findAnnotation(Class<A> paramClass, Annotated paramAnnotated, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject = paramAnnotated.getAnnotation(paramClass);
    if (localObject != null) {
      return (A)localObject;
    }
    if ((paramAnnotated instanceof AnnotatedParameter))
    {
      paramAnnotated = ((AnnotatedParameter)paramAnnotated).getDeclaringClass();
      if (paramAnnotated == null) {
        break label207;
      }
      if (!paramBoolean3) {}
    }
    else
    {
      for (localObject = paramAnnotated.getSuperclass();; localObject = ((Class)localObject).getSuperclass())
      {
        if ((localObject == null) || (localObject == Object.class)) {
          break label187;
        }
        Annotation localAnnotation = ((Class)localObject).getAnnotation(paramClass);
        if (localAnnotation != null)
        {
          return localAnnotation;
          localObject = paramAnnotated.getAnnotated();
          if ((localObject instanceof Member))
          {
            localObject = ((Member)localObject).getDeclaringClass();
            paramAnnotated = (Annotated)localObject;
            if (!paramBoolean2) {
              break;
            }
            localAnnotation = ((Class)localObject).getAnnotation(paramClass);
            paramAnnotated = (Annotated)localObject;
            if (localAnnotation == null) {
              break;
            }
            return localAnnotation;
          }
          if ((localObject instanceof Class))
          {
            paramAnnotated = (Class)localObject;
            break;
          }
          throw new IllegalStateException("Unsupported annotated member: " + paramAnnotated.getClass().getName());
        }
      }
    }
    label187:
    if ((paramBoolean1) && (paramAnnotated.getPackage() != null)) {
      return paramAnnotated.getPackage().getAnnotation(paramClass);
    }
    label207:
    return null;
  }
  
  public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass paramAnnotatedClass, VisibilityChecker<?> paramVisibilityChecker)
  {
    paramAnnotatedClass = findAccessType(paramAnnotatedClass);
    if (paramAnnotatedClass == null) {
      return paramVisibilityChecker;
    }
    switch (paramAnnotatedClass)
    {
    default: 
      return paramVisibilityChecker;
    case ???: 
      return paramVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.ANY).withSetterVisibility(JsonAutoDetect.Visibility.NONE).withGetterVisibility(JsonAutoDetect.Visibility.NONE).withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
    case ???: 
      return paramVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.NONE).withSetterVisibility(JsonAutoDetect.Visibility.NONE).withGetterVisibility(JsonAutoDetect.Visibility.NONE).withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
    case ???: 
      return paramVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.NONE).withSetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY).withGetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY).withIsGetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY);
    }
    return paramVisibilityChecker.withFieldVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY).withSetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY).withGetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY).withIsGetterVisibility(JsonAutoDetect.Visibility.PUBLIC_ONLY);
  }
  
  public Boolean findCachability(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (JsonCachable)paramAnnotatedClass.getAnnotation(JsonCachable.class);
    if (paramAnnotatedClass != null)
    {
      if (paramAnnotatedClass.value()) {
        return Boolean.TRUE;
      }
      return Boolean.FALSE;
    }
    return null;
  }
  
  public Class<JsonDeserializer<?>> findContentDeserializer(Annotated paramAnnotated)
  {
    return null;
  }
  
  public String findDeserializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    Object localObject = null;
    if (!isVisible(paramAnnotatedField)) {}
    String str;
    do
    {
      return (String)localObject;
      str = findJaxbPropertyName(paramAnnotatedField, paramAnnotatedField.getRawType(), null);
      localObject = str;
    } while (str != null);
    return paramAnnotatedField.getName();
  }
  
  public Class<?> findDeserializationContentType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    return _doFindDeserializationType(paramAnnotated, paramJavaType, paramString);
  }
  
  public Class<?> findDeserializationKeyType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    return null;
  }
  
  public Class<?> findDeserializationType(Annotated paramAnnotated, JavaType paramJavaType, String paramString)
  {
    if (!paramJavaType.isContainerType()) {
      return _doFindDeserializationType(paramAnnotated, paramJavaType, paramString);
    }
    return null;
  }
  
  public JsonDeserializer<?> findDeserializer(Annotated paramAnnotated)
  {
    XmlAdapter localXmlAdapter = findAdapter(paramAnnotated, false);
    if (localXmlAdapter != null) {
      return new XmlAdapterJsonDeserializer(localXmlAdapter);
    }
    paramAnnotated = paramAnnotated.getRawType();
    if ((paramAnnotated != null) && (_dataHandlerDeserializer != null) && (isDataHandler(paramAnnotated))) {
      return _dataHandlerDeserializer;
    }
    return null;
  }
  
  public String findEnumValue(Enum<?> paramEnum)
  {
    Class localClass = paramEnum.getDeclaringClass();
    String str = paramEnum.name();
    try
    {
      XmlEnumValue localXmlEnumValue = (XmlEnumValue)localClass.getDeclaredField(str).getAnnotation(XmlEnumValue.class);
      paramEnum = str;
      if (localXmlEnumValue != null) {
        paramEnum = localXmlEnumValue.value();
      }
      return paramEnum;
    }
    catch (NoSuchFieldException paramEnum)
    {
      throw new IllegalStateException("Could not locate Enum entry '" + str + "' (Enum class " + localClass.getName() + ")", paramEnum);
    }
  }
  
  public String findGettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    if (!isVisible(paramAnnotatedMethod)) {
      paramAnnotatedMethod = null;
    }
    String str;
    do
    {
      return paramAnnotatedMethod;
      str = findJaxbPropertyName(paramAnnotatedMethod, paramAnnotatedMethod.getRawType(), BeanUtil.okNameForGetter(paramAnnotatedMethod));
      paramAnnotatedMethod = str;
    } while (str != null);
    return str;
  }
  
  public Boolean findIgnoreUnknownProperties(AnnotatedClass paramAnnotatedClass)
  {
    return null;
  }
  
  public Class<KeyDeserializer> findKeyDeserializer(Annotated paramAnnotated)
  {
    return null;
  }
  
  public String[] findPropertiesToIgnore(AnnotatedClass paramAnnotatedClass)
  {
    return null;
  }
  
  public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (!paramJavaType.isContainerType()) {
      throw new IllegalArgumentException("Must call method with a container type (got " + paramJavaType + ")");
    }
    return _typeResolverFromXmlElements(paramAnnotatedMember);
  }
  
  public String findPropertyNameForParam(AnnotatedParameter paramAnnotatedParameter)
  {
    return null;
  }
  
  public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedMember paramAnnotatedMember, JavaType paramJavaType)
  {
    if (paramJavaType.isContainerType()) {
      return null;
    }
    return _typeResolverFromXmlElements(paramAnnotatedMember);
  }
  
  public String findRootName(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = findRootElementAnnotation(paramAnnotatedClass);
    if (paramAnnotatedClass != null)
    {
      String str = paramAnnotatedClass.name();
      paramAnnotatedClass = str;
      if ("##default".equals(str)) {
        paramAnnotatedClass = "";
      }
      return paramAnnotatedClass;
    }
    return null;
  }
  
  public String findSerializablePropertyName(AnnotatedField paramAnnotatedField)
  {
    Object localObject = null;
    if (!isVisible(paramAnnotatedField)) {}
    String str;
    do
    {
      return (String)localObject;
      str = findJaxbPropertyName(paramAnnotatedField, paramAnnotatedField.getRawType(), null);
      localObject = str;
    } while (str != null);
    return paramAnnotatedField.getName();
  }
  
  public JsonSerialize.Inclusion findSerializationInclusion(Annotated paramAnnotated, JsonSerialize.Inclusion paramInclusion)
  {
    XmlElementWrapper localXmlElementWrapper = (XmlElementWrapper)paramAnnotated.getAnnotation(XmlElementWrapper.class);
    if (localXmlElementWrapper != null)
    {
      if (localXmlElementWrapper.nillable()) {
        return JsonSerialize.Inclusion.ALWAYS;
      }
      return JsonSerialize.Inclusion.NON_NULL;
    }
    paramAnnotated = (XmlElement)paramAnnotated.getAnnotation(XmlElement.class);
    if (paramAnnotated != null)
    {
      if (paramAnnotated.nillable()) {
        return JsonSerialize.Inclusion.ALWAYS;
      }
      return JsonSerialize.Inclusion.NON_NULL;
    }
    return paramInclusion;
  }
  
  public String[] findSerializationPropertyOrder(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (XmlType)findAnnotation(XmlType.class, paramAnnotatedClass, true, true, true);
    if (paramAnnotatedClass == null) {
      paramAnnotatedClass = null;
    }
    String[] arrayOfString;
    do
    {
      return paramAnnotatedClass;
      arrayOfString = paramAnnotatedClass.propOrder();
      if (arrayOfString == null) {
        break;
      }
      paramAnnotatedClass = arrayOfString;
    } while (arrayOfString.length != 0);
    return null;
  }
  
  public Boolean findSerializationSortAlphabetically(AnnotatedClass paramAnnotatedClass)
  {
    boolean bool = true;
    paramAnnotatedClass = (XmlAccessorOrder)findAnnotation(XmlAccessorOrder.class, paramAnnotatedClass, true, true, true);
    if (paramAnnotatedClass == null) {
      return null;
    }
    if (paramAnnotatedClass.value() == XmlAccessOrder.ALPHABETICAL) {}
    for (;;)
    {
      return Boolean.valueOf(bool);
      bool = false;
    }
  }
  
  public Class<?> findSerializationType(Annotated paramAnnotated)
  {
    Object localObject = (XmlElement)findAnnotation(XmlElement.class, paramAnnotated, false, false, false);
    if ((localObject == null) || (((XmlElement)localObject).type() == XmlElement.DEFAULT.class)) {
      localObject = null;
    }
    do
    {
      return (Class<?>)localObject;
      if (isIndexedType(paramAnnotated.getRawType())) {
        return null;
      }
      localObject = ((XmlElement)localObject).type();
    } while (paramAnnotated.getAnnotation(XmlJavaTypeAdapter.class) == null);
    return null;
  }
  
  public JsonSerialize.Typing findSerializationTyping(Annotated paramAnnotated)
  {
    return null;
  }
  
  public Class<?>[] findSerializationViews(Annotated paramAnnotated)
  {
    return null;
  }
  
  public JsonSerializer<?> findSerializer(Annotated paramAnnotated)
  {
    XmlAdapter localXmlAdapter = findAdapter(paramAnnotated, true);
    if (localXmlAdapter != null) {
      return new XmlAdapterJsonSerializer(localXmlAdapter);
    }
    paramAnnotated = paramAnnotated.getRawType();
    if ((paramAnnotated != null) && (_dataHandlerSerializer != null) && (isDataHandler(paramAnnotated))) {
      return _dataHandlerSerializer;
    }
    return null;
  }
  
  public String findSettablePropertyName(AnnotatedMethod paramAnnotatedMethod)
  {
    if (!isVisible(paramAnnotatedMethod)) {
      return null;
    }
    return findJaxbPropertyName(paramAnnotatedMethod, paramAnnotatedMethod.getParameterClass(0), BeanUtil.okNameForSetter(paramAnnotatedMethod));
  }
  
  public List<NamedType> findSubtypes(Annotated paramAnnotated)
  {
    Object localObject2 = (XmlElements)findAnnotation(XmlElements.class, paramAnnotated, false, false, false);
    Object localObject1;
    Object localObject3;
    int j;
    int i;
    Class localClass;
    if (localObject2 != null)
    {
      localObject1 = new ArrayList();
      localObject3 = ((XmlElements)localObject2).value();
      j = localObject3.length;
      i = 0;
      for (;;)
      {
        paramAnnotated = (Annotated)localObject1;
        if (i >= j) {
          break;
        }
        localClass = localObject3[i];
        localObject2 = localClass.name();
        paramAnnotated = (Annotated)localObject2;
        if ("##default".equals(localObject2)) {
          paramAnnotated = null;
        }
        ((ArrayList)localObject1).add(new NamedType(localClass.type(), paramAnnotated));
        i += 1;
      }
    }
    paramAnnotated = (XmlElementRefs)findAnnotation(XmlElementRefs.class, paramAnnotated, false, false, false);
    if (paramAnnotated != null)
    {
      localObject2 = new ArrayList();
      localObject3 = paramAnnotated.value();
      j = localObject3.length;
      i = 0;
      for (;;)
      {
        paramAnnotated = (Annotated)localObject2;
        if (i >= j) {
          break;
        }
        paramAnnotated = localObject3[i];
        localClass = paramAnnotated.type();
        if (!JAXBElement.class.isAssignableFrom(localClass))
        {
          localObject1 = paramAnnotated.name();
          if (localObject1 != null)
          {
            paramAnnotated = (Annotated)localObject1;
            if (!"##default".equals(localObject1)) {}
          }
          else
          {
            XmlRootElement localXmlRootElement = (XmlRootElement)localClass.getAnnotation(XmlRootElement.class);
            paramAnnotated = (Annotated)localObject1;
            if (localXmlRootElement != null) {
              paramAnnotated = localXmlRootElement.name();
            }
          }
          if (paramAnnotated != null)
          {
            localObject1 = paramAnnotated;
            if (!"##default".equals(paramAnnotated)) {}
          }
          else
          {
            localObject1 = Introspector.decapitalize(localClass.getSimpleName());
          }
          ((ArrayList)localObject2).add(new NamedType(localClass, (String)localObject1));
        }
        i += 1;
      }
    }
    paramAnnotated = null;
    return paramAnnotated;
  }
  
  public String findTypeName(AnnotatedClass paramAnnotatedClass)
  {
    paramAnnotatedClass = (XmlType)findAnnotation(XmlType.class, paramAnnotatedClass, false, false, false);
    if (paramAnnotatedClass != null)
    {
      paramAnnotatedClass = paramAnnotatedClass.name();
      if (!"##default".equals(paramAnnotatedClass)) {
        return paramAnnotatedClass;
      }
    }
    return null;
  }
  
  public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> paramMapperConfig, AnnotatedClass paramAnnotatedClass, JavaType paramJavaType)
  {
    return null;
  }
  
  public boolean hasAnySetterAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return false;
  }
  
  public boolean hasAsValueAnnotation(AnnotatedMethod paramAnnotatedMethod)
  {
    return false;
  }
  
  public boolean hasCreatorAnnotation(Annotated paramAnnotated)
  {
    return false;
  }
  
  public boolean hasIgnoreMarker(AnnotatedMember paramAnnotatedMember)
  {
    return paramAnnotatedMember.getAnnotation(XmlTransient.class) != null;
  }
  
  public boolean isHandled(Annotation paramAnnotation)
  {
    Class localClass = paramAnnotation.annotationType();
    paramAnnotation = localClass.getPackage();
    if (paramAnnotation != null)
    {
      paramAnnotation = paramAnnotation.getName();
      if (!paramAnnotation.startsWith(_jaxbPackageName)) {
        break label42;
      }
    }
    label42:
    while (localClass == JsonCachable.class)
    {
      return true;
      paramAnnotation = localClass.getName();
      break;
    }
    return false;
  }
  
  public boolean isIgnorableConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    return false;
  }
  
  public boolean isIgnorableField(AnnotatedField paramAnnotatedField)
  {
    return paramAnnotatedField.getAnnotation(XmlTransient.class) != null;
  }
  
  public boolean isIgnorableMethod(AnnotatedMethod paramAnnotatedMethod)
  {
    return paramAnnotatedMethod.getAnnotation(XmlTransient.class) != null;
  }
  
  public Boolean isIgnorableType(AnnotatedClass paramAnnotatedClass)
  {
    return null;
  }
  
  public Version version()
  {
    return VersionUtil.versionFor(getClass());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.JaxbAnnotationIntrospector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */