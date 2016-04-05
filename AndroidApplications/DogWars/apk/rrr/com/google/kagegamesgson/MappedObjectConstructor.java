package com.google.kagegamesgson;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.logging.Level;
import java.util.logging.Logger;

final class MappedObjectConstructor
  implements ObjectConstructor
{
  private static final Logger log;
  private final ParameterizedTypeHandlerMap instanceCreatorMap;
  
  static
  {
    Object localObject = MappedObjectConstructor.class;
    localObject = ((Class)localObject).getName();
    localObject = Logger.getLogger((String)localObject);
    log = (Logger)localObject;
  }
  
  public MappedObjectConstructor(ParameterizedTypeHandlerMap<InstanceCreator<?>> paramParameterizedTypeHandlerMap)
  {
    instanceCreatorMap = paramParameterizedTypeHandlerMap;
  }
  
  public <T> T construct(Type paramType)
  {
    Object localObject2 = instanceCreatorMap;
    Object localObject1 = ((ParameterizedTypeHandlerMap)localObject2).getHandlerFor(paramType);
    localObject1 = (InstanceCreator)localObject1;
    if (localObject1 != null) {}
    for (localObject2 = ((InstanceCreator)localObject1).createInstance(paramType);; localObject2 = constructWithNoArgConstructor(paramType)) {
      return (T)localObject2;
    }
  }
  
  public Object constructArray(Type paramType, int paramInt)
  {
    Object localObject = TypeUtils.toRawClass(paramType);
    localObject = Array.newInstance((Class)localObject, paramInt);
    return localObject;
  }
  
  private <T> T constructWithNoArgConstructor(Type paramType)
  {
    try
    {
      localConstructor = getNoArgsConstructor(paramType);
      if (localConstructor == null)
      {
        RuntimeException localRuntimeException1 = new java/lang/RuntimeException;
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        str = "No-args constructor for ";
        localObject3 = ((StringBuilder)localObject3).append(str);
        localObject3 = ((StringBuilder)localObject3).append(paramType);
        str = " does not exist. ";
        localObject3 = ((StringBuilder)localObject3).append(str);
        str = "Register an InstanceCreator with Gson for this type to fix this problem.";
        localObject3 = ((StringBuilder)localObject3).append(str);
        localObject3 = ((StringBuilder)localObject3).toString();
        localRuntimeException1.<init>((String)localObject3);
        throw localRuntimeException1;
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      Constructor localConstructor;
      localObject1 = localInstantiationException;
      RuntimeException localRuntimeException2 = new java/lang/RuntimeException;
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      str = "Unable to invoke no-args constructor for ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).append(paramType);
      str = ". ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      str = "Register an InstanceCreator with Gson for this type may fix this problem.";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      localRuntimeException2.<init>((String)localObject3, (Throwable)localObject1);
      throw localRuntimeException2;
      int i = 0;
      Object localObject2 = new Object[i];
      localObject2 = localConstructor.newInstance((Object[])localObject2);
      return (T)localObject2;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localObject1 = localIllegalAccessException;
      RuntimeException localRuntimeException3 = new java/lang/RuntimeException;
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      str = "Unable to invoke no-args constructor for ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).append(paramType);
      str = ". ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      str = "Register an InstanceCreator with Gson for this type may fix this problem.";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      localRuntimeException3.<init>((String)localObject3, (Throwable)localObject1);
      throw localRuntimeException3;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Object localObject1 = localInvocationTargetException;
      RuntimeException localRuntimeException4 = new java/lang/RuntimeException;
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str = "Unable to invoke no-args constructor for ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).append(paramType);
      str = ". ";
      localObject3 = ((StringBuilder)localObject3).append(str);
      str = "Register an InstanceCreator with Gson for this type may fix this problem.";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      localRuntimeException4.<init>((String)localObject3, (Throwable)localObject1);
      throw localRuntimeException4;
    }
  }
  
  private <T> Constructor<T> getNoArgsConstructor(Type paramType)
  {
    TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
    localTypeInfo.<init>(paramType);
    Class localClass = localTypeInfo.getRawClass();
    Constructor[] arrayOfConstructor2 = localClass.getDeclaredConstructors();
    arrayOfConstructor2 = (Constructor[])arrayOfConstructor2;
    boolean bool = true;
    AccessibleObject.setAccessible(arrayOfConstructor2, bool);
    Constructor[] arrayOfConstructor1 = arrayOfConstructor2;
    int j = arrayOfConstructor1.length;
    int i = 0;
    Constructor localConstructor;
    if (i < j)
    {
      localConstructor = arrayOfConstructor1[i];
      Class[] arrayOfClass = localConstructor.getParameterTypes();
      int k = arrayOfClass.length;
      if (k != 0) {}
    }
    for (Object localObject = localConstructor;; localObject = null)
    {
      return (Constructor<T>)localObject;
      i += 1;
      break;
    }
  }
  
  <T> void register(Type paramType, InstanceCreator<? extends T> paramInstanceCreator)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = instanceCreatorMap;
    boolean bool = localParameterizedTypeHandlerMap.hasSpecificHandlerFor(paramType);
    if (bool)
    {
      localObject = log;
      Level localLevel = Level.WARNING;
      String str = "Overriding the existing InstanceCreator for {0}";
      ((Logger)localObject).log(localLevel, str, paramType);
    }
    Object localObject = instanceCreatorMap;
    ((ParameterizedTypeHandlerMap)localObject).register(paramType, paramInstanceCreator);
  }
  
  public String toString()
  {
    Object localObject = instanceCreatorMap;
    localObject = ((ParameterizedTypeHandlerMap)localObject).toString();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.MappedObjectConstructor
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */