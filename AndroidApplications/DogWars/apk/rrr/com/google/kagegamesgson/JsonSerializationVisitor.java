package com.google.kagegamesgson;

import java.lang.reflect.Array;
import java.lang.reflect.Type;

final class JsonSerializationVisitor
  implements ObjectNavigator.Visitor
{
  private final MemoryRefStack ancestors;
  private final JsonSerializationContext context;
  private final ObjectNavigatorFactory factory;
  private JsonElement root;
  private final boolean serializeNulls;
  private final ParameterizedTypeHandlerMap serializers;
  
  JsonSerializationVisitor(ObjectNavigatorFactory paramObjectNavigatorFactory, boolean paramBoolean, ParameterizedTypeHandlerMap<JsonSerializer<?>> paramParameterizedTypeHandlerMap, JsonSerializationContext paramJsonSerializationContext, MemoryRefStack paramMemoryRefStack)
  {
    factory = paramObjectNavigatorFactory;
    serializeNulls = paramBoolean;
    serializers = paramParameterizedTypeHandlerMap;
    context = paramJsonSerializationContext;
    ancestors = paramMemoryRefStack;
  }
  
  private void addAsArrayElement(ObjectTypePair paramObjectTypePair)
  {
    Object localObject = paramObjectTypePair.getObject();
    if (localObject == null)
    {
      localObject = root;
      localObject = ((JsonElement)localObject).getAsJsonArray();
      JsonNull localJsonNull = JsonNull.createJsonNull();
      ((JsonArray)localObject).add(localJsonNull);
    }
    for (;;)
    {
      return;
      JsonElement localJsonElement = getJsonElementForChild(paramObjectTypePair);
      localObject = root;
      localObject = ((JsonElement)localObject).getAsJsonArray();
      ((JsonArray)localObject).add(localJsonElement);
    }
  }
  
  private void addAsChildOfObject(FieldAttributes paramFieldAttributes, ObjectTypePair paramObjectTypePair)
  {
    JsonElement localJsonElement = getJsonElementForChild(paramObjectTypePair);
    addChildAsElement(paramFieldAttributes, localJsonElement);
  }
  
  private void addChildAsElement(FieldAttributes paramFieldAttributes, JsonElement paramJsonElement)
  {
    Object localObject = factory;
    FieldNamingStrategy2 localFieldNamingStrategy2 = ((ObjectNavigatorFactory)localObject).getFieldNamingPolicy();
    localObject = root;
    localObject = ((JsonElement)localObject).getAsJsonObject();
    String str = localFieldNamingStrategy2.translateName(paramFieldAttributes);
    ((JsonObject)localObject).add(str, paramJsonElement);
  }
  
  private void assignToRoot(JsonElement paramJsonElement)
  {
    Preconditions.checkNotNull(paramJsonElement);
    root = paramJsonElement;
  }
  
  public void end(ObjectTypePair paramObjectTypePair)
  {
    if (paramObjectTypePair != null)
    {
      MemoryRefStack localMemoryRefStack = ancestors;
      localMemoryRefStack.pop();
    }
  }
  
  /* Error */
  private JsonElement findAndInvokeCustomSerializer(ObjectTypePair paramObjectTypePair)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: getfield 135	com/google/kagegamesgson/JsonSerializationVisitor:serializers	Lcom/google/kagegamesgson/ParameterizedTypeHandlerMap;
    //   5: astore 5
    //   7: aload_1
    //   8: aload 5
    //   10: invokevirtual 54	com/google/kagegamesgson/ObjectTypePair:getMatchingHandler	(Lcom/google/kagegamesgson/ParameterizedTypeHandlerMap;)Lcom/google/kagegamesgson/Pair;
    //   13: astore_3
    //   14: aload_3
    //   15: ifnonnull +9 -> 24
    //   18: aconst_null
    //   19: astore 5
    //   21: aload 5
    //   23: areturn
    //   24: aload_3
    //   25: getfield 222	com/google/kagegamesgson/Pair:first	Ljava/lang/Object;
    //   28: astore 4
    //   30: aload 4
    //   32: checkcast 19	com/google/kagegamesgson/JsonSerializer
    //   35: astore 4
    //   37: aload_3
    //   38: getfield 74	com/google/kagegamesgson/Pair:second	Ljava/lang/Object;
    //   41: astore_1
    //   42: aload_1
    //   43: checkcast 71	com/google/kagegamesgson/ObjectTypePair
    //   46: astore_1
    //   47: aload_0
    //   48: aload_1
    //   49: invokevirtual 167	com/google/kagegamesgson/JsonSerializationVisitor:start	(Lcom/google/kagegamesgson/ObjectTypePair;)V
    //   52: aload_1
    //   53: invokevirtual 220	com/google/kagegamesgson/ObjectTypePair:getObject	()Ljava/lang/Object;
    //   56: astore 5
    //   58: aload_1
    //   59: invokevirtual 147	com/google/kagegamesgson/ObjectTypePair:getType	()Ljava/lang/reflect/Type;
    //   62: astore 6
    //   64: aload_0
    //   65: getfield 38	com/google/kagegamesgson/JsonSerializationVisitor:context	Lcom/google/kagegamesgson/JsonSerializationContext;
    //   68: astore 7
    //   70: aload 4
    //   72: aload 5
    //   74: aload 6
    //   76: aload 7
    //   78: invokeinterface 237 4 0
    //   83: astore_2
    //   84: aload_2
    //   85: ifnonnull +16 -> 101
    //   88: invokestatic 29	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   91: astore 5
    //   93: aload_0
    //   94: aload_1
    //   95: invokevirtual 23	com/google/kagegamesgson/JsonSerializationVisitor:end	(Lcom/google/kagegamesgson/ObjectTypePair;)V
    //   98: goto -77 -> 21
    //   101: aload_2
    //   102: astore 5
    //   104: goto -11 -> 93
    //   107: astore 5
    //   109: aload_0
    //   110: aload_1
    //   111: invokevirtual 23	com/google/kagegamesgson/JsonSerializationVisitor:end	(Lcom/google/kagegamesgson/ObjectTypePair;)V
    //   114: aload 5
    //   116: athrow
    //   117: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	JsonSerializationVisitor
    //   0	118	1	paramObjectTypePair	ObjectTypePair
    //   83	19	2	localJsonElement	JsonElement
    //   13	25	3	localPair	Pair
    //   28	43	4	localObject1	Object
    //   5	98	5	localObject2	Object
    //   107	8	5	localObject3	Object
    //   62	13	6	localType	Type
    //   68	9	7	localJsonSerializationContext	JsonSerializationContext
    // Exception table:
    //   from	to	target	type
    //   52	56	107	finally
    //   58	62	107	finally
    //   64	70	107	finally
    //   88	91	107	finally
  }
  
  private Object getFieldValue(FieldAttributes paramFieldAttributes, Object paramObject)
  {
    try
    {
      localObject = paramFieldAttributes.get(paramObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Object localObject = new java/lang/RuntimeException;
      ((RuntimeException)localObject).<init>(localIllegalAccessException);
      throw ((Throwable)localObject);
    }
  }
  
  public JsonElement getJsonElement()
  {
    JsonElement localJsonElement = root;
    return localJsonElement;
  }
  
  private JsonElement getJsonElementForChild(ObjectTypePair paramObjectTypePair)
  {
    Object localObject = factory;
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject).create(paramObjectTypePair);
    JsonSerializationVisitor localJsonSerializationVisitor = new com/google/kagegamesgson/JsonSerializationVisitor;
    localObject = factory;
    boolean bool = serializeNulls;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = serializers;
    JsonSerializationContext localJsonSerializationContext = context;
    MemoryRefStack localMemoryRefStack = ancestors;
    localJsonSerializationVisitor.<init>((ObjectNavigatorFactory)localObject, bool, localParameterizedTypeHandlerMap, localJsonSerializationContext, localMemoryRefStack);
    localObjectNavigator.accept(localJsonSerializationVisitor);
    localObject = localJsonSerializationVisitor.getJsonElement();
    return (JsonElement)localObject;
  }
  
  public Object getTarget()
  {
    Object localObject = null;
    return localObject;
  }
  
  private boolean isFieldNull(FieldAttributes paramFieldAttributes, Object paramObject)
  {
    Object localObject = getFieldValue(paramFieldAttributes, paramObject);
    if (localObject == null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public void start(ObjectTypePair paramObjectTypePair)
  {
    if (paramObjectTypePair == null) {}
    for (;;)
    {
      return;
      MemoryRefStack localMemoryRefStack = ancestors;
      boolean bool = localMemoryRefStack.contains(paramObjectTypePair);
      if (bool)
      {
        localObject = new com/google/kagegamesgson/CircularReferenceException;
        ((CircularReferenceException)localObject).<init>(paramObjectTypePair);
        throw ((Throwable)localObject);
      }
      Object localObject = ancestors;
      ((MemoryRefStack)localObject).push(paramObjectTypePair);
    }
  }
  
  public void startVisitingObject(Object paramObject)
  {
    JsonObject localJsonObject = new com/google/kagegamesgson/JsonObject;
    localJsonObject.<init>();
    assignToRoot(localJsonObject);
  }
  
  public void visitArray(Object paramObject, Type paramType)
  {
    Object localObject2 = new com/google/kagegamesgson/JsonArray;
    ((JsonArray)localObject2).<init>();
    assignToRoot((JsonElement)localObject2);
    int j = Array.getLength(paramObject);
    TypeInfoArray localTypeInfoArray = TypeInfoFactory.getTypeInfoForArray(paramType);
    Type localType2 = localTypeInfoArray.getSecondLevelType();
    int i = 0;
    while (i < j)
    {
      Object localObject1 = Array.get(paramObject, i);
      Type localType1 = localType2;
      localObject2 = new com/google/kagegamesgson/ObjectTypePair;
      boolean bool = false;
      ((ObjectTypePair)localObject2).<init>(localObject1, localType1, bool);
      addAsArrayElement((ObjectTypePair)localObject2);
      i += 1;
    }
  }
  
  /* Error */
  public void visitArrayField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: aload_1
    //   3: aload_3
    //   4: invokespecial 93	com/google/kagegamesgson/JsonSerializationVisitor:isFieldNull	(Lcom/google/kagegamesgson/FieldAttributes;Ljava/lang/Object;)Z
    //   7: istore 6
    //   9: iload 6
    //   11: ifeq +27 -> 38
    //   14: aload_0
    //   15: getfield 115	com/google/kagegamesgson/JsonSerializationVisitor:serializeNulls	Z
    //   18: istore 6
    //   20: iload 6
    //   22: ifeq +15 -> 37
    //   25: invokestatic 29	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   28: astore 6
    //   30: aload_0
    //   31: aload_1
    //   32: aload 6
    //   34: invokespecial 206	com/google/kagegamesgson/JsonSerializationVisitor:addChildAsElement	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/JsonElement;)V
    //   37: return
    //   38: aload_0
    //   39: aload_1
    //   40: aload_3
    //   41: invokespecial 69	com/google/kagegamesgson/JsonSerializationVisitor:getFieldValue	(Lcom/google/kagegamesgson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    //   44: astore 4
    //   46: new 71	com/google/kagegamesgson/ObjectTypePair
    //   49: astore 6
    //   51: iconst_0
    //   52: istore 7
    //   54: aload 6
    //   56: aload 4
    //   58: aload_2
    //   59: iload 7
    //   61: invokespecial 195	com/google/kagegamesgson/ObjectTypePair:<init>	(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    //   64: aload_0
    //   65: aload_1
    //   66: aload 6
    //   68: invokespecial 87	com/google/kagegamesgson/JsonSerializationVisitor:addAsChildOfObject	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/ObjectTypePair;)V
    //   71: goto -34 -> 37
    //   74: astore 6
    //   76: aload 6
    //   78: astore 5
    //   80: aload 5
    //   82: aload_1
    //   83: invokevirtual 24	com/google/kagegamesgson/CircularReferenceException:createDetailedException	(Lcom/google/kagegamesgson/FieldAttributes;)Ljava/lang/IllegalStateException;
    //   86: astore 6
    //   88: aload 6
    //   90: athrow
    //   91: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	JsonSerializationVisitor
    //   0	92	1	paramFieldAttributes	FieldAttributes
    //   0	92	2	paramType	Type
    //   0	92	3	paramObject	Object
    //   44	13	4	localObject1	Object
    //   78	3	5	localCircularReferenceException1	CircularReferenceException
    //   7	14	6	bool1	boolean
    //   28	39	6	localObject2	Object
    //   74	3	6	localCircularReferenceException2	CircularReferenceException
    //   86	3	6	localIllegalStateException	IllegalStateException
    //   52	8	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   1	7	74	com/google/kagegamesgson/CircularReferenceException
    //   14	20	74	com/google/kagegamesgson/CircularReferenceException
    //   25	28	74	com/google/kagegamesgson/CircularReferenceException
    //   30	37	74	com/google/kagegamesgson/CircularReferenceException
    //   38	44	74	com/google/kagegamesgson/CircularReferenceException
    //   46	51	74	com/google/kagegamesgson/CircularReferenceException
    //   54	64	74	com/google/kagegamesgson/CircularReferenceException
  }
  
  /* Error */
  public boolean visitFieldUsingCustomHandler(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    // Byte code:
    //   0: nop
    //   1: iconst_1
    //   2: istore 10
    //   4: iconst_0
    //   5: istore 9
    //   7: aload_0
    //   8: getfield 176	com/google/kagegamesgson/JsonSerializationVisitor:root	Lcom/google/kagegamesgson/JsonElement;
    //   11: astore 8
    //   13: aload 8
    //   15: invokevirtual 172	com/google/kagegamesgson/JsonElement:isJsonObject	()Z
    //   18: istore 8
    //   20: iload 8
    //   22: invokestatic 130	com/google/kagegamesgson/Preconditions:checkState	(Z)V
    //   25: aload_1
    //   26: aload_3
    //   27: invokevirtual 240	com/google/kagegamesgson/FieldAttributes:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   30: astore 6
    //   32: aload 6
    //   34: ifnonnull +33 -> 67
    //   37: aload_0
    //   38: getfield 115	com/google/kagegamesgson/JsonSerializationVisitor:serializeNulls	Z
    //   41: istore 8
    //   43: iload 8
    //   45: ifeq +15 -> 60
    //   48: invokestatic 29	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   51: astore 8
    //   53: aload_0
    //   54: aload_1
    //   55: aload 8
    //   57: invokespecial 206	com/google/kagegamesgson/JsonSerializationVisitor:addChildAsElement	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/JsonElement;)V
    //   60: iload 10
    //   62: istore 8
    //   64: iload 8
    //   66: ireturn
    //   67: new 71	com/google/kagegamesgson/ObjectTypePair
    //   70: astore 7
    //   72: iconst_0
    //   73: istore 8
    //   75: aload 7
    //   77: aload 6
    //   79: aload_2
    //   80: iload 8
    //   82: invokespecial 195	com/google/kagegamesgson/ObjectTypePair:<init>	(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    //   85: aload_0
    //   86: aload 7
    //   88: invokespecial 32	com/google/kagegamesgson/JsonSerializationVisitor:findAndInvokeCustomSerializer	(Lcom/google/kagegamesgson/ObjectTypePair;)Lcom/google/kagegamesgson/JsonElement;
    //   91: astore 4
    //   93: aload 4
    //   95: ifnull +17 -> 112
    //   98: aload_0
    //   99: aload_1
    //   100: aload 4
    //   102: invokespecial 206	com/google/kagegamesgson/JsonSerializationVisitor:addChildAsElement	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/JsonElement;)V
    //   105: iload 10
    //   107: istore 8
    //   109: goto -45 -> 64
    //   112: iload 9
    //   114: istore 8
    //   116: goto -52 -> 64
    //   119: astore 8
    //   121: aload 8
    //   123: astore 5
    //   125: new 53	java/lang/RuntimeException
    //   128: astore 8
    //   130: aload 8
    //   132: invokespecial 96	java/lang/RuntimeException:<init>	()V
    //   135: aload 8
    //   137: athrow
    //   138: astore 8
    //   140: aload 8
    //   142: astore 5
    //   144: aload 5
    //   146: aload_1
    //   147: invokevirtual 24	com/google/kagegamesgson/CircularReferenceException:createDetailedException	(Lcom/google/kagegamesgson/FieldAttributes;)Ljava/lang/IllegalStateException;
    //   150: astore 8
    //   152: aload 8
    //   154: athrow
    //   155: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	JsonSerializationVisitor
    //   0	156	1	paramFieldAttributes	FieldAttributes
    //   0	156	2	paramType	Type
    //   0	156	3	paramObject	Object
    //   91	10	4	localJsonElement1	JsonElement
    //   123	22	5	localObject1	Object
    //   30	48	6	localObject2	Object
    //   70	17	7	localObjectTypePair	ObjectTypePair
    //   11	3	8	localJsonElement2	JsonElement
    //   18	26	8	bool1	boolean
    //   51	14	8	localJsonNull1	JsonNull
    //   73	42	8	bool2	boolean
    //   119	3	8	localIllegalAccessException	IllegalAccessException
    //   128	8	8	localRuntimeException	RuntimeException
    //   138	3	8	localCircularReferenceException	CircularReferenceException
    //   150	3	8	localIllegalStateException	IllegalStateException
    //   5	108	9	bool3	boolean
    //   2	104	10	localJsonNull2	JsonNull
    // Exception table:
    //   from	to	target	type
    //   7	13	119	java/lang/IllegalAccessException
    //   20	25	119	java/lang/IllegalAccessException
    //   37	43	119	java/lang/IllegalAccessException
    //   48	51	119	java/lang/IllegalAccessException
    //   53	60	119	java/lang/IllegalAccessException
    //   67	72	119	java/lang/IllegalAccessException
    //   75	85	119	java/lang/IllegalAccessException
    //   98	105	119	java/lang/IllegalAccessException
    //   7	13	138	com/google/kagegamesgson/CircularReferenceException
    //   20	25	138	com/google/kagegamesgson/CircularReferenceException
    //   37	43	138	com/google/kagegamesgson/CircularReferenceException
    //   48	51	138	com/google/kagegamesgson/CircularReferenceException
    //   53	60	138	com/google/kagegamesgson/CircularReferenceException
    //   67	72	138	com/google/kagegamesgson/CircularReferenceException
    //   75	85	138	com/google/kagegamesgson/CircularReferenceException
    //   98	105	138	com/google/kagegamesgson/CircularReferenceException
  }
  
  /* Error */
  public void visitObjectField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: aload_1
    //   3: aload_3
    //   4: invokespecial 93	com/google/kagegamesgson/JsonSerializationVisitor:isFieldNull	(Lcom/google/kagegamesgson/FieldAttributes;Ljava/lang/Object;)Z
    //   7: istore 6
    //   9: iload 6
    //   11: ifeq +27 -> 38
    //   14: aload_0
    //   15: getfield 115	com/google/kagegamesgson/JsonSerializationVisitor:serializeNulls	Z
    //   18: istore 6
    //   20: iload 6
    //   22: ifeq +15 -> 37
    //   25: invokestatic 29	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   28: astore 6
    //   30: aload_0
    //   31: aload_1
    //   32: aload 6
    //   34: invokespecial 206	com/google/kagegamesgson/JsonSerializationVisitor:addChildAsElement	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/JsonElement;)V
    //   37: return
    //   38: aload_0
    //   39: aload_1
    //   40: aload_3
    //   41: invokespecial 69	com/google/kagegamesgson/JsonSerializationVisitor:getFieldValue	(Lcom/google/kagegamesgson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    //   44: astore 5
    //   46: new 71	com/google/kagegamesgson/ObjectTypePair
    //   49: astore 6
    //   51: iconst_0
    //   52: istore 7
    //   54: aload 6
    //   56: aload 5
    //   58: aload_2
    //   59: iload 7
    //   61: invokespecial 195	com/google/kagegamesgson/ObjectTypePair:<init>	(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    //   64: aload_0
    //   65: aload_1
    //   66: aload 6
    //   68: invokespecial 87	com/google/kagegamesgson/JsonSerializationVisitor:addAsChildOfObject	(Lcom/google/kagegamesgson/FieldAttributes;Lcom/google/kagegamesgson/ObjectTypePair;)V
    //   71: goto -34 -> 37
    //   74: astore 6
    //   76: aload 6
    //   78: astore 4
    //   80: aload 4
    //   82: aload_1
    //   83: invokevirtual 24	com/google/kagegamesgson/CircularReferenceException:createDetailedException	(Lcom/google/kagegamesgson/FieldAttributes;)Ljava/lang/IllegalStateException;
    //   86: astore 6
    //   88: aload 6
    //   90: athrow
    //   91: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	JsonSerializationVisitor
    //   0	92	1	paramFieldAttributes	FieldAttributes
    //   0	92	2	paramType	Type
    //   0	92	3	paramObject	Object
    //   78	3	4	localCircularReferenceException1	CircularReferenceException
    //   44	13	5	localObject1	Object
    //   7	14	6	bool1	boolean
    //   28	39	6	localObject2	Object
    //   74	3	6	localCircularReferenceException2	CircularReferenceException
    //   86	3	6	localIllegalStateException	IllegalStateException
    //   52	8	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   1	7	74	com/google/kagegamesgson/CircularReferenceException
    //   14	20	74	com/google/kagegamesgson/CircularReferenceException
    //   25	28	74	com/google/kagegamesgson/CircularReferenceException
    //   30	37	74	com/google/kagegamesgson/CircularReferenceException
    //   38	44	74	com/google/kagegamesgson/CircularReferenceException
    //   46	51	74	com/google/kagegamesgson/CircularReferenceException
    //   54	64	74	com/google/kagegamesgson/CircularReferenceException
  }
  
  public void visitPrimitive(Object paramObject)
  {
    Object localObject2;
    if (paramObject == null) {
      localObject2 = JsonNull.createJsonNull();
    }
    for (Object localObject1 = localObject2;; localObject1 = localObject2)
    {
      assignToRoot((JsonElement)localObject1);
      return;
      localObject2 = new com/google/kagegamesgson/JsonPrimitive;
      ((JsonPrimitive)localObject2).<init>(paramObject);
    }
  }
  
  /* Error */
  public boolean visitUsingCustomHandler(ObjectTypePair paramObjectTypePair)
  {
    // Byte code:
    //   0: nop
    //   1: iconst_1
    //   2: istore 6
    //   4: aload_1
    //   5: invokevirtual 220	com/google/kagegamesgson/ObjectTypePair:getObject	()Ljava/lang/Object;
    //   8: astore 4
    //   10: aload 4
    //   12: ifnonnull +32 -> 44
    //   15: aload_0
    //   16: getfield 115	com/google/kagegamesgson/JsonSerializationVisitor:serializeNulls	Z
    //   19: istore 5
    //   21: iload 5
    //   23: ifeq +14 -> 37
    //   26: invokestatic 29	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   29: astore 5
    //   31: aload_0
    //   32: aload 5
    //   34: invokespecial 242	com/google/kagegamesgson/JsonSerializationVisitor:assignToRoot	(Lcom/google/kagegamesgson/JsonElement;)V
    //   37: iload 6
    //   39: istore 5
    //   41: iload 5
    //   43: ireturn
    //   44: aload_0
    //   45: aload_1
    //   46: invokespecial 32	com/google/kagegamesgson/JsonSerializationVisitor:findAndInvokeCustomSerializer	(Lcom/google/kagegamesgson/ObjectTypePair;)Lcom/google/kagegamesgson/JsonElement;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnull +15 -> 66
    //   54: aload_0
    //   55: aload_3
    //   56: invokespecial 242	com/google/kagegamesgson/JsonSerializationVisitor:assignToRoot	(Lcom/google/kagegamesgson/JsonElement;)V
    //   59: iload 6
    //   61: istore 5
    //   63: goto -22 -> 41
    //   66: iconst_0
    //   67: istore 5
    //   69: goto -28 -> 41
    //   72: astore 5
    //   74: aload 5
    //   76: astore_2
    //   77: aconst_null
    //   78: astore 5
    //   80: aload_2
    //   81: aload 5
    //   83: invokevirtual 24	com/google/kagegamesgson/CircularReferenceException:createDetailedException	(Lcom/google/kagegamesgson/FieldAttributes;)Ljava/lang/IllegalStateException;
    //   86: astore 5
    //   88: aload 5
    //   90: athrow
    //   91: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	JsonSerializationVisitor
    //   0	92	1	paramObjectTypePair	ObjectTypePair
    //   76	5	2	localCircularReferenceException1	CircularReferenceException
    //   49	7	3	localJsonElement	JsonElement
    //   8	3	4	localObject1	Object
    //   19	3	5	bool	boolean
    //   29	33	5	localJsonNull1	JsonNull
    //   67	1	5	i	int
    //   72	3	5	localCircularReferenceException2	CircularReferenceException
    //   78	11	5	localObject2	Object
    //   2	58	6	localJsonNull2	JsonNull
    // Exception table:
    //   from	to	target	type
    //   4	8	72	com/google/kagegamesgson/CircularReferenceException
    //   15	21	72	com/google/kagegamesgson/CircularReferenceException
    //   26	29	72	com/google/kagegamesgson/CircularReferenceException
    //   31	37	72	com/google/kagegamesgson/CircularReferenceException
    //   44	49	72	com/google/kagegamesgson/CircularReferenceException
    //   54	59	72	com/google/kagegamesgson/CircularReferenceException
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonSerializationVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */