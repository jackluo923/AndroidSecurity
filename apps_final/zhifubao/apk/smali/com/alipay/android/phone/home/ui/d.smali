.class final Lcom/alipay/android/phone/home/ui/d;
.super Ljava/lang/Object;
.source "AbstractHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/d;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/d;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 133
    return-void
.end method
