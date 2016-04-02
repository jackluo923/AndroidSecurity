.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5$InnerBirdNestFinish;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method
