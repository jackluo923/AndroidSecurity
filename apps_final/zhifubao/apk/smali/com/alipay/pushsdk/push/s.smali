.class public Lcom/alipay/pushsdk/push/s;
.super Ljava/lang/Object;
.source "ReconnectionTask.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alipay/pushsdk/push/s;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    .line 14
    const/16 v0, 0xf

    sput v0, Lcom/alipay/pushsdk/push/s;->b:I

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/alipay/pushsdk/push/s;->c:I

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/alipay/pushsdk/push/s;->c:I

    return v0
.end method

.method public static b()I
    .locals 4

    .prologue
    const/16 v1, 0x12c

    const/4 v3, 0x3

    .line 27
    sget v0, Lcom/alipay/pushsdk/push/s;->c:I

    packed-switch v0, :pswitch_data_0

    .line 37
    sget v0, Lcom/alipay/pushsdk/push/s;->b:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/alipay/pushsdk/push/s;->b:I

    .line 38
    :goto_0
    sget v0, Lcom/alipay/pushsdk/push/s;->c:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/pushsdk/push/s;->c:I

    .line 41
    sget v0, Lcom/alipay/pushsdk/push/s;->b:I

    if-lt v0, v1, :cond_0

    .line 42
    sput v1, Lcom/alipay/pushsdk/push/s;->b:I

    .line 45
    :cond_0
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waiting seconds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/pushsdk/push/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    sget v0, Lcom/alipay/pushsdk/push/s;->b:I

    return v0

    .line 29
    :pswitch_0
    sput v3, Lcom/alipay/pushsdk/push/s;->b:I

    goto :goto_0

    .line 33
    :pswitch_1
    const/16 v0, 0xf

    sput v0, Lcom/alipay/pushsdk/push/s;->b:I

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/alipay/pushsdk/push/s;->c:I

    .line 56
    const/4 v0, 0x3

    sput v0, Lcom/alipay/pushsdk/push/s;->b:I

    .line 57
    return-void
.end method
