.class public Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;
.super Ljava/lang/Object;
.source "AppStatusChangeNotify.java"


# static fields
.field public static final ACTION_APP_REBUILD:I = 0x1

.field public static final MOVE_TO_APPCENTER:I = 0x3

.field public static final MOVE_TO_HOME:I = 0x2


# instance fields
.field private action:I

.field private app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method public constructor <init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->action:I

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 23
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->action:I

    return v0
.end method

.method public getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->action:I

    .line 31
    return-void
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 39
    return-void
.end method
