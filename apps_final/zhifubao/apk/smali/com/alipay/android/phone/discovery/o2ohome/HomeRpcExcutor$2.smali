.class Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

.field private final synthetic val$param:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;->val$param:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;->val$param:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->executeRpcTask(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 177
    return-void
.end method
