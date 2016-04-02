.class public Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->initial(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static b(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->c(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->getExtConfigManager(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;->getIconfontInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->getIconfontFonts()Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->getIconfontUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getAutoColor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->getIconfontColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    :cond_2
    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getAutoSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->getIconfontSize()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    goto :goto_0
.end method

.method private static c(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontBundle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "mBundle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mName"

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;
    .locals 3

    const-class v1, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->a:Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->a:Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->a:Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearAllIconfontInterfaces()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->clearAllIconfontInterfaces()V

    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->destroy()V

    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;->getInstance()Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConfigUpdate()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;->getInstance()Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/TypefaceCache;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->setupTypeface(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public registerIconfontView(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->a(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->b(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    goto :goto_0
.end method

.method public setupTypeface(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->c(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->getExtConfigManager(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->getIconfontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;->getExtTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;->setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;

    goto :goto_0
.end method

.method public unRegisterIconfontView(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->a(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    return-void
.end method
