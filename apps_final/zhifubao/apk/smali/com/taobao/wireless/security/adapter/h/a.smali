.class public final Lcom/taobao/wireless/security/adapter/h/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/h/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    iput-object p1, p0, Lcom/taobao/wireless/security/adapter/h/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getDexHashNative(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->isPackageValidNative(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v1

    invoke-static {v5}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/wireless/security/adapter/h/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    array-length v2, v0

    iget-object v3, p0, Lcom/taobao/wireless/security/adapter/h/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, v3}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->checkEnvAndFilesNative([Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method
