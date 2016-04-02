.class public Lcom/alipay/pushsdk/push/c/d;
.super Lcom/alipay/pushsdk/push/c/a;
.source "PacketHdrVer2.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/alipay/pushsdk/push/c/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;-><init>()V

    .line 14
    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/d;->d:I

    .line 19
    sget v0, Lcom/alipay/pushsdk/push/c/b;->b:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/d;->e:I

    .line 24
    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->f(I)V

    .line 25
    sget v0, Lcom/alipay/pushsdk/push/c/b;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->g(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 64
    aget-byte v0, p1, v4

    .line 68
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    new-array v1, v5, [B

    .line 76
    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-static {v1}, Lcom/alipay/pushsdk/push/c/d;->d([B)I

    move-result v1

    .line 78
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    sget-object v2, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgLen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->b(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/push/c/d;->e(I)V

    .line 85
    return-void
.end method

.method public final c([B)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 89
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    .line 97
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->a(I)V

    .line 104
    return-void
.end method

.method public final k()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 30
    iget v0, p0, Lcom/alipay/pushsdk/push/c/d;->e:I

    new-array v0, v0, [B

    .line 32
    iget v1, p0, Lcom/alipay/pushsdk/push/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v4

    .line 36
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    .line 44
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->g()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/pushsdk/push/c/d;->h(I)[B

    move-result-object v1

    .line 47
    const/4 v2, 0x3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    new-array v1, v3, [B

    .line 52
    const/4 v2, 0x7

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-array v1, v3, [B

    .line 57
    const/16 v2, 0xb

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v0
.end method

.method public final l()[B
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
