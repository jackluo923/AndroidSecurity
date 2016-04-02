.class public abstract Lcom/alipay/pushsdk/push/c/a;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field protected a:I

.field protected b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->c:I

    .line 10
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->a:I

    .line 11
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->b:I

    .line 13
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->d:I

    .line 14
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->e:I

    .line 15
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->f:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/c/a;->g:I

    .line 18
    iput v1, p0, Lcom/alipay/pushsdk/push/c/a;->h:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->i:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->j:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected static d([B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    move v1, v0

    .line 193
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 198
    return v1

    .line 194
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    .line 195
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 196
    or-int/2addr v1, v2

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static h(I)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 176
    new-array v1, v3, [B

    .line 177
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 180
    return-object v1

    .line 178
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->a:I

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/pushsdk/push/c/a;->j:Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    array-length v0, v0

    iput v0, p0, Lcom/alipay/pushsdk/push/c/a;->h:I

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->j:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/c/a;->h:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a([B)V
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v1, ""

    .line 118
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iput-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->j:Ljava/lang/String;

    .line 123
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->d:I

    .line 60
    return-void
.end method

.method public abstract b([B)V
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->e:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->e:I

    .line 68
    return-void
.end method

.method public abstract c([B)V
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->f:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->f:I

    .line 76
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->g:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->h:I

    .line 92
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/c/a;->g:I

    .line 84
    return-void
.end method

.method protected final f(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->c:I

    .line 135
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->h:I

    return v0
.end method

.method protected final g(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/alipay/pushsdk/push/c/a;->b:I

    .line 139
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/pushsdk/push/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->c:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/alipay/pushsdk/push/c/a;->b:I

    return v0
.end method

.method public abstract k()[B
.end method

.method public abstract l()[B
.end method
