.class Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->o2oWidgetGroupShare:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initLogicData()V

    .line 42
    return-void
.end method
