.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

.field private final synthetic val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

.field private final synthetic val$timeStart:J


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    iput-wide p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->val$timeStart:J

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$26(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 611
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setPollTimeMillis()V

    .line 612
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateRpcDataOfFriend()Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$22(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z

    .line 615
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->showCityRemindView()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$27(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$28(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 623
    const-string/jumbo v0, "O2OHOME"

    const-string/jumbo v1, "CategoryVisible"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->val$timeStart:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V

    .line 624
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$7(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    .line 625
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setSearchBarHintText()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$30(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$31(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 633
    return-void
.end method
