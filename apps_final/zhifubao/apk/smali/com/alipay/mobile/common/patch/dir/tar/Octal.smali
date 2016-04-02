.class public Lcom/alipay/mobile/common/patch/dir/tar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .locals 2

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    .line 62
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 63
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 64
    add-int v0, p3, p4

    return v0
.end method

.method public static getLongOctalBytes(J[BII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    add-int/lit8 v0, p4, 0x1

    new-array v0, v0, [B

    .line 70
    add-int/lit8 v1, p4, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    .line 71
    invoke-static {v0, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int v0, p3, p4

    return v0
.end method

.method public static getOctalBytes(J[BII)I
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x20

    .line 35
    add-int/lit8 v0, p4, -0x1

    .line 37
    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    add-int v1, p3, v0

    aput-byte v4, p2, v1

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 43
    add-int v1, p3, v0

    const/16 v2, 0x30

    aput-byte v2, p2, v1

    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 52
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 53
    add-int v1, p3, v0

    aput-byte v4, p2, v1

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    if-ltz v0, :cond_0

    cmp-long v1, p0, v5

    if-lez v1, :cond_0

    .line 47
    add-int v1, p3, v0

    const-wide/16 v2, 0x7

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 48
    const/4 v1, 0x3

    shr-long/2addr p0, v1

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 56
    :cond_2
    add-int v0, p3, p4

    return v0
.end method

.method public static parseOctal([BII)J
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    const/4 v0, 0x1

    .line 9
    add-int v3, p1, p2

    .line 10
    :goto_0
    if-ge p1, v3, :cond_3

    .line 11
    aget-byte v4, p0, p1

    if-eqz v4, :cond_3

    .line 12
    aget-byte v4, p0, p1

    if-eq v4, v6, :cond_0

    aget-byte v4, p0, p1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 16
    :cond_0
    if-nez v0, :cond_2

    .line 17
    aget-byte v0, p0, p1

    if-eq v0, v6, :cond_3

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, 0x3

    shl-long/2addr v1, v4

    aget-byte v4, p0, p1

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 10
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 30
    :cond_3
    return-wide v1
.end method
