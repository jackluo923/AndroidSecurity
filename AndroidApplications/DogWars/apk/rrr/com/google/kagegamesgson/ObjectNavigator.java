package com.google.kagegamesgson;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Type;

final class ObjectNavigator
{
  private final ExclusionStrategy exclusionStrategy;
  private final ObjectTypePair objTypePair;
  
  ObjectNavigator(ObjectTypePair paramObjectTypePair, ExclusionStrategy paramExclusionStrategy)
  {
    Preconditions.checkNotNull(paramExclusionStrategy);
    objTypePair = paramObjectTypePair;
    exclusionStrategy = paramExclusionStrategy;
  }
  
  /* Error */
  public void accept(ObjectNavigator.Visitor paramVisitor)
  {
    // Byte code:
    //   0: nop
    //   1: new 119	com/google/kagegamesgson/TypeInfo
    //   4: astore 5
    //   6: aload_0
    //   7: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   10: astore 9
    //   12: aload 9
    //   14: getfield 167	com/google/kagegamesgson/ObjectTypePair:type	Ljava/lang/reflect/Type;
    //   17: astore 9
    //   19: aload 5
    //   21: aload 9
    //   23: invokespecial 32	com/google/kagegamesgson/TypeInfo:<init>	(Ljava/lang/reflect/Type;)V
    //   26: aload_0
    //   27: getfield 117	com/google/kagegamesgson/ObjectNavigator:exclusionStrategy	Lcom/google/kagegamesgson/ExclusionStrategy;
    //   30: astore 9
    //   32: aload 5
    //   34: invokevirtual 30	com/google/kagegamesgson/TypeInfo:getRawClass	()Ljava/lang/Class;
    //   37: astore 10
    //   39: aload 9
    //   41: aload 10
    //   43: invokeinterface 4 2 0
    //   48: istore 9
    //   50: iload 9
    //   52: ifeq +4 -> 56
    //   55: return
    //   56: aload_0
    //   57: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   60: astore 9
    //   62: aload_1
    //   63: aload 9
    //   65: invokeinterface 143 2 0
    //   70: istore 8
    //   72: iload 8
    //   74: ifne -19 -> 55
    //   77: aload_0
    //   78: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   81: astore 9
    //   83: aload 9
    //   85: invokevirtual 145	com/google/kagegamesgson/ObjectTypePair:getObject	()Ljava/lang/Object;
    //   88: astore 4
    //   90: aload 4
    //   92: ifnonnull +99 -> 191
    //   95: aload_1
    //   96: invokeinterface 112 1 0
    //   101: astore 9
    //   103: aload 9
    //   105: astore 6
    //   107: aload 6
    //   109: ifnull -54 -> 55
    //   112: aload_0
    //   113: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   116: astore 9
    //   118: aload 9
    //   120: aload 6
    //   122: invokevirtual 75	com/google/kagegamesgson/ObjectTypePair:setObject	(Ljava/lang/Object;)V
    //   125: aload_0
    //   126: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   129: astore 9
    //   131: aload_1
    //   132: aload 9
    //   134: invokeinterface 43 2 0
    //   139: aload 5
    //   141: invokevirtual 33	com/google/kagegamesgson/TypeInfo:isArray	()Z
    //   144: istore 9
    //   146: iload 9
    //   148: ifeq +50 -> 198
    //   151: aload_0
    //   152: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   155: astore 9
    //   157: aload 9
    //   159: getfield 167	com/google/kagegamesgson/ObjectTypePair:type	Ljava/lang/reflect/Type;
    //   162: astore 9
    //   164: aload_1
    //   165: aload 6
    //   167: aload 9
    //   169: invokeinterface 168 3 0
    //   174: aload_0
    //   175: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   178: astore 9
    //   180: aload_1
    //   181: aload 9
    //   183: invokeinterface 29 2 0
    //   188: goto -133 -> 55
    //   191: aload 4
    //   193: astore 6
    //   195: goto -88 -> 107
    //   198: aload 5
    //   200: invokevirtual 59	com/google/kagegamesgson/TypeInfo:getActualType	()Ljava/lang/reflect/Type;
    //   203: astore 9
    //   205: ldc 54
    //   207: astore 10
    //   209: aload 9
    //   211: aload 10
    //   213: if_acmpne +35 -> 248
    //   216: aload_0
    //   217: aload 6
    //   219: invokespecial 141	com/google/kagegamesgson/ObjectNavigator:isPrimitiveOrString	(Ljava/lang/Object;)Z
    //   222: istore 9
    //   224: iload 9
    //   226: ifeq +22 -> 248
    //   229: aload_1
    //   230: aload 6
    //   232: invokeinterface 68 2 0
    //   237: aload_1
    //   238: invokeinterface 112 1 0
    //   243: astore 6
    //   245: goto -71 -> 174
    //   248: aload_1
    //   249: aload 6
    //   251: invokeinterface 44 2 0
    //   256: aload_0
    //   257: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   260: astore 9
    //   262: aload 9
    //   264: invokevirtual 139	com/google/kagegamesgson/ObjectTypePair:toMoreSpecificType	()Lcom/google/kagegamesgson/ObjectTypePair;
    //   267: astore_3
    //   268: new 119	com/google/kagegamesgson/TypeInfo
    //   271: astore 9
    //   273: aload_3
    //   274: getfield 167	com/google/kagegamesgson/ObjectTypePair:type	Ljava/lang/reflect/Type;
    //   277: astore 10
    //   279: aload 9
    //   281: aload 10
    //   283: invokespecial 32	com/google/kagegamesgson/TypeInfo:<init>	(Ljava/lang/reflect/Type;)V
    //   286: aload 9
    //   288: invokevirtual 30	com/google/kagegamesgson/TypeInfo:getRawClass	()Ljava/lang/Class;
    //   291: astore 7
    //   293: aload 7
    //   295: astore_2
    //   296: aload_2
    //   297: ifnull -123 -> 174
    //   300: ldc 54
    //   302: astore 9
    //   304: aload_2
    //   305: aload 9
    //   307: invokevirtual 77	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   310: istore 9
    //   312: iload 9
    //   314: ifne -140 -> 174
    //   317: aload_2
    //   318: invokevirtual 115	java/lang/Class:isSynthetic	()Z
    //   321: istore 9
    //   323: iload 9
    //   325: ifne +11 -> 336
    //   328: aload_0
    //   329: aload 6
    //   331: aload_2
    //   332: aload_1
    //   333: invokespecial 98	com/google/kagegamesgson/ObjectNavigator:navigateClassFields	(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/kagegamesgson/ObjectNavigator$Visitor;)V
    //   336: aload_2
    //   337: invokevirtual 95	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   340: astore_2
    //   341: goto -45 -> 296
    //   344: astore 9
    //   346: aload_0
    //   347: getfield 49	com/google/kagegamesgson/ObjectNavigator:objTypePair	Lcom/google/kagegamesgson/ObjectTypePair;
    //   350: astore 10
    //   352: aload_1
    //   353: aload 10
    //   355: invokeinterface 29 2 0
    //   360: aload 9
    //   362: athrow
    //   363: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	364	0	this	ObjectNavigator
    //   0	364	1	paramVisitor	ObjectNavigator.Visitor
    //   295	46	2	localClass1	Class
    //   267	7	3	localObjectTypePair	ObjectTypePair
    //   88	104	4	localObject1	Object
    //   4	195	5	localTypeInfo	TypeInfo
    //   105	225	6	localObject2	Object
    //   291	3	7	localClass2	Class
    //   70	3	8	bool1	boolean
    //   10	30	9	localObject3	Object
    //   48	3	9	bool2	boolean
    //   60	73	9	localObject4	Object
    //   144	3	9	bool3	boolean
    //   155	55	9	localObject5	Object
    //   222	3	9	bool4	boolean
    //   260	46	9	localObject6	Object
    //   310	14	9	bool5	boolean
    //   344	17	9	localObject7	Object
    //   37	317	10	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   139	144	344	finally
    //   151	157	344	finally
    //   164	174	344	finally
    //   198	203	344	finally
    //   205	209	344	finally
    //   216	222	344	finally
    //   229	237	344	finally
    //   248	256	344	finally
    //   262	267	344	finally
    //   268	273	344	finally
    //   279	286	344	finally
    //   300	304	344	finally
    //   317	321	344	finally
    //   328	336	344	finally
  }
  
