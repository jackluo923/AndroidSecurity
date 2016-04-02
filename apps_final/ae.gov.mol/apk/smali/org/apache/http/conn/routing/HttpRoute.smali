.class public final Lorg/apache/http/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;


# instance fields
.field private final layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:[Lorg/apache/http/HttpHost;

.field private final secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private final tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/HttpHost;

    sput-object v0, Lorg/apache/http/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 2
    .param p1, "local"    # Ljava/net/InetAddress;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-nez p3, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxies may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne p5, v0, :cond_2

    array-length v0, p3

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy required if tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    if-nez p5, :cond_3

    .line 109
    sget-object p5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 110
    :cond_3
    if-nez p6, :cond_4

    .line 111
    sget-object p6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 113
    :cond_4
    iput-object p2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    .line 114
    iput-object p1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    .line 115
    iput-object p3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 116
    iput-boolean p4, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    .line 117
    iput-object p5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 118
    iput-object p6, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 185
    const/4 v1, 0x0

    sget-object v3, Lorg/apache/http/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z

    .prologue
    .line 204
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    :goto_0
    if-eqz p4, :cond_1

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 207
    if-nez p3, :cond_2

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    goto :goto_1

    .line 211
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .prologue
    .line 160
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "secure"    # Z

    .prologue
    .line 175
    sget-object v3, Lorg/apache/http/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .prologue
    .line 137
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 138
    return-void
.end method

.method private static toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 2
    .param p0, "proxy"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    sget-object v0, Lorg/apache/http/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method private static toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 8
    .param p0, "proxies"    # [Lorg/apache/http/HttpHost;

    .prologue
    const/4 v7, 0x0

    .line 238
    if-eqz p0, :cond_0

    array-length v5, p0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 239
    :cond_0
    sget-object v4, Lorg/apache/http/conn/routing/HttpRoute;->EMPTY_HTTP_HOST_ARRAY:[Lorg/apache/http/HttpHost;

    .line 251
    :goto_0
    return-object v4

    .line 241
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/HttpHost;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 242
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    if-nez v3, :cond_2

    .line 243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Proxy chain may not contain null elements."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_3
    array-length v5, p0

    new-array v4, v5, [Lorg/apache/http/HttpHost;

    .line 249
    .local v4, "result":[Lorg/apache/http/HttpHost;
    array-length v5, p0

    invoke-static {p0, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    if-ne p1, p0, :cond_0

    .line 359
    :goto_0
    return v5

    .line 335
    :cond_0
    instance-of v3, p1, Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v3, :cond_1

    move v5, v4

    .line 336
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 338
    check-cast v2, Lorg/apache/http/conn/routing/HttpRoute;

    .line 339
    .local v2, "that":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v6}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 340
    .local v0, "equal":Z
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v3, v5

    :goto_1
    and-int/2addr v0, v3

    .line 344
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v6, v6

    if-ne v3, v6, :cond_5

    :cond_3
    move v3, v5

    :goto_2
    and-int/2addr v0, v3

    .line 348
    iget-boolean v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    iget-boolean v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v3, v6, :cond_6

    :goto_3
    and-int/2addr v0, v5

    .line 354
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_7

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 356
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v3, v3, v1

    iget-object v4, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_4
    move v3, v4

    .line 340
    goto :goto_1

    :cond_5
    move v3, v4

    .line 344
    goto :goto_2

    :cond_6
    move v5, v4

    .line 348
    goto :goto_3

    :cond_7
    move v5, v0

    .line 359
    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .locals 5
    .param p1, "hop"    # I

    .prologue
    .line 274
    if-gez p1, :cond_0

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index must not be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    .line 278
    .local v0, "hopcount":I
    if-lt p1, v0, :cond_1

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds route length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_1
    const/4 v1, 0x0

    .line 284
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v1, v2, p1

    .line 289
    :goto_0
    return-object v1

    .line 287
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 371
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v2

    .line 373
    .local v2, "hc":I
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    .line 374
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 375
    :cond_0
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v5, v5

    xor-int/2addr v2, v5

    .line 376
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    .local v1, "arr$":[Lorg/apache/http/HttpHost;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .local v0, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "aProxyChain":Lorg/apache/http/HttpHost;
    :cond_1
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v5, :cond_2

    .line 379
    const v5, 0x11111111

    xor-int/2addr v2, v5

    .line 381
    :cond_2
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 382
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    .line 384
    return v2
.end method

.method public final isLayered()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 397
    .local v2, "cab":Ljava/lang/StringBuilder;
    const-string v5, "HttpRoute["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    .line 399
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v5, v6, :cond_1

    .line 404
    const/16 v5, 0x74

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v5, v6, :cond_2

    .line 406
    const/16 v5, 0x6c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_2
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v5, :cond_3

    .line 408
    const/16 v5, 0x73

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_3
    const-string v5, "}->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    .local v1, "arr$":[Lorg/apache/http/HttpHost;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 411
    .local v0, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "aProxyChain":Lorg/apache/http/HttpHost;
    :cond_4
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
