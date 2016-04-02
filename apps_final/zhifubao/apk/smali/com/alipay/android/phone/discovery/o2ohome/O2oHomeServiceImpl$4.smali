.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;
.super Landroid/os/AsyncTask;
.source "O2oHomeServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    .line 184
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 188
    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getUserIdForCache()Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$10()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v2, "Config@O2oHome_NEARBY_SCAN_INTERVAL"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
