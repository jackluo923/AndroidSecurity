.class public final Lcom/taobao/wireless/security/adapter/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/e/b;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/wireless/security/adapter/e/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/e/b;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p2}, Lcom/taobao/wireless/security/adapter/e/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/e/b;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/taobao/wireless/security/adapter/e/d;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    iget-object v1, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    sget-object v0, Lcom/taobao/wireless/security/adapter/e/c$a;->a:[I

    iget v3, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    aget v7, v0, v3

    iget-object v8, p1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    sget-object v0, Lcom/taobao/wireless/security/adapter/e/b$1;->a:[I

    add-int/lit8 v3, v7, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v6

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v3, v7, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/e/b;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v2, v1, v0, v8, v3}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->indieKitRequestNative([Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :pswitch_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    const-string/jumbo v0, "Input map size invalid : required size is \"%d\" and actual size is \"%d\""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    :goto_1
    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "username"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "timestamp"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    move-object v0, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Input map value invalid : some key not exits or the relative value is empty"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    goto :goto_1

    :pswitch_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v5, :cond_3

    const-string/jumbo v0, "Input map size invalid : required size is \"%d\" and actual size is \"%d\""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    :goto_2
    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "timestamp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "Input map value invalid : key \"%1s\" not exits or the relative value is empty"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "timestamp"

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    goto :goto_2

    :pswitch_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_5

    const-string/jumbo v0, "Input map size invalid : required size is \"%d\" and actual size is \"%d\""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    :goto_3
    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "filesignature"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "filehash"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    move-object v0, v3

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "Input map value invalid : some key not exits or the relative value is empty"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
