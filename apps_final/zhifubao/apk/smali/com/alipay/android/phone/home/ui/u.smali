.class final Lcom/alipay/android/phone/home/ui/u;
.super Ljava/util/Observable;
.source "CommonBadgeView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/CommonBadgeView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/CommonBadgeView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/CommonBadgeView;->d:Ljava/util/Observer;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->access$0(Lcom/alipay/android/phone/home/ui/CommonBadgeView;)Ljava/util/Observer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/CommonBadgeView;->d:Ljava/util/Observer;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->access$0(Lcom/alipay/android/phone/home/ui/CommonBadgeView;)Ljava/util/Observer;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method
