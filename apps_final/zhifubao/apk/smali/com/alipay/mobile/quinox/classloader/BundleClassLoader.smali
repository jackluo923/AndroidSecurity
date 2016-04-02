.class public Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
.super Ljava/lang/ClassLoader;

# interfaces
.implements Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private b:Ldalvik/system/DexFile;

.field private c:[Ljava/io/File;

.field private d:Ljava/util/zip/ZipFile;

.field private e:Ljava/io/File;

.field private mBundle:Lcom/alipay/mobile/quinox/bundle/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/a;Lcom/alipay/mobile/quinox/bundle/BundlesManager;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p5}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/a;

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-interface {p3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mt6592"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "plugins_opt"

    const-string/jumbo v3, "plugins"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".dex"

    const-string/jumbo v3, ".jar"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/util/Collection;)V

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DexFile load fails"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v6, v0, p2}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(ZLjava/lang/Exception;Lcom/alipay/mobile/quinox/bundle/a;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(ZLjava/lang/Exception;Lcom/alipay/mobile/quinox/bundle/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p4}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:[Ljava/io/File;

    return-void
.end method

.method private static a(ZLjava/lang/Exception;Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DexfileError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/io/File;
    .locals 5

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/io/File;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:[Ljava/io/File;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Ljava/io/File;

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "Failed to new BundleClassLoader.mZipFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "jar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Lcom/alipay/mobile/quinox/bundle/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/a;

    return-object v0
.end method

.method public getDepends()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->l()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "Unknown"

    const-string/jumbo v3, "0.0"

    const-string/jumbo v4, "Unknown"

    const-string/jumbo v5, "Unknown"

    const-string/jumbo v6, "0.0"

    const-string/jumbo v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->getDepends()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " can,t find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", depends="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can,t find class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BundleClassLoader["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:Ldalvik/system/DexFile;

    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
