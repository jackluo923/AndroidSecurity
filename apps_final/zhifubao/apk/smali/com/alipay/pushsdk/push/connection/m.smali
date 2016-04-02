.class public final Lcom/alipay/pushsdk/push/connection/m;
.super Ljava/lang/Object;
.source "PushCtrlConfiguration.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:J

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    const/16 v0, 0x2710

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->a:I

    .line 23
    const/16 v0, 0x3c

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->b:I

    .line 24
    const/16 v0, 0x2d

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->c:I

    .line 26
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->d:I

    .line 27
    const/16 v0, 0x708

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->e:I

    .line 28
    const/16 v0, 0x384

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->f:I

    .line 30
    sput-boolean v1, Lcom/alipay/pushsdk/push/connection/m;->g:Z

    .line 31
    sput-boolean v2, Lcom/alipay/pushsdk/push/connection/m;->h:Z

    .line 32
    sput-boolean v2, Lcom/alipay/pushsdk/push/connection/m;->i:Z

    .line 33
    sput-boolean v1, Lcom/alipay/pushsdk/push/connection/m;->j:Z

    .line 36
    sput-wide v3, Lcom/alipay/pushsdk/push/connection/m;->k:J

    .line 37
    sput-wide v3, Lcom/alipay/pushsdk/push/connection/m;->l:J

    .line 16
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "1.5.0"

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 74
    if-gtz p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 77
    :cond_0
    mul-int/lit16 v0, p0, 0x3e8

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->a:I

    .line 78
    return-void
.end method

.method public static a(J)V
    .locals 0

    .prologue
    .line 96
    sput-wide p0, Lcom/alipay/pushsdk/push/connection/m;->k:J

    .line 97
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/alipay/pushsdk/push/connection/m;->h:Z

    .line 113
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->a:I

    if-gtz v0, :cond_0

    .line 62
    const/16 v0, 0x2710

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->a:I

    .line 64
    :cond_0
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 82
    mul-int/lit8 v0, p0, 0x3c

    sput v0, Lcom/alipay/pushsdk/push/connection/m;->d:I

    .line 83
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 120
    sput-boolean p0, Lcom/alipay/pushsdk/push/connection/m;->i:Z

    .line 121
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->d:I

    return v0
.end method

.method public static c(I)V
    .locals 0

    .prologue
    .line 169
    sput p0, Lcom/alipay/pushsdk/push/connection/m;->b:I

    .line 170
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 128
    sput-boolean p0, Lcom/alipay/pushsdk/push/connection/m;->j:Z

    .line 129
    return-void
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 100
    sget-wide v0, Lcom/alipay/pushsdk/push/connection/m;->k:J

    return-wide v0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 104
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 108
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/alipay/pushsdk/push/connection/m;->h:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/alipay/pushsdk/push/connection/m;->i:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/alipay/pushsdk/push/connection/m;->j:Z

    return v0
.end method

.method public static j()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/push/connection/m;->g:Z

    .line 137
    return-void
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/alipay/pushsdk/push/connection/m;->g:Z

    return v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->c:I

    return v0
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/alipay/pushsdk/push/connection/m;->b:I

    return v0
.end method
