.class public Lcom/alipay/android/phone/home/manager/AppItemView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AppItemView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "APPITEMVIEW"

    sput-object v0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->f:I

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->addView(Landroid/view/View;)V

    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->c:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 48
    :cond_1
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_2

    move-object v2, p2

    .line 56
    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "installStatusUpdate, installStatus:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/AppItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/home/manager/ViewHolder;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "update app, appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/manager/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/c;-><init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;ZLcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 57
    :cond_2
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    if-eqz v0, :cond_0

    .line 59
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/AppItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/android/phone/home/manager/e;

    invoke-direct {v1, p0, p2, v0}, Lcom/alipay/android/phone/home/manager/e;-><init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
