.class public final Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/c/a;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/c/a;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    return-void
.end method


# virtual methods
.method public final dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/c/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input cipherText string is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final dynamicDecryptByteArray([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input cipherText byte array is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dynamicDecryptByteArrayDDp([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input cipherText byte array is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/c/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input cipherText string is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/c/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input plainText string is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final dynamicEncryptByteArray([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input plainText byte array is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dynamicEncryptByteArrayDDp([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input plainText byte array is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/wireless/security/adapter/c/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Input plainText string is empty"

    const/16 v2, 0x191

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
