.class final Lcom/alipay/android/phone/home/user/f;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickPositiveListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/f;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/f;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->f(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 318
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;

    .line 315
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;->logout()V

    .line 321
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/f;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->g(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/f;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/android/phone/home/user/h;

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/home/user/h;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
