.class final Lcom/alipay/android/phone/home/ui/ao;
.super Ljava/lang/Object;
.source "HomeTopItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeTopItemView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeTopItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ao;->a:Lcom/alipay/android/phone/home/ui/HomeTopItemView;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ao;->a:Lcom/alipay/android/phone/home/ui/HomeTopItemView;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ao;->a:Lcom/alipay/android/phone/home/ui/HomeTopItemView;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 76
    :cond_0
    return-void
.end method
