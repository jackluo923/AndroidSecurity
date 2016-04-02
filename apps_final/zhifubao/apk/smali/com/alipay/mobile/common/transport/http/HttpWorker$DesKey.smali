.class Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;
.super Ljava/lang/Object;
.source "HttpWorker.java"


# static fields
.field static final DEFAULT_KEY:[C

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1500
    new-array v0, v2, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->DEFAULT_KEY:[C

    .line 1501
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->DEFAULT_KEY:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    .line 1503
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 1505
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 1506
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    .line 1508
    :cond_0
    return-void

    .line 1500
    :array_0
    .array-data 2
        0x72s
        0x44s
        0x49s
        0x77s
        0x6as
        0x78s
        0x31s
        0x51s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1511
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    return-object v0
.end method
