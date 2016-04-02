.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

.field private final synthetic val$info:Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->val$info:Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$20(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$21(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$20(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->bHasRedHot:Z

    .line 503
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$20(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->val$info:Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->getBizData()Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->friendImage:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateRpcDataOfFriend()Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$22(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 515
    :cond_1
    return-void

    .line 509
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$23(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$23(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;

    .line 511
    if-eqz v0, :cond_3

    .line 512
    const-string/jumbo v2, "FRIEND"

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->updateCell(Ljava/lang/String;)V

    .line 509
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
