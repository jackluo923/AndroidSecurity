.class final Lcom/alipay/android/phone/home/ui/af;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/ae;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/ae;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/af;->a:Lcom/alipay/android/phone/home/ui/ae;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/af;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/af;->a:Lcom/alipay/android/phone/home/ui/ae;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ae;->a(Lcom/alipay/android/phone/home/ui/ae;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/af;->a:Lcom/alipay/android/phone/home/ui/ae;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ae;->a(Lcom/alipay/android/phone/home/ui/ae;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/af;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 463
    :cond_0
    return-void
.end method
