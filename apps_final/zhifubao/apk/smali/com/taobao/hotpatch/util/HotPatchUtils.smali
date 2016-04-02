.class public Lcom/taobao/hotpatch/util/HotPatchUtils;
.super Ljava/lang/Object;
.source "HotPatchUtils.java"


# static fields
.field private static final LIB_ART:Ljava/lang/String; = "libart.so"

.field private static final LIB_ART_D:Ljava/lang/String; = "libartd.so"

.field private static final LIB_DALVIK:Ljava/lang/String; = "libdvm.so"

.field private static final SELECT_RUNTIME_PROPERTY:Ljava/lang/String; = "persist.sys.dalvik.vm.lib"

.field private static isCheckedDeviceSupport:Z

.field private static isDeviceSupportable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 24
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentRuntimeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 64
    :try_start_1
    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    const-string/jumbo v0, "WTF?!"
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "persist.sys.dalvik.vm.lib"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Dalvik"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "libdvm.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string/jumbo v0, "Dalvik"

    goto :goto_0

    .line 75
    :cond_2
    const-string/jumbo v1, "libart.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    const-string/jumbo v0, "ART"

    goto :goto_0

    .line 77
    :cond_3
    const-string/jumbo v1, "libartd.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v0, "ART debug build"
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    const-string/jumbo v0, "IllegalAccessException"

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    const-string/jumbo v0, "IllegalArgumentException"

    goto :goto_0

    .line 87
    :catch_2
    move-exception v0

    const-string/jumbo v0, "InvocationTargetException"

    goto :goto_0

    .line 90
    :catch_3
    move-exception v0

    const-string/jumbo v0, "SystemProperties.get(String key, String def) method is not found"

    goto :goto_0

    .line 93
    :catch_4
    move-exception v0

    const-string/jumbo v0, "SystemProperties class is not found"

    goto :goto_0
.end method

.method private static isDalvikMode()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->getCurrentRuntimeValue()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HotPatchUtils"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isDeviceSupport(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 157
    const-class v1, Lcom/taobao/hotpatch/util/HotPatchUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    if-eqz v0, :cond_0

    .line 158
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device support is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :goto_0
    monitor-exit v1

    return v0

    .line 160
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDalvikMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isSupportSDKVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isInBlackList()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isYunOS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "device support is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " checked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 170
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device support is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isInBlackList()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isX86CPU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportSDKVersion()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isX86CPU()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v2, "getprop ro.product.cpu.abi"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 121
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string/jumbo v4, "x86"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 136
    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 143
    :goto_1
    if-eqz v3, :cond_0

    .line 145
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 147
    :cond_0
    :goto_2
    const/4 v0, 0x1

    .line 151
    :goto_3
    return v0

    .line 129
    :cond_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 136
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 143
    :goto_5
    if-eqz v3, :cond_2

    .line 145
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 151
    :cond_2
    :goto_6
    const/4 v0, 0x0

    goto :goto_3

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_7
    if-eqz v0, :cond_3

    .line 131
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 136
    :cond_3
    :goto_8
    if-eqz v1, :cond_4

    .line 138
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 143
    :cond_4
    :goto_9
    if-eqz v2, :cond_2

    .line 145
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_6

    .line 147
    :catch_1
    move-exception v0

    goto :goto_6

    .line 129
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a
    if-eqz v1, :cond_5

    .line 131
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 136
    :cond_5
    :goto_b
    if-eqz v2, :cond_6

    .line 138
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 143
    :cond_6
    :goto_c
    if-eqz v3, :cond_7

    .line 145
    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 147
    :cond_7
    :goto_d
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto :goto_c

    :catch_c
    move-exception v1

    goto :goto_d

    .line 129
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_7

    :catch_e
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catch_f
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_7
.end method

.method private static isYunOS()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    const/4 v0, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ro.yunos.version"

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "java.vm.name"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v1

    .line 187
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "lemur"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    move v0, v2

    .line 190
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 186
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method public static isYunOSSupport()Z
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isYunOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