  private boolean isPrimitiveOrString(Object paramObject)
  {
    Class localClass1 = paramObject.getClass();
    Class localClass2 = Object.class;
    if (localClass1 != localClass2)
    {
      localClass2 = String.class;
      if (localClass1 != localClass2)
      {
        localClass2 = Primitives.unwrap(localClass1);
        bool = localClass2.isPrimitive();
        if (!bool) {
          break label40;
        }
      }
    }
    label40:
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private void navigateClassFields(Object paramObject, Class<?> paramClass, ObjectNavigator.Visitor paramVisitor)
  {
    Field[] arrayOfField2 = paramClass.getDeclaredFields();
    boolean bool2 = true;
    AccessibleObject.setAccessible(arrayOfField2, bool2);
    Field[] arrayOfField1 = arrayOfField2;
    int j = arrayOfField1.length;
    int i = 0;
    if (i < j)
    {
      Field localField = arrayOfField1[i];
      FieldAttributes localFieldAttributes = new com/google/kagegamesgson/FieldAttributes;
      localFieldAttributes.<init>(paramClass, localField);
      ExclusionStrategy localExclusionStrategy1 = exclusionStrategy;
      boolean bool3 = localExclusionStrategy1.shouldSkipField(localFieldAttributes);
      if (!bool3)
      {
        ExclusionStrategy localExclusionStrategy2 = exclusionStrategy;
        Class localClass = localFieldAttributes.getDeclaredClass();
        boolean bool4 = localExclusionStrategy2.shouldSkipClass(localClass);
        if (!bool4) {
          break label116;
        }
      }
      for (;;)
      {
        i += 1;
        break;
        label116:
        Object localObject = objTypePair;
        localObject = type;
        TypeInfo localTypeInfo = TypeInfoFactory.getTypeInfoForField(localField, (Type)localObject);
        Type localType = localTypeInfo.getActualType();
        boolean bool1 = paramVisitor.visitFieldUsingCustomHandler(localFieldAttributes, localType, paramObject);
        if (!bool1)
        {
          boolean bool5 = localTypeInfo.isArray();
          if (bool5) {
            paramVisitor.visitArrayField(localFieldAttributes, localType, paramObject);
          } else {
            paramVisitor.visitObjectField(localFieldAttributes, localType, paramObject);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ObjectNavigator
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */