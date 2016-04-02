.class Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field allAccept:Z

.field final excludePrefixes:Ljava/util/Set;

.field final excludes:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludes:Ljava/util/Set;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludes:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    and-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->excludePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public allAccept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept:Z

    return v0
.end method
