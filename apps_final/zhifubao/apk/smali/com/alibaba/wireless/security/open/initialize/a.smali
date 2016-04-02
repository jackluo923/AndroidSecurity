.class public final Lcom/alibaba/wireless/security/open/initialize/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alibaba/wireless/security/open/initialize/b;

.field private b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alibaba/wireless/security/open/initialize/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    return-void
.end method

.method private static a([I[I)I
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    array-length v0, p0

    array-length v4, p1

    if-ge v0, v4, :cond_3

    array-length v0, p0

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_6

    aget v5, p0, v4

    aget v6, p1, v4

    if-le v5, v6, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    array-length v0, p1

    goto :goto_1

    :cond_4
    aget v5, p0, v4

    aget v6, p1, v4

    if-ge v5, v6, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    array-length v4, p0

    array-length v5, p1

    if-ne v4, v5, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    array-length v3, p0

    if-ne v0, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "libsecuritysdk-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-eq v2, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[I
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    array-length v0, v3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static c()Ljava/io/File;
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/taobao/wireless/security/adapter/dynamicupdatelib/DynamicUpdateLibAdapter;->getDownloadFolderDirAdapter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v2

    :goto_1
    if-ge v4, v7, :cond_6

    aget-object v3, v6, v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_2

    if-eqz v0, :cond_4

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/open/initialize/a;->a([I[I)I

    move-result v8

    if-lez v8, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    move-object v1, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;

    invoke-interface {v0}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;->onSuccess()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final a(Landroid/content/ContextWrapper;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Landroid/content/ContextWrapper;)Lcom/alibaba/wireless/security/open/initialize/b$a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/initialize/b;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/a;->c()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {}, Lcom/taobao/wireless/security/adapter/dynamicupdatelib/DynamicUpdateLibAdapter;->getMiniVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Ljava/lang/String;)[I

    move-result-object v2

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Ljava/lang/String;)[I

    move-result-object v6

    invoke-static {v6, v2}, Lcom/alibaba/wireless/security/open/initialize/a;->a([I[I)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-static {v6, v5}, Lcom/alibaba/wireless/security/open/initialize/a;->a([I[I)I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lcom/alibaba/wireless/security/open/initialize/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/wireless/security/open/initialize/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method final b(Landroid/content/ContextWrapper;)Lcom/alibaba/wireless/security/open/initialize/b$a;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/wireless/security/open/initialize/b$a;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/initialize/b$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, v2, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iput-object v0, v2, Lcom/alibaba/wireless/security/open/initialize/b$a;->a:Ljava/io/File;

    return-object v2

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/files/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, v2, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;

    invoke-interface {v0}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;->onError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
