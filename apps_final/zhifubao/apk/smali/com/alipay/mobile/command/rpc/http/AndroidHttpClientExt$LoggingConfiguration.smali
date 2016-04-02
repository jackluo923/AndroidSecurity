.class Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->a:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
