.class Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

.field private final synthetic val$networkTipStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->val$networkTipStr:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->isHomePageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->val$networkTipStr:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;->val$networkTipStr:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showToastTip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    goto :goto_0
.end method
