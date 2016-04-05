package org.codehaus.jackson.map.util;

import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class RootNameLookup
{
  protected LRUMap<ClassKey, SerializedString> _rootNames;
  
  /* Error */
  public SerializedString findRootName(Class<?> paramClass, MapperConfig<?> paramMapperConfig)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 16	org/codehaus/jackson/map/type/ClassKey
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 19	org/codehaus/jackson/map/type/ClassKey:<init>	(Ljava/lang/Class;)V
    //   10: astore 4
    //   12: aload_0
    //   13: getfield 21	org/codehaus/jackson/map/util/RootNameLookup:_rootNames	Lorg/codehaus/jackson/map/util/LRUMap;
    //   16: ifnonnull +75 -> 91
    //   19: aload_0
    //   20: new 23	org/codehaus/jackson/map/util/LRUMap
    //   23: dup
    //   24: bipush 20
    //   26: sipush 200
    //   29: invokespecial 26	org/codehaus/jackson/map/util/LRUMap:<init>	(II)V
    //   32: putfield 21	org/codehaus/jackson/map/util/RootNameLookup:_rootNames	Lorg/codehaus/jackson/map/util/LRUMap;
    //   35: aload_2
    //   36: aload_1
    //   37: invokevirtual 32	org/codehaus/jackson/map/MapperConfig:introspectClassAnnotations	(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    //   40: checkcast 34	org/codehaus/jackson/map/introspect/BasicBeanDescription
    //   43: astore_3
    //   44: aload_2
    //   45: invokevirtual 38	org/codehaus/jackson/map/MapperConfig:getAnnotationIntrospector	()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    //   48: aload_3
    //   49: invokevirtual 42	org/codehaus/jackson/map/introspect/BasicBeanDescription:getClassInfo	()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    //   52: invokevirtual 47	org/codehaus/jackson/map/AnnotationIntrospector:findRootName	(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    //   55: astore_3
    //   56: aload_3
    //   57: astore_2
    //   58: aload_3
    //   59: ifnonnull +8 -> 67
    //   62: aload_1
    //   63: invokevirtual 53	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   66: astore_2
    //   67: new 55	org/codehaus/jackson/io/SerializedString
    //   70: dup
    //   71: aload_2
    //   72: invokespecial 58	org/codehaus/jackson/io/SerializedString:<init>	(Ljava/lang/String;)V
    //   75: astore_1
    //   76: aload_0
    //   77: getfield 21	org/codehaus/jackson/map/util/RootNameLookup:_rootNames	Lorg/codehaus/jackson/map/util/LRUMap;
    //   80: aload 4
    //   82: aload_1
    //   83: invokevirtual 62	org/codehaus/jackson/map/util/LRUMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   86: pop
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_1
    //   90: areturn
    //   91: aload_0
    //   92: getfield 21	org/codehaus/jackson/map/util/RootNameLookup:_rootNames	Lorg/codehaus/jackson/map/util/LRUMap;
    //   95: aload 4
    //   97: invokevirtual 66	org/codehaus/jackson/map/util/LRUMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   100: checkcast 55	org/codehaus/jackson/io/SerializedString
    //   103: astore_3
    //   104: aload_3
    //   105: ifnull -70 -> 35
    //   108: aload_3
    //   109: astore_1
    //   110: goto -23 -> 87
    //   113: astore_1
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	RootNameLookup
    //   0	118	1	paramClass	Class<?>
    //   0	118	2	paramMapperConfig	MapperConfig<?>
    //   43	66	3	localObject	Object
    //   10	86	4	localClassKey	ClassKey
    // Exception table:
    //   from	to	target	type
    //   2	35	113	finally
    //   35	56	113	finally
    //   62	67	113	finally
    //   67	87	113	finally
    //   91	104	113	finally
  }
  
  public SerializedString findRootName(JavaType paramJavaType, MapperConfig<?> paramMapperConfig)
  {
    return findRootName(paramJavaType.getRawClass(), paramMapperConfig);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.RootNameLookup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */