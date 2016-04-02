.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

.field private final synthetic val$bundle:Landroid/os/Bundle;

.field private final synthetic val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

.field private final synthetic val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iput-object p4, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$bundle:Landroid/os/Bundle;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;)Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->val$bundle:Landroid/os/Bundle;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->buildShareRequest(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;

    move-result-object v1

    .line 205
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 206
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 205
    const-class v2, Lcom/alipay/mobilecsa/common/service/rpc/service/ShareService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/service/ShareService;

    .line 208
    invoke-interface {v0, v1}, Lcom/alipay/mobilecsa/common/service/rpc/service/ShareService;->publishShareInfo(Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->success:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;)Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const-string/jumbo v1, "\u5206\u4eab\u6210\u529f"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 211
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000238"

    invoke-interface {v0, v1, v2, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000224"

    invoke-interface {v0, v1, v2, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;)Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const-string/jumbo v1, "\u5206\u4eab\u5931\u8d25"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
