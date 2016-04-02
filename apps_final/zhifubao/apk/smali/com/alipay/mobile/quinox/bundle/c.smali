.class final Lcom/alipay/mobile/quinox/bundle/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/CfgUtil$ReadBundleFromCfgListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/util/List;Ljava/io/File;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/c;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/c;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/alipay/mobile/quinox/bundle/c;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBundleReadFromCfg(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/c;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/c;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
