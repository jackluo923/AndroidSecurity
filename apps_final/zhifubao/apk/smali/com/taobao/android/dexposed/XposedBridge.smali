.class public final Lcom/taobao/android/dexposed/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final allUnhookCallbacks:Ljava/util/ArrayList;

.field private static disableHooks:Z

.field private static final hookedMethodCallbacks:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
    .locals 3

    .prologue
    .line 147
    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    instance-of v0, v0, Lcom/taobao/android/dexposed/XC_MethodHook;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no callback defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lcom/taobao/android/dexposed/XC_MethodHook;

    .line 151
    invoke-static {p0, p1, p2}, Lcom/taobao/android/dexposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 152
    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v1

    .line 153
    instance-of v2, v0, Lcom/taobao/android/dexposed/XC_MethodHook$XC_MethodAlwaysHook;

    if-nez v2, :cond_2

    instance-of v0, v0, Lcom/taobao/android/dexposed/XC_MethodReplacement$XC_MethodAlwaysReplacement;

    if-nez v0, :cond_2

    .line 155
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 156
    :try_start_0
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_2
    return-object v1

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static handleHookedMethod(Ljava/lang/reflect/Member;ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 183
    check-cast p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;

    .line 185
    sget-boolean v0, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v2, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 194
    :cond_0
    iget-object v0, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v0}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v7

    .line 195
    array-length v3, v7

    .line 196
    if-nez v3, :cond_1

    .line 198
    :try_start_1
    iget-object v2, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 205
    :cond_1
    new-instance v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 206
    iput-object p0, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 207
    iput-object p3, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 208
    iput-object p4, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    move v1, v2

    .line 214
    :goto_1
    :try_start_2
    aget-object v0, v7, v1

    check-cast v0, Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-virtual {v0, v8}, Lcom/taobao/android/dexposed/XC_MethodHook;->beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    iget-boolean v0, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v0, :cond_3

    .line 226
    add-int/lit8 v0, v1, 0x1

    move v6, v0

    .line 232
    :goto_2
    iget-boolean v0, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v0, :cond_2

    .line 234
    :try_start_3
    iget-object v2, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v3, p2, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    iget-object v4, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v5, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    :cond_2
    :goto_3
    add-int/lit8 v0, v6, -0x1

    move v1, v0

    .line 244
    :goto_4
    invoke-virtual {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 245
    invoke-virtual {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    .line 248
    :try_start_4
    aget-object v0, v7, v1

    check-cast v0, Lcom/taobao/android/dexposed/XC_MethodHook;

    invoke-virtual {v0, v8}, Lcom/taobao/android/dexposed/XC_MethodHook;->afterHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    :goto_5
    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_6

    .line 261
    invoke-virtual {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 215
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 220
    iput-boolean v2, v8, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 229
    :cond_3
    add-int/lit8 v0, v1, 0x1

    if-lt v0, v3, :cond_7

    move v6, v0

    goto :goto_2

    .line 236
    :catch_3
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 249
    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 253
    if-nez v3, :cond_4

    .line 254
    invoke-virtual {v8, v2}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_5

    .line 256
    :cond_4
    invoke-virtual {v8, v3}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 264
    :cond_5
    invoke-virtual {v8}, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lcom/taobao/android/dexposed/XC_MethodHook;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 172
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 174
    invoke-static {v4, p1}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-object v1
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lcom/taobao/android/dexposed/XC_MethodHook;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 140
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 141
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-static {v4, p2}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-object v1
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 88
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only methods and constructors can be hooked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 94
    sget-object v4, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v4

    .line 95
    :try_start_0
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 96
    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    .line 98
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v2, 0x1

    move-object v3, v0

    move v0, v2

    .line 101
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v3, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 105
    const-string/jumbo v0, "slot"

    invoke-static {p0, v0}, Lcom/taobao/android/dexposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    .line 109
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 110
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    .line 111
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 117
    :goto_1
    new-instance v6, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;

    invoke-direct {v6, v3, v2, v0, v1}, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;-><init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lcom/taobao/android/dexposed/XposedBridge$1;)V

    .line 118
    invoke-static {p0, v4, v5, v6}, Lcom/taobao/android/dexposed/XposedBridge;->hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V

    .line 120
    :cond_1
    new-instance v0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p0}, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;-><init>(Lcom/taobao/android/dexposed/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move-object v0, p0

    .line 113
    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 114
    goto :goto_1

    :cond_3
    move-object v3, v0

    move v0, v2

    goto :goto_0
.end method

.method private static synchronized native declared-synchronized hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V
.end method

.method private static native initNative()Z
.end method

.method public static varargs invokeNonVirtual(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 276
    :try_start_0
    const-class v0, Ljava/lang/reflect/Method;

    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 279
    const-string/jumbo v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "slot:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/taobao/android/dexposed/XposedBridge;->invokeNonVirtualNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 285
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :catch_1
    move-exception v0

    throw v0

    .line 288
    :catch_2
    move-exception v0

    .line 289
    new-instance v1, Lcom/taobao/android/dexposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taobao/android/dexposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native invokeNonVirtualNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 328
    if-nez p2, :cond_2

    .line 329
    sget-object v5, Lcom/taobao/android/dexposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 334
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 335
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    .line 336
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 344
    :goto_1
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dexposed/XposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 338
    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 339
    const/4 v3, 0x0

    goto :goto_1

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method must be of type Method or Constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v5, p2

    goto :goto_0
.end method

.method private static native invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcom/taobao/android/dexposed/XposedBridge;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Xposed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized log(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 78
    const-class v1, Lcom/taobao/android/dexposed/XposedBridge;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Xposed"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static main()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->initNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "Errors during native Xposed initialization"

    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, "Errors during Xposed initialization"

    invoke-static {v1}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 59
    sput-boolean v2, Lcom/taobao/android/dexposed/XposedBridge;->disableHooks:Z

    goto :goto_0
.end method

.method public static unhookAllMethods()V
    .locals 3

    .prologue
    .line 163
    sget-object v2, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 165
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    invoke-virtual {v0}, Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;->unhook()V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lcom/taobao/android/dexposed/XC_MethodHook;)V
    .locals 2

    .prologue
    .line 130
    sget-object v1, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/taobao/android/dexposed/XposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 132
    if-nez v0, :cond_0

    .line 133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    monitor-exit v1

    .line 135
    invoke-virtual {v0, p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
