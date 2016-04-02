.class public Lcom/alipay/pushsdk/push/c/e;
.super Lcom/alipay/pushsdk/push/c/a;
.source "PacketHdrVer3.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/alipay/pushsdk/push/c/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;-><init>()V

    .line 15
    sget v0, Lcom/alipay/pushsdk/push/c/b;->c:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/e;->d:I

    .line 20
    sget v0, Lcom/alipay/pushsdk/push/c/b;->d:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/e;->e:I

    .line 25
    sget v0, Lcom/alipay/pushsdk/push/c/b;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->f(I)V

    .line 26
    sget v0, Lcom/alipay/pushsdk/push/c/b;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->g(I)V

    .line 27
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->f()V

    .line 28
    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 81
    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 82
    new-array v0, v4, [B

    .line 83
    invoke-static {p1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/e;->d([B)I

    move-result v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->e(I)V

    .line 87
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgLen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final c([B)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 103
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 110
    and-int/lit8 v0, v0, 0xf

    .line 111
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    .line 114
    ushr-int/lit8 v2, v1, 0x7

    and-int/lit8 v2, v2, 0x1

    .line 115
    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1

    .line 116
    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->a(I)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/c/e;->b(I)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/alipay/pushsdk/push/c/e;->c(I)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/push/c/e;->d(I)V

    .line 124
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v5, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgType="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->g(I)V

    .line 98
    :cond_0
    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->b:I

    return v0
.end method

.method public final k()[B
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 32
    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->e:I

    .line 33
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v2

    if-ne v2, v8, :cond_0

    move v0, v1

    .line 37
    :cond_0
    new-array v0, v0, [B

    .line 42
    iget v2, p0, Lcom/alipay/pushsdk/push/c/e;->d:I

    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 46
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->b()I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    .line 47
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->c()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->d()I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    .line 48
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->e()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 46
    aput-byte v2, v0, v7

    .line 51
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrbufforWrite() the 1st buffer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    aget-byte v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrbufforWrite() the 2nd buffer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    aget-byte v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v2

    if-eq v2, v8, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->g()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/pushsdk/push/c/e;->h(I)[B

    move-result-object v2

    .line 64
    invoke-static {v2, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 69
    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-static {v1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    const/16 v1, 0xe

    .line 73
    :cond_3
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrbufforWrite() all len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    return-object v0
.end method

.method public final l()[B
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 136
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/alipay/pushsdk/util/ZipPushInit;

    invoke-direct {v0}, Lcom/alipay/pushsdk/util/ZipPushInit;-><init>()V

    .line 141
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getBodybufferWrite zipping data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/ZipPushInit;->zipPushInit(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->g()I

    move-result v1

    .line 150
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBodybufferWrite got zipedInit.length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", jsonLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    const-string/jumbo v4, ", ratio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    array-length v4, v0

    div-int v1, v4, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v5, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/push/c/e;->e(I)V

    .line 167
    :goto_0
    return-object v0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
