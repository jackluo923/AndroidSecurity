.class public Lcom/alipay/mobile/commandcenter/WifiCheckServiceImpl;
.super Lcom/alipay/mobile/commandcenter/service/WifiCheckService;


# instance fields
.field a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commandcenter/service/WifiCheckService;-><init>()V

    return-void
.end method


# virtual methods
.method public checkWifi()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/WifiCheckServiceImpl;->a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/WifiCheckServiceImpl;->a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/WifiCheckServiceImpl;->a:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    invoke-virtual {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->checkWifi()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
