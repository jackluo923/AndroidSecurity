.class public Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;
.super Ljava/lang/Object;
.source "RedPointStatusChangeNotify.java"


# instance fields
.field private action:Ljava/lang/String;

.field private app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private isRedPtVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->isRedPtVisible:Z

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->action:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 16
    iput-boolean p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->isRedPtVisible:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public isRedPtVisible()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->isRedPtVisible:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->action:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 33
    return-void
.end method

.method public setRedPtVisible(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->isRedPtVisible:Z

    .line 41
    return-void
.end method
