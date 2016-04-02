.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

.field private final synthetic val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$13(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setPollTimeMillis()V

    .line 435
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->showCityRemindView()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$14(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$15(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 443
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 452
    :cond_2
    return-void
.end method
