.class final Lcom/alipay/android/phone/home/ui/aq;
.super Ljava/util/Observable;
.source "MoreBadgeView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aq;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aq;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->d:Ljava/util/Observer;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$0(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Ljava/util/Observer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aq;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->d:Ljava/util/Observer;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$0(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Ljava/util/Observer;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method
