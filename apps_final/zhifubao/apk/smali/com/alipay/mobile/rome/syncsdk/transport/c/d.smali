.class public Lcom/alipay/mobile/rome/syncsdk/transport/c/d;
.super Lcom/alipay/mobile/rome/syncsdk/transport/c/a;
.source "PacketHdrVer4.java"


# static fields
.field private static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->h:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;-><init>()V

    .line 17
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->c:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->a:B

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->f:[B

    .line 19
    return-void
.end method


# virtual methods
.method public final c([B)V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    aget-byte v0, p1, v1

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->a:B

    .line 28
    aget-byte v0, p1, v2

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->b:B

    .line 31
    aget-byte v0, p1, v3

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->c:B

    .line 34
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->d:I

    .line 37
    aget-byte v0, p1, v5

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->e:B

    .line 40
    const/16 v0, 0x8

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->f:[B

    .line 43
    return-void
.end method

.method public final f()[B
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->h:Ljava/lang/String;

    const-string/jumbo v3, "toTransBytes: "

    invoke-static {v0, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    array-length v0, v0

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    array-length v4, v4

    const/16 v5, 0x200

    if-le v4, v5, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->g:[B

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/ZipUtils;->gZipBytes([B)[B

    move-result-object v3

    .line 62
    array-length v0, v3

    move-object v4, v3

    move v3, v0

    move v0, v2

    .line 65
    :goto_1
    sget v5, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->d:I

    add-int/2addr v5, v3

    new-array v5, v5, [B

    .line 67
    iget-byte v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->a:B

    aput-byte v6, v5, v1

    .line 69
    iget-byte v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->b:B

    aput-byte v6, v5, v2

    .line 72
    iget-byte v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->c:B

    aput-byte v6, v5, v8

    .line 75
    new-array v6, v10, [B

    ushr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    ushr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v6, v8

    int-to-byte v2, v3

    aput-byte v2, v6, v9

    invoke-static {v6, v1, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/4 v2, 0x7

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/d;->f:[B

    const/16 v2, 0x8

    const/4 v6, 0x7

    invoke-static {v0, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    if-eqz v4, :cond_0

    .line 87
    const/16 v0, 0xf

    invoke-static {v4, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_0
    return-object v5

    :cond_1
    move-object v4, v3

    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
