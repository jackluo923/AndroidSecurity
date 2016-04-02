.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;

.field private final synthetic val$tempRet:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish$1;->this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish$1;->val$tempRet:Ljava/util/Map;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish$1;->this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish$1;->val$tempRet:Ljava/util/Map;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->refreshHomePage(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$24(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/Map;)V

    .line 562
    return-void
.end method
