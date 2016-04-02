.class final Lcom/alipay/android/phone/home/ui/m;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/m;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/m;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/m;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 277
    return-void
.end method
