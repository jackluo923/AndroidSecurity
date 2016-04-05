package org.codehaus.jackson.map.introspect;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.PropertyNamingStrategy;
import org.codehaus.jackson.map.util.BeanUtil;
import org.codehaus.jackson.type.JavaType;

public class POJOPropertiesCollector
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected LinkedList<AnnotatedMethod> _anyGetters = null;
  protected LinkedList<AnnotatedMethod> _anySetters = null;
  protected final AnnotatedClass _classDef;
  protected final MapperConfig<?> _config;
  protected LinkedList<POJOPropertyBuilder> _creatorProperties = null;
  protected final boolean _forSerialization;
  protected Set<String> _ignoredPropertyNames;
  protected Set<String> _ignoredPropertyNamesForDeser;
  protected LinkedHashMap<Object, AnnotatedMember> _injectables;
  protected LinkedList<AnnotatedMethod> _jsonValueGetters = null;
  protected final LinkedHashMap<String, POJOPropertyBuilder> _properties = new LinkedHashMap();
  protected final JavaType _type;
  protected final VisibilityChecker<?> _visibilityChecker;
  
  protected POJOPropertiesCollector(MapperConfig<?> paramMapperConfig, boolean paramBoolean, JavaType paramJavaType, AnnotatedClass paramAnnotatedClass)
  {
    _config = paramMapperConfig;
    _forSerialization = paramBoolean;
    _type = paramJavaType;
    _classDef = paramAnnotatedClass;
    paramJavaType = (JavaType)localObject;
    if (paramMapperConfig.isAnnotationProcessingEnabled()) {
      paramJavaType = _config.getAnnotationIntrospector();
    }
    _annotationIntrospector = paramJavaType;
    if (_annotationIntrospector == null)
    {
      _visibilityChecker = _config.getDefaultVisibilityChecker();
      return;
    }
    _visibilityChecker = _annotationIntrospector.findAutoDetectVisibility(paramAnnotatedClass, _config.getDefaultVisibilityChecker());
  }
  
  private void _addIgnored(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    if (_forSerialization) {}
    String str;
    do
    {
      return;
      str = paramPOJOPropertyBuilder.getName();
      _ignoredPropertyNames = addToSet(_ignoredPropertyNames, str);
    } while (!paramPOJOPropertyBuilder.anyDeserializeIgnorals());
    _ignoredPropertyNamesForDeser = addToSet(_ignoredPropertyNamesForDeser, str);
  }
  
  private Set<String> addToSet(Set<String> paramSet, String paramString)
  {
    Object localObject = paramSet;
    if (paramSet == null) {
      localObject = new HashSet();
    }
    ((Set)localObject).add(paramString);
    return (Set<String>)localObject;
  }
  
  protected void _addCreators()
  {
    AnnotationIntrospector localAnnotationIntrospector = _annotationIntrospector;
    if (localAnnotationIntrospector == null) {
      return;
    }
    Iterator localIterator = _classDef.getConstructors().iterator();
    Object localObject;
    int i;
    int j;
    AnnotatedParameter localAnnotatedParameter;
    String str;
    POJOPropertyBuilder localPOJOPropertyBuilder;
    while (localIterator.hasNext())
    {
      localObject = (AnnotatedConstructor)localIterator.next();
      if (_creatorProperties == null) {
        _creatorProperties = new LinkedList();
      }
      i = 0;
      j = ((AnnotatedConstructor)localObject).getParameterCount();
      while (i < j)
      {
        localAnnotatedParameter = ((AnnotatedConstructor)localObject).getParameter(i);
        str = localAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter);
        if (str != null)
        {
          localPOJOPropertyBuilder = _property(str);
          localPOJOPropertyBuilder.addCtor(localAnnotatedParameter, str, true, false);
          _creatorProperties.add(localPOJOPropertyBuilder);
        }
        i += 1;
      }
    }
    localIterator = _classDef.getStaticMethods().iterator();
    while (localIterator.hasNext())
    {
      localObject = (AnnotatedMethod)localIterator.next();
      if (_creatorProperties == null) {
        _creatorProperties = new LinkedList();
      }
      i = 0;
      j = ((AnnotatedMethod)localObject).getParameterCount();
      while (i < j)
      {
        localAnnotatedParameter = ((AnnotatedMethod)localObject).getParameter(i);
        str = localAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter);
        if (str != null)
        {
          localPOJOPropertyBuilder = _property(str);
          localPOJOPropertyBuilder.addCtor(localAnnotatedParameter, str, true, false);
          _creatorProperties.add(localPOJOPropertyBuilder);
        }
        i += 1;
      }
    }
  }
  
  protected void _addFields()
  {
    AnnotationIntrospector localAnnotationIntrospector = _annotationIntrospector;
    Iterator localIterator = _classDef.fields().iterator();
    if (localIterator.hasNext())
    {
      AnnotatedField localAnnotatedField = (AnnotatedField)localIterator.next();
      String str = localAnnotatedField.getName();
      Object localObject1;
      label55:
      Object localObject2;
      label75:
      boolean bool2;
      if (localAnnotationIntrospector == null)
      {
        localObject1 = null;
        localObject2 = localObject1;
        if ("".equals(localObject1)) {
          localObject2 = str;
        }
        if (localObject2 == null) {
          break label162;
        }
        bool1 = true;
        bool2 = bool1;
        if (!bool1) {
          bool2 = _visibilityChecker.isFieldVisible(localAnnotatedField);
        }
        if ((localAnnotationIntrospector == null) || (!localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedField))) {
          break label168;
        }
      }
      label162:
      label168:
      for (boolean bool1 = true;; bool1 = false)
      {
        _property(str).addField(localAnnotatedField, (String)localObject2, bool2, bool1);
        break;
        if (_forSerialization)
        {
          localObject1 = localAnnotationIntrospector.findSerializablePropertyName(localAnnotatedField);
          break label55;
        }
        localObject1 = localAnnotationIntrospector.findDeserializablePropertyName(localAnnotatedField);
        break label55;
        bool1 = false;
        break label75;
      }
    }
  }
  
  protected void _addInjectables()
  {
    AnnotationIntrospector localAnnotationIntrospector = _annotationIntrospector;
    if (localAnnotationIntrospector == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = _classDef.fields().iterator();
      Object localObject;
      while (localIterator.hasNext())
      {
        localObject = (AnnotatedField)localIterator.next();
        _doAddInjectable(localAnnotationIntrospector.findInjectableValueId((AnnotatedMember)localObject), (AnnotatedMember)localObject);
      }
      localIterator = _classDef.memberMethods().iterator();
      while (localIterator.hasNext())
      {
        localObject = (AnnotatedMethod)localIterator.next();
        if (((AnnotatedMethod)localObject).getParameterCount() == 1) {
          _doAddInjectable(localAnnotationIntrospector.findInjectableValueId((AnnotatedMember)localObject), (AnnotatedMember)localObject);
        }
      }
    }
  }
  
  protected void _addMethods()
  {
    AnnotationIntrospector localAnnotationIntrospector = _annotationIntrospector;
    Iterator localIterator = _classDef.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      int i = localAnnotatedMethod.getParameterCount();
      Object localObject1;
      label148:
      Object localObject2;
      boolean bool1;
      label195:
      boolean bool2;
      label232:
      label248:
      Object localObject3;
      if (i == 0)
      {
        if (localAnnotationIntrospector != null)
        {
          if (localAnnotationIntrospector.hasAnyGetterAnnotation(localAnnotatedMethod))
          {
            if (_anyGetters == null) {
              _anyGetters = new LinkedList();
            }
            _anyGetters.add(localAnnotatedMethod);
            continue;
          }
          if (localAnnotationIntrospector.hasAsValueAnnotation(localAnnotatedMethod))
          {
            if (_jsonValueGetters == null) {
              _jsonValueGetters = new LinkedList();
            }
            _jsonValueGetters.add(localAnnotatedMethod);
            continue;
          }
        }
        if (localAnnotationIntrospector == null)
        {
          localObject1 = null;
          if (localObject1 != null) {
            break label248;
          }
          localObject2 = BeanUtil.okNameForRegularGetter(localAnnotatedMethod, localAnnotatedMethod.getName());
          if (localObject2 != null) {
            break label232;
          }
          localObject2 = BeanUtil.okNameForIsGetter(localAnnotatedMethod, localAnnotatedMethod.getName());
          if (localObject2 == null) {
            continue;
          }
          bool1 = _visibilityChecker.isIsGetterVisible(localAnnotatedMethod);
          if (localAnnotationIntrospector != null) {
            break label285;
          }
        }
        label285:
        for (bool2 = false;; bool2 = localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedMethod))
        {
          _property((String)localObject2).addGetter(localAnnotatedMethod, (String)localObject1, bool1, bool2);
          break;
          localObject1 = localAnnotationIntrospector.findGettablePropertyName(localAnnotatedMethod);
          break label148;
          bool1 = _visibilityChecker.isGetterVisible(localAnnotatedMethod);
          break label195;
          localObject3 = BeanUtil.okNameForGetter(localAnnotatedMethod);
          localObject2 = localObject3;
          if (localObject3 == null) {
            localObject2 = localAnnotatedMethod.getName();
          }
          localObject3 = localObject1;
          if (((String)localObject1).length() == 0) {
            localObject3 = localObject2;
          }
          bool1 = true;
          localObject1 = localObject3;
          break label195;
        }
      }
      else if (i == 1)
      {
        if (localAnnotationIntrospector == null)
        {
          localObject1 = null;
          label310:
          if (localObject1 != null) {
            break label374;
          }
          localObject2 = BeanUtil.okNameForSetter(localAnnotatedMethod);
          if (localObject2 == null) {
            continue;
          }
          bool1 = _visibilityChecker.isSetterVisible(localAnnotatedMethod);
          label337:
          if (localAnnotationIntrospector != null) {
            break label411;
          }
        }
        label374:
        label411:
        for (bool2 = false;; bool2 = localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedMethod))
        {
          _property((String)localObject2).addSetter(localAnnotatedMethod, (String)localObject1, bool1, bool2);
          break;
          localObject1 = localAnnotationIntrospector.findSettablePropertyName(localAnnotatedMethod);
          break label310;
          localObject3 = BeanUtil.okNameForSetter(localAnnotatedMethod);
          localObject2 = localObject3;
          if (localObject3 == null) {
            localObject2 = localAnnotatedMethod.getName();
          }
          localObject3 = localObject1;
          if (((String)localObject1).length() == 0) {
            localObject3 = localObject2;
          }
          bool1 = true;
          localObject1 = localObject3;
          break label337;
        }
      }
      else if ((i == 2) && (localAnnotationIntrospector != null) && (localAnnotationIntrospector.hasAnySetterAnnotation(localAnnotatedMethod)))
      {
        if (_anySetters == null) {
          _anySetters = new LinkedList();
        }
        _anySetters.add(localAnnotatedMethod);
      }
    }
  }
  
  protected void _doAddInjectable(Object paramObject, AnnotatedMember paramAnnotatedMember)
  {
    if (paramObject == null) {}
    do
    {
      return;
      if (_injectables == null) {
        _injectables = new LinkedHashMap();
      }
    } while ((AnnotatedMember)_injectables.put(paramObject, paramAnnotatedMember) == null);
    if (paramObject == null) {}
    for (paramAnnotatedMember = "[null]";; paramAnnotatedMember = paramObject.getClass().getName()) {
      throw new IllegalArgumentException("Duplicate injectable value with id '" + String.valueOf(paramObject) + "' (of type " + paramAnnotatedMember + ")");
    }
  }
  
  protected POJOPropertyBuilder _property(String paramString)
  {
    POJOPropertyBuilder localPOJOPropertyBuilder2 = (POJOPropertyBuilder)_properties.get(paramString);
    POJOPropertyBuilder localPOJOPropertyBuilder1 = localPOJOPropertyBuilder2;
    if (localPOJOPropertyBuilder2 == null)
    {
      localPOJOPropertyBuilder1 = new POJOPropertyBuilder(paramString);
      _properties.put(paramString, localPOJOPropertyBuilder1);
    }
    return localPOJOPropertyBuilder1;
  }
  
  protected void _removeUnwantedProperties()
  {
    Iterator localIterator = _properties.entrySet().iterator();
    while (localIterator.hasNext())
    {
      POJOPropertyBuilder localPOJOPropertyBuilder = (POJOPropertyBuilder)((Map.Entry)localIterator.next()).getValue();
      if (!localPOJOPropertyBuilder.anyVisible())
      {
        localIterator.remove();
      }
      else if (localPOJOPropertyBuilder.anyIgnorals())
      {
        _addIgnored(localPOJOPropertyBuilder);
        if (!localPOJOPropertyBuilder.anyExplicitNames()) {
          localIterator.remove();
        } else {
          localPOJOPropertyBuilder.removeIgnored();
        }
      }
      else
      {
        localPOJOPropertyBuilder.removeNonVisible();
      }
    }
  }
  
  protected void _renameProperties()
  {
    Object localObject3 = _properties.entrySet().iterator();
    Object localObject1 = null;
    POJOPropertyBuilder localPOJOPropertyBuilder;
    Object localObject2;
    while (((Iterator)localObject3).hasNext())
    {
      localPOJOPropertyBuilder = (POJOPropertyBuilder)((Map.Entry)((Iterator)localObject3).next()).getValue();
      String str = localPOJOPropertyBuilder.findNewName();
      if (str != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new LinkedList();
        }
        ((LinkedList)localObject2).add(localPOJOPropertyBuilder.withName(str));
        ((Iterator)localObject3).remove();
        localObject1 = localObject2;
      }
    }
    if (localObject1 != null)
    {
      localObject1 = ((LinkedList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (POJOPropertyBuilder)((Iterator)localObject1).next();
        localObject3 = ((POJOPropertyBuilder)localObject2).getName();
        localPOJOPropertyBuilder = (POJOPropertyBuilder)_properties.get(localObject3);
        if (localPOJOPropertyBuilder == null) {
          _properties.put(localObject3, localObject2);
        } else {
          localPOJOPropertyBuilder.addAll((POJOPropertyBuilder)localObject2);
        }
      }
    }
  }
  
  protected void _renameUsing(PropertyNamingStrategy paramPropertyNamingStrategy)
  {
    POJOPropertyBuilder[] arrayOfPOJOPropertyBuilder = (POJOPropertyBuilder[])_properties.values().toArray(new POJOPropertyBuilder[_properties.size()]);
    _properties.clear();
    int j = arrayOfPOJOPropertyBuilder.length;
    int i = 0;
    if (i < j)
    {
      POJOPropertyBuilder localPOJOPropertyBuilder = arrayOfPOJOPropertyBuilder[i];
      Object localObject2 = localPOJOPropertyBuilder.getName();
      Object localObject1;
      if (_forSerialization) {
        if (localPOJOPropertyBuilder.hasGetter())
        {
          localObject1 = paramPropertyNamingStrategy.nameForGetterMethod(_config, localPOJOPropertyBuilder.getGetter(), (String)localObject2);
          label92:
          localObject2 = localPOJOPropertyBuilder;
          if (!((String)localObject1).equals(localPOJOPropertyBuilder.getName())) {
            localObject2 = localPOJOPropertyBuilder.withName((String)localObject1);
          }
          localPOJOPropertyBuilder = (POJOPropertyBuilder)_properties.get(localObject1);
          if (localPOJOPropertyBuilder != null) {
            break label285;
          }
          _properties.put(localObject1, localObject2);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        localObject1 = localObject2;
        if (!localPOJOPropertyBuilder.hasField()) {
          break label92;
        }
        localObject1 = paramPropertyNamingStrategy.nameForField(_config, localPOJOPropertyBuilder.getField(), (String)localObject2);
        break label92;
        if (localPOJOPropertyBuilder.hasSetter())
        {
          localObject1 = paramPropertyNamingStrategy.nameForSetterMethod(_config, localPOJOPropertyBuilder.getSetter(), (String)localObject2);
          break label92;
        }
        if (localPOJOPropertyBuilder.hasConstructorParameter())
        {
          localObject1 = paramPropertyNamingStrategy.nameForConstructorParameter(_config, localPOJOPropertyBuilder.getConstructorParameter(), (String)localObject2);
          break label92;
        }
        if (localPOJOPropertyBuilder.hasField())
        {
          localObject1 = paramPropertyNamingStrategy.nameForField(_config, localPOJOPropertyBuilder.getField(), (String)localObject2);
          break label92;
        }
        localObject1 = localObject2;
        if (!localPOJOPropertyBuilder.hasGetter()) {
          break label92;
        }
        localObject1 = paramPropertyNamingStrategy.nameForGetterMethod(_config, localPOJOPropertyBuilder.getGetter(), (String)localObject2);
        break label92;
        label285:
        localPOJOPropertyBuilder.addAll((POJOPropertyBuilder)localObject2);
      }
    }
  }
  
  protected void _sortProperties()
  {
    Object localObject1 = _config.getAnnotationIntrospector();
    Object localObject2 = ((AnnotationIntrospector)localObject1).findSerializationSortAlphabetically(_classDef);
    if (localObject2 == null) {}
    String[] arrayOfString;
    for (boolean bool = _config.shouldSortPropertiesAlphabetically();; bool = ((Boolean)localObject2).booleanValue())
    {
      arrayOfString = ((AnnotationIntrospector)localObject1).findSerializationPropertyOrder(_classDef);
      if ((bool) || (_creatorProperties != null) || (arrayOfString != null)) {
        break;
      }
      return;
    }
    int i = _properties.size();
    if (bool) {}
    Object localObject3;
    for (localObject1 = new TreeMap();; localObject1 = new LinkedHashMap(i + i))
    {
      localObject2 = _properties.values().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (POJOPropertyBuilder)((Iterator)localObject2).next();
        ((Map)localObject1).put(((POJOPropertyBuilder)localObject3).getName(), localObject3);
      }
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(i + i);
    if (arrayOfString != null)
    {
      int j = arrayOfString.length;
      i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        POJOPropertyBuilder localPOJOPropertyBuilder = (POJOPropertyBuilder)((Map)localObject1).get(str);
        localObject3 = str;
        localObject2 = localPOJOPropertyBuilder;
        if (localPOJOPropertyBuilder == null)
        {
          Iterator localIterator = _properties.values().iterator();
          do
          {
            localObject3 = str;
            localObject2 = localPOJOPropertyBuilder;
            if (!localIterator.hasNext()) {
              break;
            }
            localObject3 = (POJOPropertyBuilder)localIterator.next();
          } while (!str.equals(((POJOPropertyBuilder)localObject3).getInternalName()));
          localObject2 = localObject3;
          localObject3 = ((POJOPropertyBuilder)localObject3).getName();
        }
        if (localObject2 != null) {
          localLinkedHashMap.put(localObject3, localObject2);
        }
        i += 1;
      }
    }
    if (_creatorProperties != null)
    {
      localObject2 = _creatorProperties.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (POJOPropertyBuilder)((Iterator)localObject2).next();
        localLinkedHashMap.put(((POJOPropertyBuilder)localObject3).getName(), localObject3);
      }
    }
    localLinkedHashMap.putAll((Map)localObject1);
    _properties.clear();
    _properties.putAll(localLinkedHashMap);
  }
  
  public POJOPropertiesCollector collect()
  {
    _properties.clear();
    _addFields();
    _addMethods();
    _addCreators();
    _addInjectables();
    _removeUnwantedProperties();
    _renameProperties();
    Object localObject = _config.getPropertyNamingStrategy();
    if (localObject != null) {
      _renameUsing((PropertyNamingStrategy)localObject);
    }
    localObject = _properties.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((POJOPropertyBuilder)((Iterator)localObject).next()).trimByVisibility();
    }
    localObject = _properties.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((POJOPropertyBuilder)((Iterator)localObject).next()).mergeAnnotations(_forSerialization);
    }
    _sortProperties();
    return this;
  }
  
  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return _annotationIntrospector;
  }
  
  public AnnotatedMethod getAnyGetterMethod()
  {
    if (_anyGetters != null)
    {
      if (_anyGetters.size() > 1) {
        reportProblem("Multiple 'any-getters' defined (" + _anyGetters.get(0) + " vs " + _anyGetters.get(1) + ")");
      }
      return (AnnotatedMethod)_anyGetters.getFirst();
    }
    return null;
  }
  
  public AnnotatedMethod getAnySetterMethod()
  {
    if (_anySetters != null)
    {
      if (_anySetters.size() > 1) {
        reportProblem("Multiple 'any-setters' defined (" + _anySetters.get(0) + " vs " + _anySetters.get(1) + ")");
      }
      return (AnnotatedMethod)_anySetters.getFirst();
    }
    return null;
  }
  
  public AnnotatedClass getClassDef()
  {
    return _classDef;
  }
  
  public MapperConfig<?> getConfig()
  {
    return _config;
  }
  
  public Set<String> getIgnoredPropertyNames()
  {
    return _ignoredPropertyNames;
  }
  
  public Set<String> getIgnoredPropertyNamesForDeser()
  {
    return _ignoredPropertyNamesForDeser;
  }
  
  public Map<Object, AnnotatedMember> getInjectables()
  {
    return _injectables;
  }
  
  public AnnotatedMethod getJsonValueMethod()
  {
    if (_jsonValueGetters != null)
    {
      if (_jsonValueGetters.size() > 1) {
        reportProblem("Multiple value properties defined (" + _jsonValueGetters.get(0) + " vs " + _jsonValueGetters.get(1) + ")");
      }
      return (AnnotatedMethod)_jsonValueGetters.get(0);
    }
    return null;
  }
  
  public List<BeanPropertyDefinition> getProperties()
  {
    return new ArrayList(_properties.values());
  }
  
  protected Map<String, POJOPropertyBuilder> getPropertyMap()
  {
    return _properties;
  }
  
  public JavaType getType()
  {
    return _type;
  }
  
  protected void reportProblem(String paramString)
  {
    throw new IllegalArgumentException("Problem with definition of " + _classDef + ": " + paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertiesCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */