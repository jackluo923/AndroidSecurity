.class final Lcom/alipay/mobile/socialwidget/ui/o;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/n;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/n;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/o;->a:Lcom/alipay/mobile/socialwidget/ui/n;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/o;->a:Lcom/alipay/mobile/socialwidget/ui/n;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/n;->a(Lcom/alipay/mobile/socialwidget/ui/n;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 256
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 257
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getSearchStagesFromRemote()V

    .line 258
    return-void
.end method
