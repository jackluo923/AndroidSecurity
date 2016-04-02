.class public abstract Lcom/taobao/wireless/security/sdk/securityDNS/SecurityDNSResultReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final DNS_ACTION:Ljava/lang/String; = "setaobao.bbox.DNS"

.field public static final EXTRA_DNS_IP:Ljava/lang/String; = "IPAddress"

.field public static final EXTRA_DNS_LOCAL:Ljava/lang/String; = "DNSinfolocal"

.field public static final EXTRA_DNS_NET:Ljava/lang/String; = "DNSinfonet"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final parserDomainIP([B)Ljava/util/ArrayList;
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, p0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v4

    and-int/lit16 v6, v1, 0xff

    add-int v1, v6, v4

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_2

    div-int/lit8 v7, v6, 0x4

    if-lez v7, :cond_1

    filled-new-array {v7, v10}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_1

    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v9, v1, 0x4

    add-int/2addr v8, v9

    aget-object v9, v0, v1

    invoke-static {p0, v8, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int v1, v4, v6

    add-int/lit8 v1, v1, 0x1

    new-instance v4, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;

    invoke-direct {v4, v5, v0}, Lcom/taobao/wireless/security/sdk/securityDNS/DomainIP;-><init>(Ljava/lang/String;[[B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method
