.class public final Lcom/taobao/wireless/security/adapter/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/a/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/a/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "aa"

    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/a/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->atlasEncrypt([B[BLjava/lang/String;)[B

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
