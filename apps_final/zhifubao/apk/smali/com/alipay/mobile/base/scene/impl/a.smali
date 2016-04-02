.class final Lcom/alipay/mobile/base/scene/impl/a;
.super Ljava/lang/Object;
.source "UserSceneServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/impl/a;->a:Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/base/scene/impl/a;->b:Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/impl/a;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/base/scene/impl/a;->a:Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.mobile.base.scene.ui.ThrottleFlowActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/impl/a;->a:Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/base/scene/impl/a;->a:Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/scene/impl/UserSceneServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/base/scene/impl/a;->b:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 129
    return-void
.end method
