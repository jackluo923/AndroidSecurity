.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    return-object v0
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
    .line 382
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$InnerBirdNestFinish;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method
