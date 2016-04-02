.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_APDID:Ljava/lang/String; = "apdid"

.field public static final KEY_DEVICEINFOHASH:Ljava/lang/String; = "deviceInfoHash"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->c:Ljava/lang/String;

    return-object v0
.end method
