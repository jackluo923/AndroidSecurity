.class public Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
.super Ldalvik/system/PathClassLoader;

# interfaces
.implements Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private c:Ldalvik/system/PathClassLoader;

.field private d:[Ldalvik/system/DexFile;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;[Ldalvik/system/DexFile;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->f()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:[Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findLoadedClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "can\'t find class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:[Ldalvik/system/DexFile;

    array-length v3, v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDepends()Ljava/util/Set;
    .locals 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ljava/util/Set;

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->getDepends()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    throw v1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v2, "findLoadedClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Ldalvik/system/PathClassLoader;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
