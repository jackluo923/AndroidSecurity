.class final Lcom/alipay/android/phone/home/ui/ai;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ai;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ai;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    # invokes: Lcom/alipay/android/phone/home/ui/HomeFragment;->b()V
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$7(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    .line 525
    return-void
.end method
