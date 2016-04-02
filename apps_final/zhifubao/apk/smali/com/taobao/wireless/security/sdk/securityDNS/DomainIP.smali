.class public Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->b:[[B

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->b:[[B

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->b:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->b:[[B

    aget-object v4, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ip["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    move v2, v1

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    const-string/jumbo v0, "null"

    goto :goto_2
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIPAddress()[[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->b:[[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DoaminIP [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
