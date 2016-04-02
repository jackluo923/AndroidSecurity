.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

.field final synthetic val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$502(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->val$result:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setPollTimeMillis()V

    .line 435
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$1300(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$1400(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 443
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$1500(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APListView;

    .line 447
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$1600(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 452
    :cond_2
    return-void
.end method
