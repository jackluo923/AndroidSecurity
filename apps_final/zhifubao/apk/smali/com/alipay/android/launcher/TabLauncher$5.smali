.class Lcom/alipay/android/launcher/TabLauncher$5;
.super Ljava/lang/ClassLoader;
.source "TabLauncher.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$5;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 373
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$5;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # getter for: Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
    invoke-static {v1}, Lcom/alipay/android/launcher/TabLauncher;->access$10(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getClassloaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 378
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 393
    :cond_1
    if-nez v0, :cond_3

    .line 394
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$5;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # getter for: Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
    invoke-static {v1}, Lcom/alipay/android/launcher/TabLauncher;->access$10(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getClassloaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 394
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    .line 408
    :cond_3
    if-nez v0, :cond_4

    .line 409
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 411
    :cond_4
    if-nez v0, :cond_5

    .line 412
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "TabLauncher ClassLoader  class Not Found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_5
    return-object v0

    .line 379
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 381
    if-eqz v0, :cond_0

    :try_start_0
    instance-of v3, v0, Ldalvik/system/PathClassLoader;

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "loadClassFromCurrent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 385
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    if-nez v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 395
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 397
    if-eqz v0, :cond_2

    .line 398
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 401
    if-nez v0, :cond_3

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
