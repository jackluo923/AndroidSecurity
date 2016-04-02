.class final Lcom/alipay/android/phone/home/ui/at;
.super Ljava/lang/Object;
.source "SimpleHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/as;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/as;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/at;->a:Lcom/alipay/android/phone/home/ui/as;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/at;->a:Lcom/alipay/android/phone/home/ui/as;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/as;->a(Lcom/alipay/android/phone/home/ui/as;)Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->access$1(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;)V

    .line 167
    return-void
.end method
