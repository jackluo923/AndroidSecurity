.class final Lcom/alipay/android/phone/home/ui/an;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;

.field private final synthetic b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/an;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/an;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/an;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v0, :cond_1

    .line 654
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "O2ORemoteInfo content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/an;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/an;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$0(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    .line 656
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/an;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo store logo complicate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/an;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/an;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$9(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/an;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    # invokes: Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$10(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    goto :goto_0
.end method
