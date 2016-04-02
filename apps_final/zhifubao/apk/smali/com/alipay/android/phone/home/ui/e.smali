.class final Lcom/alipay/android/phone/home/ui/e;
.super Ljava/lang/Object;
.source "AbstractHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/e;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->refreshAppListData()V

    .line 154
    return-void
.end method
