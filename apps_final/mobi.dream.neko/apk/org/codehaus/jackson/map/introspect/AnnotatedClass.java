package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.ClassIntrospector.MixInResolver;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.ClassUtil;

public final class AnnotatedClass
  extends Annotated
{
  private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final Class<?> _class;
  protected AnnotationMap _classAnnotations;
  protected List<AnnotatedConstructor> _constructors;
  protected List<AnnotatedMethod> _creatorMethods;
  protected AnnotatedConstructor _defaultConstructor;
  protected List<AnnotatedField> _fields;
  protected AnnotatedMethodMap _memberMethods;
  protected final ClassIntrospector.MixInResolver _mixInResolver;
  protected final Class<?> _primaryMixIn;
  protected final List<Class<?>> _superTypes;
  
  private AnnotatedClass(Class<?> paramClass, List<Class<?>> paramList, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver, AnnotationMap paramAnnotationMap)
  {
    _class = paramClass;
    _superTypes = paramList;
    _annotationIntrospector = paramAnnotationIntrospector;
    _mixInResolver = paramMixInResolver;
    if (_mixInResolver == null) {}
    for (paramClass = null;; paramClass = _mixInResolver.findMixInClassFor(_class))
    {
      _primaryMixIn = paramClass;
      _classAnnotations = paramAnnotationMap;
      return;
    }
  }
  
  private AnnotationMap _emptyAnnotationMap()
  {
    return new AnnotationMap();
  }
  
  private AnnotationMap[] _emptyAnnotationMaps(int paramInt)
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = NO_ANNOTATION_MAPS;
      return (AnnotationMap[])localObject;
    }
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[paramInt];
    int i = 0;
    for (;;)
    {
      localObject = arrayOfAnnotationMap;
      if (i >= paramInt) {
        break;
      }
      arrayOfAnnotationMap[i] = _emptyAnnotationMap();
      i += 1;
    }
  }
  
  private boolean _isIncludableField(Field paramField)
  {
    if (paramField.isSynthetic()) {}
    int i;
    do
    {
      return false;
      i = paramField.getModifiers();
    } while ((Modifier.isStatic(i)) || (Modifier.isTransient(i)));
    return true;
  }
  
  public static AnnotatedClass construct(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    paramClass = new AnnotatedClass(paramClass, ClassUtil.findSuperTypes(paramClass, null), paramAnnotationIntrospector, paramMixInResolver, null);
    paramClass.resolveClassAnnotations();
    return paramClass;
  }
  
  public static AnnotatedClass constructWithoutSuperTypes(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    paramClass = new AnnotatedClass(paramClass, Collections.emptyList(), paramAnnotationIntrospector, paramMixInResolver, null);
    paramClass.resolveClassAnnotations();
    return paramClass;
  }
  
  protected void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass)
  {
    if (_mixInResolver != null) {
      _addClassMixIns(paramAnnotationMap, paramClass, _mixInResolver.findMixInClassFor(paramClass));
    }
  }
  
  protected void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2 == null) {
      return;
    }
    Annotation[] arrayOfAnnotation = paramClass2.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotationMap.addIfNotPresent(localAnnotation);
      }
      i += 1;
    }
    paramClass1 = ClassUtil.findSuperTypes(paramClass2, paramClass1).iterator();
    while (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredAnnotations();
      j = paramClass2.length;
      i = 0;
      while (i < j)
      {
        arrayOfAnnotation = paramClass2[i];
        if (_annotationIntrospector.isHandled(arrayOfAnnotation)) {
          paramAnnotationMap.addIfNotPresent(arrayOfAnnotation);
        }
        i += 1;
      }
    }
  }
  
  protected void _addConstructorMixIns(Class<?> paramClass)
  {
    Object localObject1 = null;
    int i;
    int j;
    label26:
    Constructor localConstructor;
    Object localObject2;
    if (_constructors == null)
    {
      i = 0;
      Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
      int m = arrayOfConstructor.length;
      j = 0;
      if (j >= m) {
        return;
      }
      localConstructor = arrayOfConstructor[j];
      if (localConstructor.getParameterTypes().length != 0) {
        break label96;
      }
      localObject2 = localObject1;
      if (_defaultConstructor != null)
      {
        _addMixOvers(localConstructor, _defaultConstructor, false);
        localObject2 = localObject1;
      }
    }
    for (;;)
    {
      j += 1;
      localObject1 = localObject2;
      break label26;
      i = _constructors.size();
      break;
      label96:
      paramClass = (Class<?>)localObject1;
      if (localObject1 == null)
      {
        localObject1 = new MemberKey[i];
        k = 0;
        for (;;)
        {
          paramClass = (Class<?>)localObject1;
          if (k >= i) {
            break;
          }
          localObject1[k] = new MemberKey(((AnnotatedConstructor)_constructors.get(k)).getAnnotated());
          k += 1;
        }
      }
      localObject1 = new MemberKey(localConstructor);
      int k = 0;
      for (;;)
      {
        localObject2 = paramClass;
        if (k >= i) {
          break;
        }
        if (((MemberKey)localObject1).equals(paramClass[k])) {
          break label199;
        }
        k += 1;
      }
      label199:
      _addMixOvers(localConstructor, (AnnotatedConstructor)_constructors.get(k), true);
      localObject2 = paramClass;
    }
  }
  
  protected void _addFactoryMixIns(Class<?> paramClass)
  {
    Object localObject1 = null;
    int k = _creatorMethods.size();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int m = arrayOfMethod.length;
    int i = 0;
    if (i < m)
    {
      Method localMethod = arrayOfMethod[i];
      Object localObject2;
      if (!Modifier.isStatic(localMethod.getModifiers())) {
        localObject2 = localObject1;
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
        if (localMethod.getParameterTypes().length != 0)
        {
          paramClass = (Class<?>)localObject1;
          if (localObject1 == null)
          {
            localObject1 = new MemberKey[k];
            j = 0;
            for (;;)
            {
              paramClass = (Class<?>)localObject1;
              if (j >= k) {
                break;
              }
              localObject1[j] = new MemberKey(((AnnotatedMethod)_creatorMethods.get(j)).getAnnotated());
              j += 1;
            }
          }
          localObject1 = new MemberKey(localMethod);
          int j = 0;
          for (;;)
          {
            localObject2 = paramClass;
            if (j >= k) {
              break;
            }
            if (((MemberKey)localObject1).equals(paramClass[j])) {
              break label179;
            }
            j += 1;
          }
          label179:
          _addMixOvers(localMethod, (AnnotatedMethod)_creatorMethods.get(j), true);
          localObject2 = paramClass;
        }
      }
    }
  }
  
  protected void _addFieldMixIns(Class<?> paramClass1, Class<?> paramClass2, Map<String, AnnotatedField> paramMap)
  {
    Object localObject1 = new ArrayList();
    ((List)localObject1).add(paramClass2);
    ClassUtil.findSuperTypes(paramClass2, paramClass1, (List)localObject1);
    paramClass1 = ((List)localObject1).iterator();
    if (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredFields();
      int k = paramClass2.length;
      int i = 0;
      label63:
      Object localObject2;
      if (i < k)
      {
        localObject2 = paramClass2[i];
        if (_isIncludableField((Field)localObject2)) {
          break label94;
        }
      }
      for (;;)
      {
        i += 1;
        break label63;
        break;
        label94:
        localObject1 = (AnnotatedField)paramMap.get(((Field)localObject2).getName());
        if (localObject1 != null)
        {
          localObject2 = ((Field)localObject2).getDeclaredAnnotations();
          int m = localObject2.length;
          int j = 0;
          while (j < m)
          {
            Annotation localAnnotation = localObject2[j];
            if (_annotationIntrospector.isHandled(localAnnotation)) {
              ((AnnotatedField)localObject1).addOrOverride(localAnnotation);
            }
            j += 1;
          }
        }
      }
    }
  }
  
  protected void _addFields(Map<String, AnnotatedField> paramMap, Class<?> paramClass)
  {
    Class localClass = paramClass.getSuperclass();
    if (localClass != null)
    {
      _addFields(paramMap, localClass);
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      if (i < j)
      {
        Field localField = arrayOfField[i];
        if (!_isIncludableField(localField)) {}
        for (;;)
        {
          i += 1;
          break;
          paramMap.put(localField.getName(), _constructField(localField));
        }
      }
      if (_mixInResolver != null)
      {
        paramClass = _mixInResolver.findMixInClassFor(paramClass);
        if (paramClass != null) {
          _addFieldMixIns(localClass, paramClass, paramMap);
        }
      }
    }
  }
  
  protected void _addMemberMethods(Class<?> paramClass1, MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    if (paramClass2 != null) {
      _addMethodMixIns(paramClass1, paramMethodFilter, paramAnnotatedMethodMap1, paramClass2, paramAnnotatedMethodMap2);
    }
    if (paramClass1 == null) {
      return;
    }
    paramClass1 = paramClass1.getDeclaredMethods();
    int j = paramClass1.length;
    int i = 0;
    label33:
    if (i < j)
    {
      paramClass2 = paramClass1[i];
      if (_isIncludableMethod(paramClass2, paramMethodFilter)) {
        break label65;
      }
    }
    for (;;)
    {
      i += 1;
      break label33;
      break;
      label65:
      AnnotatedMethod localAnnotatedMethod = paramAnnotatedMethodMap1.find(paramClass2);
      if (localAnnotatedMethod == null)
      {
        localAnnotatedMethod = _constructMethod(paramClass2);
        paramAnnotatedMethodMap1.add(localAnnotatedMethod);
        paramClass2 = paramAnnotatedMethodMap2.remove(paramClass2);
        if (paramClass2 != null) {
          _addMixOvers(paramClass2.getAnnotated(), localAnnotatedMethod, false);
        }
      }
      else
      {
        _addMixUnders(paramClass2, localAnnotatedMethod);
        if ((localAnnotatedMethod.getDeclaringClass().isInterface()) && (!paramClass2.getDeclaringClass().isInterface())) {
          paramAnnotatedMethodMap1.add(localAnnotatedMethod.withMethod(paramClass2));
        }
      }
    }
  }
  
  protected void _addMethodMixIns(Class<?> paramClass1, MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramClass2);
    ClassUtil.findSuperTypes(paramClass2, paramClass1, localArrayList);
    paramClass1 = localArrayList.iterator();
    if (paramClass1.hasNext())
    {
      paramClass2 = ((Class)paramClass1.next()).getDeclaredMethods();
      int j = paramClass2.length;
      int i = 0;
      label67:
      if (i < j)
      {
        localArrayList = paramClass2[i];
        if (_isIncludableMethod(localArrayList, paramMethodFilter)) {
          break label100;
        }
      }
      for (;;)
      {
        i += 1;
        break label67;
        break;
        label100:
        AnnotatedMethod localAnnotatedMethod = paramAnnotatedMethodMap1.find(localArrayList);
        if (localAnnotatedMethod != null) {
          _addMixUnders(localArrayList, localAnnotatedMethod);
        } else {
          paramAnnotatedMethodMap2.add(_constructMethod(localArrayList));
        }
      }
    }
  }
  
  protected void _addMixOvers(Constructor<?> paramConstructor, AnnotatedConstructor paramAnnotatedConstructor, boolean paramBoolean)
  {
    Annotation[] arrayOfAnnotation = paramConstructor.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedConstructor.addOrOverride(localAnnotation);
      }
      i += 1;
    }
    if (paramBoolean)
    {
      paramConstructor = paramConstructor.getParameterAnnotations();
      i = 0;
      int k = paramConstructor.length;
      while (i < k)
      {
        arrayOfAnnotation = paramConstructor[i];
        int m = arrayOfAnnotation.length;
        j = 0;
        while (j < m)
        {
          paramAnnotatedConstructor.addOrOverrideParam(i, arrayOfAnnotation[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected void _addMixOvers(Method paramMethod, AnnotatedMethod paramAnnotatedMethod, boolean paramBoolean)
  {
    Annotation[] arrayOfAnnotation = paramMethod.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedMethod.addOrOverride(localAnnotation);
      }
      i += 1;
    }
    if (paramBoolean)
    {
      paramMethod = paramMethod.getParameterAnnotations();
      i = 0;
      int k = paramMethod.length;
      while (i < k)
      {
        arrayOfAnnotation = paramMethod[i];
        int m = arrayOfAnnotation.length;
        j = 0;
        while (j < m)
        {
          paramAnnotatedMethod.addOrOverrideParam(i, arrayOfAnnotation[j]);
          j += 1;
        }
        i += 1;
      }
    }
  }
  
  protected void _addMixUnders(Method paramMethod, AnnotatedMethod paramAnnotatedMethod)
  {
    paramMethod = paramMethod.getDeclaredAnnotations();
    int j = paramMethod.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = paramMethod[i];
      if (_annotationIntrospector.isHandled(localAnnotation)) {
        paramAnnotatedMethod.addIfNotPresent(localAnnotation);
      }
      i += 1;
    }
  }
  
  protected AnnotationMap _collectRelevantAnnotations(Annotation[] paramArrayOfAnnotation)
  {
    AnnotationMap localAnnotationMap = new AnnotationMap();
    if (paramArrayOfAnnotation != null)
    {
      int j = paramArrayOfAnnotation.length;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[i];
        if (_annotationIntrospector.isHandled(localAnnotation)) {
          localAnnotationMap.add(localAnnotation);
        }
        i += 1;
      }
    }
    return localAnnotationMap;
  }
  
  protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] paramArrayOfAnnotation)
  {
    int j = paramArrayOfAnnotation.length;
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[j];
    int i = 0;
    while (i < j)
    {
      arrayOfAnnotationMap[i] = _collectRelevantAnnotations(paramArrayOfAnnotation[i]);
      i += 1;
    }
    return arrayOfAnnotationMap;
  }
  
  protected AnnotatedConstructor _constructConstructor(Constructor<?> paramConstructor, boolean paramBoolean)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedConstructor(paramConstructor, _emptyAnnotationMap(), _emptyAnnotationMaps(paramConstructor.getParameterTypes().length));
    }
    if (paramBoolean) {
      return new AnnotatedConstructor(paramConstructor, _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations()), null);
    }
    Object localObject3 = paramConstructor.getParameterAnnotations();
    int i = paramConstructor.getParameterTypes().length;
    Object localObject4 = null;
    if (i != localObject3.length)
    {
      Class localClass = paramConstructor.getDeclaringClass();
      Object localObject2;
      Object localObject1;
      if ((localClass.isEnum()) && (i == localObject3.length + 2))
      {
        localObject2 = new Annotation[localObject3.length + 2][];
        System.arraycopy(localObject3, 0, localObject2, 2, localObject3.length);
        localObject1 = _collectRelevantAnnotations((Annotation[][])localObject2);
      }
      for (;;)
      {
        localObject3 = localObject1;
        if (localObject1 != null) {
          break;
        }
        throw new IllegalStateException("Internal error: constructor for " + paramConstructor.getDeclaringClass().getName() + " has mismatch: " + i + " parameters; " + localObject2.length + " sets of annotations");
        localObject2 = localObject3;
        localObject1 = localObject4;
        if (localClass.isMemberClass())
        {
          localObject2 = localObject3;
          localObject1 = localObject4;
          if (i == localObject3.length + 1)
          {
            localObject2 = new Annotation[localObject3.length + 1][];
            System.arraycopy(localObject3, 0, localObject2, 1, localObject3.length);
            localObject1 = _collectRelevantAnnotations((Annotation[][])localObject2);
          }
        }
      }
    }
    localObject3 = _collectRelevantAnnotations((Annotation[][])localObject3);
    return new AnnotatedConstructor(paramConstructor, _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations()), (AnnotationMap[])localObject3);
  }
  
  protected AnnotatedMethod _constructCreatorMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), _emptyAnnotationMaps(paramMethod.getParameterTypes().length));
    }
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), _collectRelevantAnnotations(paramMethod.getParameterAnnotations()));
  }
  
  protected AnnotatedField _constructField(Field paramField)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedField(paramField, _emptyAnnotationMap());
    }
    return new AnnotatedField(paramField, _collectRelevantAnnotations(paramField.getDeclaredAnnotations()));
  }
  
  protected AnnotatedMethod _constructMethod(Method paramMethod)
  {
    if (_annotationIntrospector == null) {
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), null);
    }
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), null);
  }
  
  protected boolean _isIncludableMethod(Method paramMethod, MethodFilter paramMethodFilter)
  {
    if ((paramMethodFilter != null) && (!paramMethodFilter.includeMethod(paramMethod))) {}
    while ((paramMethod.isSynthetic()) || (paramMethod.isBridge())) {
      return false;
    }
    return true;
  }
  
  public Iterable<AnnotatedField> fields()
  {
    if (_fields == null) {
      return Collections.emptyList();
    }
    return _fields;
  }
  
  public AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    return _memberMethods.find(paramString, paramArrayOfClass);
  }
  
  protected AnnotationMap getAllAnnotations()
  {
    return _classAnnotations;
  }
  
  public Class<?> getAnnotated()
  {
    return _class;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_classAnnotations == null) {
      return null;
    }
    return _classAnnotations.get(paramClass);
  }
  
  public Annotations getAnnotations()
  {
    return _classAnnotations;
  }
  
  public List<AnnotatedConstructor> getConstructors()
  {
    if (_constructors == null) {
      return Collections.emptyList();
    }
    return _constructors;
  }
  
  public AnnotatedConstructor getDefaultConstructor()
  {
    return _defaultConstructor;
  }
  
  public int getFieldCount()
  {
    if (_fields == null) {
      return 0;
    }
    return _fields.size();
  }
  
  public Type getGenericType()
  {
    return _class;
  }
  
  public int getMemberMethodCount()
  {
    return _memberMethods.size();
  }
  
  public int getModifiers()
  {
    return _class.getModifiers();
  }
  
  public String getName()
  {
    return _class.getName();
  }
  
  public Class<?> getRawType()
  {
    return _class;
  }
  
  public List<AnnotatedMethod> getStaticMethods()
  {
    if (_creatorMethods == null) {
      return Collections.emptyList();
    }
    return _creatorMethods;
  }
  
  public boolean hasAnnotations()
  {
    return _classAnnotations.size() > 0;
  }
  
  public Iterable<AnnotatedMethod> memberMethods()
  {
    return _memberMethods;
  }
  
  public void resolveClassAnnotations()
  {
    _classAnnotations = new AnnotationMap();
    if (_annotationIntrospector == null) {
      return;
    }
    if (_primaryMixIn != null) {
      _addClassMixIns(_classAnnotations, _class, _primaryMixIn);
    }
    Object localObject1 = _class.getDeclaredAnnotations();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = localObject1[i];
      if (_annotationIntrospector.isHandled((Annotation)localObject2)) {
        _classAnnotations.addIfNotPresent((Annotation)localObject2);
      }
      i += 1;
    }
    localObject1 = _superTypes.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Class)((Iterator)localObject1).next();
      _addClassMixIns(_classAnnotations, (Class)localObject2);
      localObject2 = ((Class)localObject2).getDeclaredAnnotations();
      j = localObject2.length;
      i = 0;
      while (i < j)
      {
        Annotation localAnnotation = localObject2[i];
        if (_annotationIntrospector.isHandled(localAnnotation)) {
          _classAnnotations.addIfNotPresent(localAnnotation);
        }
        i += 1;
      }
    }
    _addClassMixIns(_classAnnotations, Object.class);
  }
  
  public void resolveCreators(boolean paramBoolean)
  {
    _constructors = null;
    Object localObject = _class.getDeclaredConstructors();
    int j = localObject.length;
    int i = 0;
    Constructor localConstructor;
    if (i < j)
    {
      localConstructor = localObject[i];
      if (localConstructor.getParameterTypes().length == 0) {
        _defaultConstructor = _constructConstructor(localConstructor, true);
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramBoolean)
        {
          if (_constructors == null) {
            _constructors = new ArrayList(Math.max(10, localObject.length));
          }
          _constructors.add(_constructConstructor(localConstructor, false));
        }
      }
    }
    if ((_primaryMixIn != null) && ((_defaultConstructor != null) || (_constructors != null))) {
      _addConstructorMixIns(_primaryMixIn);
    }
    if (_annotationIntrospector != null)
    {
      if ((_defaultConstructor != null) && (_annotationIntrospector.isIgnorableConstructor(_defaultConstructor))) {
        _defaultConstructor = null;
      }
      if (_constructors != null)
      {
        i = _constructors.size();
        for (;;)
        {
          j = i - 1;
          if (j < 0) {
            break;
          }
          i = j;
          if (_annotationIntrospector.isIgnorableConstructor((AnnotatedConstructor)_constructors.get(j)))
          {
            _constructors.remove(j);
            i = j;
          }
        }
      }
    }
    _creatorMethods = null;
    if (paramBoolean)
    {
      localObject = _class.getDeclaredMethods();
      j = localObject.length;
      i = 0;
      if (i < j)
      {
        localConstructor = localObject[i];
        if (!Modifier.isStatic(localConstructor.getModifiers())) {}
        for (;;)
        {
          i += 1;
          break;
          if (localConstructor.getParameterTypes().length >= 1)
          {
            if (_creatorMethods == null) {
              _creatorMethods = new ArrayList(8);
            }
            _creatorMethods.add(_constructCreatorMethod(localConstructor));
          }
        }
      }
      if ((_primaryMixIn != null) && (_creatorMethods != null)) {
        _addFactoryMixIns(_primaryMixIn);
      }
      if ((_annotationIntrospector != null) && (_creatorMethods != null))
      {
        i = _creatorMethods.size();
        for (;;)
        {
          j = i - 1;
          if (j < 0) {
            break;
          }
          i = j;
          if (_annotationIntrospector.isIgnorableMethod((AnnotatedMethod)_creatorMethods.get(j)))
          {
            _creatorMethods.remove(j);
            i = j;
          }
        }
      }
    }
  }
  
  public void resolveFields()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    _addFields(localLinkedHashMap, _class);
    if (localLinkedHashMap.isEmpty())
    {
      _fields = Collections.emptyList();
      return;
    }
    _fields = new ArrayList(localLinkedHashMap.size());
    _fields.addAll(localLinkedHashMap.values());
  }
  
  @Deprecated
  public void resolveFields(boolean paramBoolean)
  {
    resolveFields();
  }
  
  public void resolveMemberMethods(MethodFilter paramMethodFilter)
  {
    _memberMethods = new AnnotatedMethodMap();
    Object localObject2 = new AnnotatedMethodMap();
    _addMemberMethods(_class, paramMethodFilter, _memberMethods, _primaryMixIn, (AnnotatedMethodMap)localObject2);
    Iterator localIterator = _superTypes.iterator();
    Object localObject1;
    if (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      if (_mixInResolver == null) {}
      for (localObject1 = null;; localObject1 = _mixInResolver.findMixInClassFor(localClass))
      {
        _addMemberMethods(localClass, paramMethodFilter, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
        break;
      }
    }
    if (_mixInResolver != null)
    {
      localObject1 = _mixInResolver.findMixInClassFor(Object.class);
      if (localObject1 != null) {
        _addMethodMixIns(_class, paramMethodFilter, _memberMethods, (Class)localObject1, (AnnotatedMethodMap)localObject2);
      }
    }
    if ((_annotationIntrospector != null) && (!((AnnotatedMethodMap)localObject2).isEmpty()))
    {
      paramMethodFilter = ((AnnotatedMethodMap)localObject2).iterator();
      while (paramMethodFilter.hasNext())
      {
        localObject1 = (AnnotatedMethod)paramMethodFilter.next();
        try
        {
          localObject2 = Object.class.getDeclaredMethod(((AnnotatedMethod)localObject1).getName(), ((AnnotatedMethod)localObject1).getParameterClasses());
          if (localObject2 != null)
          {
            localObject2 = _constructMethod((Method)localObject2);
            _addMixOvers(((AnnotatedMethod)localObject1).getAnnotated(), (AnnotatedMethod)localObject2, false);
            _memberMethods.add((AnnotatedMethod)localObject2);
          }
        }
        catch (Exception localException) {}
      }
    }
  }
  
  @Deprecated
  public void resolveMemberMethods(MethodFilter paramMethodFilter, boolean paramBoolean)
  {
    resolveMemberMethods(paramMethodFilter);
  }
  
  public String toString()
  {
    return "[AnnotedClass " + _class.getName() + "]";
  }
  
  public AnnotatedClass withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedClass(_class, _superTypes, _annotationIntrospector, _mixInResolver, paramAnnotationMap);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedClass
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */