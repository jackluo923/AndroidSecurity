.class public abstract Lcom/alipay/mobile/framework/service/CommonService;
.super Lcom/alipay/mobile/framework/service/MicroService;
.source "CommonService.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/MicroService;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/CommonService;->a:Z

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/CommonService;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/CommonService;->a:Z

    .line 23
    return-void
.end method

.method public final destroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/CommonService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/CommonService;->onDestroy(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/CommonService;->a:Z

    .line 30
    return-void
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/CommonService;->a:Z

    return v0
.end method
