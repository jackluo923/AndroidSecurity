.class final Lcom/alipay/android/phone/home/ui/b;
.super Ljava/lang/Object;
.source "AbstractHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 111
    return-void
.end method
