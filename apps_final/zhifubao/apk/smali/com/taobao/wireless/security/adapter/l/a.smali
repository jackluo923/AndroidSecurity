.class public final Lcom/taobao/wireless/security/adapter/l/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method


# virtual methods
.method public final a(I[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->staticEncrypt(I[B[BLjava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(I[B[BLjava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->staticEncrypt(I[B[BLjava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2, p4}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->staticDecrypt(I[B[BLjava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(I[B[BLjava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->staticDecrypt(I[B[BLjava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I[B[BLjava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    sget v0, Lcom/taobao/wireless/security/adapter/a;->a:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->doCommandNative(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I[B[BLjava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    sget v0, Lcom/taobao/wireless/security/adapter/a;->b:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/l/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->doCommandNative(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
