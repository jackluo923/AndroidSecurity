.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "call updateSpaceCode begin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v0

    const-string/jumbo v1, "o2o_homepage"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "call updateSpaceCode end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method
