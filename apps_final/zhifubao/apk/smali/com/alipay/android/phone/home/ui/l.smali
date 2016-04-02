.class final Lcom/alipay/android/phone/home/ui/l;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/l;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/l;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/l;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/l;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 255
    return-void
.end method
