.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$2;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 485
    return-void
.end method
