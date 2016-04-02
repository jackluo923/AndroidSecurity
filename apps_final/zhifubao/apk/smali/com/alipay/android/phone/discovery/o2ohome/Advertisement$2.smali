.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;)Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    return-object v0
.end method


# virtual methods
.method public onShow(Z)V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setOnShowNotify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;Z)V

    .line 67
    const-wide/16 v2, 0x32

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->onNotifyShowAD(Z)V
    invoke-static {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Z)V

    goto :goto_0
.end method
