.class public Lcom/taobao/hotpatch/patch/PatchMain;
.super Ljava/lang/Object;
.source "PatchMain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PatchMain"

.field private static isLoadedSO:Z

.field private static final loadedBundlePatchCallbacks:Ljava/util/Map;

.field private static final loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

.field private static patternHostMethod:Ljava/lang/reflect/Method;

.field private static patternMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-direct {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;-><init>()V

    sput-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCallbacks()V
    .locals 4

    .prologue
    .line 250
    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->c()V

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 255
    :try_start_1
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    sget-object v3, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 252
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 262
    :cond_1
    :try_start_2
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method private static hookLoadBundlePatch(Lcom/alipay/mobile/hotpatch/IAlipayPatch;)V
    .locals 4

    .prologue
    .line 276
    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 277
    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->bundleName()Ljava/lang/String;

    move-result-object v0

    .line 278
    sget-object v2, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    new-instance v2, Lcom/taobao/hotpatch/patch/a;

    invoke-direct {v2, p0}, Lcom/taobao/hotpatch/patch/a;-><init>(Lcom/taobao/hotpatch/patch/IPatch;)V

    invoke-virtual {v0, v2}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a(Ljava/lang/Object;)Z

    .line 285
    :goto_0
    monitor-exit v1

    return-void

    .line 281
    :cond_0
    new-instance v2, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-direct {v2}, Lcom/taobao/hotpatch/patch/ReadWriteSet;-><init>()V

    .line 282
    new-instance v3, Lcom/taobao/hotpatch/patch/a;

    invoke-direct {v3, p0}, Lcom/taobao/hotpatch/patch/a;-><init>(Lcom/taobao/hotpatch/patch/IPatch;)V

    invoke-virtual {v2, v3}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a(Ljava/lang/Object;)Z

    .line 283
    sget-object v3, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static hookLoadPatch(Lcom/taobao/hotpatch/patch/a;)V
    .locals 2

    .prologue
    .line 270
    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    monitor-enter v1

    .line 271
    :try_start_0
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v0, p0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initPatternHostMethod(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "patternHost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    sput-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->patternHostMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "pattern"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 105
    sput-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->patternMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isPushClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 174
    const-string/jumbo v0, "push"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android-phone-rome-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 165
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->patternMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->patternHostMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FILE not found on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->FILE_NOT_FOUND:I

    invoke-direct {v0, v3, v2, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 161
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string/jumbo v1, "This device is not support"

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->DEVICE_UNSUPPORT:I

    invoke-direct {v0, v3, v2, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p0}, Lcom/taobao/hotpatch/patch/PatchMain;->loadDexposedLib(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PatchMain"

    const-string/jumbo v3, "loadDexposedLib fail"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p0}, Lcom/taobao/hotpatch/patch/PatchMain;->initPatternHostMethod(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/taobao/hotpatch/patch/PatchMain;->loadAllCallbacks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PatchMain"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadAllCallbacks fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {}, Lcom/taobao/android/dexposed/XposedBridge;->unhookAllMethods()V

    .line 149
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 150
    const-string/jumbo v1, "No patch class to be handle"

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_PATCH_CLASS_HANDLE:I

    invoke-direct {v0, v3, v2, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchMain"

    const-string/jumbo v2, "\u5f00\u59cb\u52a0\u8f7d\u7cfb\u7edf\u7c7b\u7684patch"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchParam;

    sget-object v1, Lcom/taobao/hotpatch/patch/PatchMain;->loadedPatchCallbacks:Lcom/taobao/hotpatch/patch/ReadWriteSet;

    invoke-direct {v0, v1}, Lcom/taobao/hotpatch/patch/PatchParam;-><init>(Lcom/taobao/hotpatch/patch/ReadWriteSet;)V

    .line 158
    iput-object p0, v0, Lcom/taobao/hotpatch/patch/PatchParam;->context:Landroid/content/Context;

    .line 159
    iput-object p2, v0, Lcom/taobao/hotpatch/patch/PatchParam;->contentMap:Ljava/util/HashMap;

    .line 161
    invoke-static {v0}, Lcom/taobao/hotpatch/patch/a;->a(Lcom/taobao/hotpatch/patch/PatchParam;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static loadAllCallbacks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 12

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "hotpatch_opt"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :cond_0
    :try_start_1
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4, p2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v0, v1}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 193
    :try_start_3
    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 195
    invoke-static {}, Lcom/taobao/hotpatch/patch/PatchMain;->clearAllCallbacks()V

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    const/4 v2, 0x0

    .line 201
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 209
    :goto_1
    if-eqz v0, :cond_1

    .line 210
    :try_start_5
    const-class v2, Lcom/alipay/mobile/hotpatch/IAlipayPatch;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/hotpatch/IAlipayPatch;

    .line 213
    invoke-interface {v0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->bundleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->className()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-interface {v0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->className()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {p0, v2}, Lcom/taobao/hotpatch/patch/PatchMain;->isSystemClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PatchMain"

    const-string/jumbo v8, "%s patternHost: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-eqz v5, :cond_3

    .line 220
    new-instance v2, Lcom/taobao/hotpatch/patch/a;

    invoke-direct {v2, v0}, Lcom/taobao/hotpatch/patch/a;-><init>(Lcom/taobao/hotpatch/patch/IPatch;)V

    invoke-static {v2}, Lcom/taobao/hotpatch/patch/PatchMain;->hookLoadPatch(Lcom/taobao/hotpatch/patch/a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_7
    const-string/jumbo v2, "PatchMain"

    invoke-static {v2, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 235
    :goto_2
    :try_start_8
    const-string/jumbo v0, "PatchMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v3, 0x0

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string/jumbo v5, "Find patch class exception "

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 238
    if-eqz v2, :cond_2

    .line 240
    :try_start_9
    invoke-virtual {v2}, Ldalvik/system/DexFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 246
    :cond_2
    :goto_3
    return-object v0

    .line 188
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 189
    :try_start_a
    const-string/jumbo v0, "PatchMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v3, 0x0

    sget v4, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string/jumbo v5, "Find patch class exception "

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 234
    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 202
    :catch_4
    move-exception v0

    .line 203
    :try_start_b
    const-string/jumbo v5, "PatchMain"

    invoke-static {v5, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    .line 221
    :cond_3
    :try_start_c
    invoke-interface {v0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->bundleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/taobao/hotpatch/patch/PatchMain;->isPushClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PatchMain"

    const-string/jumbo v7, "%s is in push"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v2, Lcom/taobao/hotpatch/patch/a;

    invoke-direct {v2, v0}, Lcom/taobao/hotpatch/patch/a;-><init>(Lcom/taobao/hotpatch/patch/IPatch;)V

    invoke-static {v2}, Lcom/taobao/hotpatch/patch/PatchMain;->hookLoadPatch(Lcom/taobao/hotpatch/patch/a;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 240
    :try_start_d
    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 243
    :cond_4
    :goto_5
    throw v0

    .line 225
    :cond_5
    :try_start_e
    invoke-static {v0}, Lcom/taobao/hotpatch/patch/PatchMain;->hookLoadBundlePatch(Lcom/alipay/mobile/hotpatch/IAlipayPatch;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 238
    :cond_6
    if-eqz v1, :cond_7

    .line 240
    :try_start_f
    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 246
    :cond_7
    :goto_6
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v1, 0x1

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_3

    .line 241
    :catch_5
    move-exception v0

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 241
    :catch_6
    move-exception v1

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PatchMain"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 241
    :catch_7
    move-exception v1

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PatchMain"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 238
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public static loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchMain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadBundlePatch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/hotpatch/patch/ReadWriteSet;

    .line 291
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->b()I

    move-result v1

    if-lez v1, :cond_1

    .line 292
    new-instance v1, Lcom/taobao/hotpatch/patch/PatchParam;

    invoke-direct {v1, v0}, Lcom/taobao/hotpatch/patch/PatchParam;-><init>(Lcom/taobao/hotpatch/patch/ReadWriteSet;)V

    .line 293
    iput-object p0, v1, Lcom/taobao/hotpatch/patch/PatchParam;->context:Landroid/content/Context;

    .line 294
    if-nez p2, :cond_0

    .line 295
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 297
    :cond_0
    const-string/jumbo v0, "bundleName"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iput-object p2, v1, Lcom/taobao/hotpatch/patch/PatchParam;->contentMap:Ljava/util/HashMap;

    .line 299
    invoke-static {v1}, Lcom/taobao/hotpatch/patch/a;->a(Lcom/taobao/hotpatch/patch/PatchParam;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "no patch for bundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v2, 0x0

    sget v3, Lcom/taobao/hotpatch/patch/PatchResult;->NO_PATCH_CLASS_HANDLE:I

    invoke-direct {v0, v2, v3, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method public static loadBundlePatchs(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "getBundlesManager"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->invokeDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 336
    const-string/jumbo v0, "isInHost"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "containsKey"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 339
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PatchMain"

    const-string/jumbo v8, "Bundle: %s is in host: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-eqz v1, :cond_1

    .line 345
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    :try_start_2
    const-string/jumbo v1, "PatchMain"

    invoke-static {v1, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 357
    const-string/jumbo v0, "PatchMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string/jumbo v3, "loadBundlePatchs Exception"

    invoke-direct {v0, v12, v2, v3, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    .line 346
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "PatchMain"

    const-string/jumbo v7, "Bundle: %s \u975ehost\u4f46\u662f\u5df2\u7ecf\u88ab\u521b\u5efa"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 355
    :cond_2
    :try_start_4
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v1, 0x1

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public static loadDexposedLib(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 364
    sget-boolean v0, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v1, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v2, "The so loaded."

    invoke-direct {v0, v3, v1, v2}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 384
    :goto_0
    return-object v0

    .line 367
    :cond_0
    if-nez p0, :cond_1

    .line 368
    const-string/jumbo v1, "Context cann\'t be null."

    .line 369
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PatchMain"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_EXCEPTION:I

    invoke-direct {v0, v4, v2, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 376
    :cond_2
    const-string/jumbo v0, "dexposed2.3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 380
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/patch/PatchMain;->isLoadedSO:Z

    .line 381
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v1, 0x1

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 383
    const-string/jumbo v0, "PatchMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->LOAD_SO_EXCEPTION:I

    const-string/jumbo v3, "Exception happened during load dexposed so."

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    :cond_3
    :try_start_1
    const-string/jumbo v0, "dexposed"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static loadHostPatchs(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchMain"

    const-string/jumbo v2, "loadHostPatchs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "getBundlesManager"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->invokeDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    const-string/jumbo v0, "isInHost"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 313
    sget-object v0, Lcom/taobao/hotpatch/patch/PatchMain;->loadedBundlePatchCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 317
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PatchMain"

    const-string/jumbo v7, "Bundle: %s is in host: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    :try_start_2
    const-string/jumbo v1, "PatchMain"

    invoke-static {v1, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 328
    const-string/jumbo v0, "PatchMain"

    invoke-static {v0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->FOUND_PATCH_CLASS_EXCEPTION:I

    const-string/jumbo v3, "loadHostPatchs Exception"

    invoke-direct {v0, v11, v2, v3, v1}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    .line 326
    :cond_1
    :try_start_3
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    const/4 v1, 0x1

    sget v2, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
