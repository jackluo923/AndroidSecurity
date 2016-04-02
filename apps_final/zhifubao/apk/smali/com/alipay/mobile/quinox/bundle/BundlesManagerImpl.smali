.class public Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundlesManager;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private j:Ljava/lang/Object;

.field private k:Lcom/alipay/mobile/quinox/bundle/d;

.field private final l:Z

.field private m:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->isDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l:Z

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v0, Lcom/alipay/mobile/quinox/bundle/d;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/alipay/mobile/quinox/bundle/d;-><init>(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundlesManager;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins_opt"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v1, "plugins_lib"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-quinox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UnKnow bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/io/File;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "libplugins.so"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readCfg(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string/jumbo v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "pre install error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v1

    const-string/jumbo v2, "BundlesManagerImpl"

    const-string/jumbo v3, "pre install error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V
    .locals 4

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "-quinox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "BundleResources"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getShallowDepends: (bundle=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "], has no depends."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "extractBundleFromApk("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") an exception occurs: retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/mobile/quinox/bundle/e;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/bundle/e;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4, v5, v3, v2}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "extractSosFromBundle("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", dls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") an exception occurs: retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/mobile/quinox/bundle/e;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/bundle/e;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v4, v5, v3, v2}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "dynamicLoadToCheck"

    const-string/jumbo v2, "upgrade"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    if-eqz p4, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    :goto_1
    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    invoke-virtual {v9, v8}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_UpgradeErr"

    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s checkSign failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateBundles() ignore: path="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " is not exist."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_UpgradeErr"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s dependencies error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_b
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->isInHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v3

    :goto_5
    and-int/2addr v0, v2

    move v2, v0

    goto :goto_4

    :cond_c
    move v0, v1

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->isInHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v3

    :goto_7
    and-int/2addr v2, v0

    goto :goto_6

    :cond_e
    move v0, v1

    goto :goto_7

    :cond_f
    if-eqz v2, :cond_13

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    goto :goto_8

    :cond_10
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/util/Map;)V

    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    :goto_a
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_14

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_13
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Map;)V

    goto :goto_a

    :cond_14
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V

    invoke-interface {p3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return v2
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/bundle/a;->a([Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/a;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "armeabi"

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "dynamicLoadToCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "install:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BundlesManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " install: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "     dest: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->i()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    throw v0

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_1
    if-ge v3, v6, :cond_9

    aget-object v7, p2, v3

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v1, v1, v10

    if-nez v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    cmp-long v1, v1, v10

    if-eqz v1, :cond_5

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, v9}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    const-string/jumbo v1, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy so: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " success."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_7
    throw v0

    :cond_8
    const-string/jumbo v1, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "copy so: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " error, not exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v4, v1

    goto/16 :goto_2
.end method

.method private c(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->a()V

    return-object v0
.end method

.method private i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    return-object v0
.end method

.method private l()V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_ensure_native_libs_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v3, "framework_preferences"

    invoke-virtual {v0, v3, v9}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v4, "BundlesManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ensureNativeLibs.getBoolean("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->o()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lib"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "armeabi"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "lib.*\\.so"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "lib"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ".so"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "BundlesManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ensureNativeLibs.extractBundleFromApk("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ensureNativeLibs.putBoolean("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private m()V
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v2, "plugins.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readCfg(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    aget-object v2, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    aget-object v1, v0, v1

    const/4 v6, 0x2

    aget-object v6, v0, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    :goto_1
    :try_start_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "init error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_4
    :try_start_7
    const-string/jumbo v6, "BundlesManagerImpl"

    const-string/jumbo v7, "init error"

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_3
    :goto_5
    return-void

    :catch_2
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "init error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v1

    const-string/jumbo v2, "BundlesManagerImpl"

    const-string/jumbo v3, "init error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method private n()V
    .locals 13

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "libplugins.so"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readCfg(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v9, v0, v2

    const-string/jumbo v2, ".so"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/4 v2, 0x2

    aget-object v10, v0, v2

    if-eqz v3, :cond_0

    const-string/jumbo v2, "android-phone-discovery-guessinput"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v10, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->i()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v9, v3

    if-lez v9, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "BootLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "extractSosFromBundle("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", dls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ") failed."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_2
    const-string/jumbo v3, "BootLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pre install path: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v0

    :cond_4
    :try_start_6
    iget-object v11, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-static {v11, v3, v10}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    :try_start_7
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :try_start_8
    invoke-direct {p0, v9, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    :try_start_9
    const-string/jumbo v0, "BootLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "extractThingsFromApk("

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ") failed."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v1

    :cond_5
    move-object v2, v3

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    :try_start_a
    const-string/jumbo v9, "BootLoader"

    const-string/jumbo v10, "pre install error"

    invoke-static {v9, v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b([Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :goto_6
    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "pre install error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v1

    const-string/jumbo v2, "BundlesManagerImpl"

    const-string/jumbo v3, "pre install error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_5

    :cond_7
    move-object v5, v1

    goto/16 :goto_1
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "failed to access the apk file."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs declared-synchronized a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 10

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BundleResources"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove CachedResources [bundle="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", depends="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-nez v0, :cond_8

    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    const-class v0, Landroid/content/res/AssetManager;

    const-string/jumbo v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p3, :cond_3

    array-length v2, p3

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    array-length v8, p3

    add-int/2addr v7, v8

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    const-string/jumbo v4, "BundleResources"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getShallowDepends() : Host Bundle Self=["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "], _depends="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, p1, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Set;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/Set;)V

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "BundleResources"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "join: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] has packageId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", path="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_1

    array-length v4, p3

    if-lez v4, :cond_1

    new-instance v2, Ljava/util/HashSet;

    array-length v4, p3

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "BundleResources"

    const-string/jumbo v4, "getShallowDepends: (bundle==null)"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "BundleResources"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Host Bundle Self=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], has no depended Bundle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_9

    new-instance v0, Lcom/alipay/mobile/quinox/resources/c;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/resources/c;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/List;)V

    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v0, Lcom/alipay/mobile/quinox/resources/c;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/quinox/resources/c;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Lcom/alipay/mobile/quinox/bundle/a;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public final varargs a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->o()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    array-length v4, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p3, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    array-length v3, p3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, p3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lib"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "BundlesManagerImpl"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v3, "bundles.cfg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "com.alipay."

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    const-string/jumbo v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-build"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v3, p3}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->getBundleFilePath(Ljava/io/BufferedInputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string/jumbo v3, "BundlesManagerImpl"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "dynamicLoadToCheck"

    const-string/jumbo v2, "revert"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "apps"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v4, "bundles.cfg"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/quinox/bundle/c;

    invoke-direct {v0, p0, p1, v3, v2}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/util/List;Ljava/io/File;Ljava/util/List;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_2
    const-string/jumbo v4, "BundlesManagerImpl"

    const-string/jumbo v5, "Failed to load .apk/asset/bundles.cfg, try to load .apk/asset/libplugins.so"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    goto :goto_5

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "dynamicLoadToCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteBundleData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    const-class v4, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v3, "delete_bundles.cfg"

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v3

    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_0
    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    array-length v6, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "read "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " failed"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    :try_start_6
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v8, "delete_bundles.cfg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :cond_3
    :goto_4
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :catch_1
    move-exception v0

    :goto_5
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "write "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    const/4 v0, 0x1

    array-length v6, v3

    move v1, v0

    move v0, v2

    :goto_7
    if-ge v0, v6, :cond_5

    aget-object v2, v3, v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    if-eqz v1, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3

    :catch_3
    move-exception v3

    goto/16 :goto_2

    :cond_6
    move-object v3, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v1, "bundles.cfg"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "bundles.cfg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/quinox/bundle/b;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/quinox/bundle/b;-><init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->readBundlesFromCfg(Ljava/io/BufferedInputStream;Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;)V

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->l()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v0, v1

    if-lez v0, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    const-string/jumbo v4, "BundlesManagerImpl"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->m()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_5
    :try_start_5
    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "Failed to load .apk/asset/bundles.cfg, try to load .apk/asset/libplugins.so"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_6
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "BundlesManagerImpl"

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_7
    return-void

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b:Ljava/lang/String;

    const-string/jumbo v2, "bundles.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/utils/CfgUtil;->writeBundlesToCfg(Ljava/io/BufferedOutputStream;Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->p()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/d;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->recover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "[verify] recover version error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    const-string/jumbo v2, "[verify] write cfg error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v6

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/quinox/bundle/d;->a(Lcom/alipay/mobile/quinox/bundle/a;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "BundlesManagerImpl"

    const-string/jumbo v1, "MonitorPoint_DynamicLoad_addExternalErr"

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s checkSign failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'s BundleVersion is lower :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->k:Lcom/alipay/mobile/quinox/bundle/d;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/util/Map;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Ljava/util/Map;)V

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The added bundle is already loaded, [path="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "], so you should restart app to take effect"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "MonitorPoint_DynamicLoad_addExternalErr"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s dependencies error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->h(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->c(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Ljava/lang/Object;

    const-string/jumbo v3, "onBundleLoad"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BundlesManagerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final g()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "classloader error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInHost(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->j:Ljava/lang/Object;

    return-void
.end method
