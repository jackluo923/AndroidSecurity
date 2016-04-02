.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;

.field final synthetic val$tempRet:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;->this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;->val$tempRet:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;->this$2:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;->val$tempRet:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$2400(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/Map;)V

    .line 562
    return-void
.end method
