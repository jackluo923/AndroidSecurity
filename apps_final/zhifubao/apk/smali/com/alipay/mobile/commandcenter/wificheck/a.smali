.class final Lcom/alipay/mobile/commandcenter/wificheck/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/command/rpc/proxy/Config;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commandcenter/wificheck/a;->a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransport()Lcom/alipay/mobile/command/rpc/http/Transport;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commandcenter/wificheck/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commandcenter/wificheck/b;-><init>(Lcom/alipay/mobile/commandcenter/wificheck/a;)V

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    return-object v0
.end method
