.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;
.super Ljava/lang/Object;
.source "DynamicReleaseWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    .line 22
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "releaseCode is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setReleaseCode(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "releaseCode not setted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 25
    const-string/jumbo v0, ".action.dynamicrelease.rollback"

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v1, "releaseCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->rollback()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.android.phone.mobilecommon.dynamicrelease.ReplaceBundleHelper"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-string/jumbo v2, "revertBundles"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 31
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, ".action.dynamicrelease.bundlereplace"

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v1, "bundleList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v2, "releaseCode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v3, "forceUpgrade"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string/jumbo v4, "com.alipay.android.phone.mobilecommon.dynamicrelease.ReplaceBundleHelper"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "replaceBundle"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, ".action.dynamicrelease.hotpatch"

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v1, "releaseCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v2, "isOnlyHotpatch"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v3, "filePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->b:Landroid/content/Intent;

    const-string/jumbo v4, "md5"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    if-eqz v0, :cond_3

    .line 61
    :try_start_2
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseWorker;->a(Ljava/lang/String;)V

    .line 63
    :cond_3
    const-string/jumbo v0, "1"

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/hotpatch/Hotpatch;->loadPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 64
    :catch_2
    move-exception v0

    .line 65
    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
