.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomePageFromCache()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initHomeRpcExecutor()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initContainerListView()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$13(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->registerSyncProcessor()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$14(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$15(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->registerBroadcast(Landroid/content/Context;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 261
    return-void
.end method
