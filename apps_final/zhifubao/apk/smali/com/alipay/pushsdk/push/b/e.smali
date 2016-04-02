.class public final Lcom/alipay/pushsdk/push/b/e;
.super Ljava/lang/Object;
.source "PushLBSSetting.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 5
    const/16 v0, 0x120

    sput v0, Lcom/alipay/pushsdk/push/b/e;->d:I

    .line 6
    sput v1, Lcom/alipay/pushsdk/push/b/e;->e:I

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/alipay/pushsdk/push/b/e;->a:I

    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/alipay/pushsdk/push/b/e;->b:I

    .line 10
    sput v1, Lcom/alipay/pushsdk/push/b/e;->c:I

    .line 12
    sget v0, Lcom/alipay/pushsdk/push/b/e;->a:I

    sput v0, Lcom/alipay/pushsdk/push/b/e;->f:I

    .line 13
    sget v0, Lcom/alipay/pushsdk/push/b/e;->e:I

    sput v0, Lcom/alipay/pushsdk/push/b/e;->g:I

    .line 4
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/alipay/pushsdk/push/b/e;->f:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 16
    sput p0, Lcom/alipay/pushsdk/push/b/e;->f:I

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 36
    sget v1, Lcom/alipay/pushsdk/push/b/e;->f:I

    sget v2, Lcom/alipay/pushsdk/push/b/e;->c:I

    if-ne v1, v2, :cond_2

    .line 37
    invoke-static {p0}, Lcom/alipay/pushsdk/push/b/f;->b(Ljava/lang/String;)I

    move-result v1

    .line 39
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 41
    :cond_0
    if-lez v1, :cond_1

    .line 43
    const/4 v0, 0x1

    .line 55
    :cond_1
    :goto_0
    return v0

    .line 47
    :cond_2
    sget v1, Lcom/alipay/pushsdk/push/b/e;->f:I

    sget v2, Lcom/alipay/pushsdk/push/b/e;->b:I

    if-ne v1, v2, :cond_1

    .line 48
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_3
    invoke-static {p1}, Lcom/alipay/pushsdk/push/b/f;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/alipay/pushsdk/push/b/e;->g:I

    return v0
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 24
    if-lez p0, :cond_0

    sget v0, Lcom/alipay/pushsdk/push/b/e;->d:I

    if-ge p0, v0, :cond_0

    .line 25
    sput p0, Lcom/alipay/pushsdk/push/b/e;->g:I

    .line 27
    :cond_0
    return-void
.end method
