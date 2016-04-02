.class public final Lcom/alibaba/wireless/security/open/staticdataencrypt/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/l/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/l/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/l/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    return-void
.end method


# virtual methods
.method public final staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->b(I[B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->d(I[B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->a(I[B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final staticBinarySafeEncryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->c(I[B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->b(I[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;->a:Lcom/taobao/wireless/security/adapter/l/a;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/taobao/wireless/security/adapter/l/a;->a(I[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
