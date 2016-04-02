.class final Lcom/alipay/mobile/quinox/bundle/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBundleReadFromCfg(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bundle update: newBundle["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] > oldBundle["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "BundlesManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->i()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v5, v1, v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v0, "BootLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "extractSosFromBundle("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dls="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFileImmediately(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_1
    const-string/jumbo v0, "BootLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pre install path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_2
    return v7

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateBundleFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/b;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->a(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, p1

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string/jumbo v4, "BootLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "extractThingsFromApk("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ") failed."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string/jumbo v4, "BootLoader"

    const-string/jumbo v5, "pre install error"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p1, v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto/16 :goto_1
.end method
