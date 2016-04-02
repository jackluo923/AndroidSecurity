.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    .line 409
    iput p2, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;)Z
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
