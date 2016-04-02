.class Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

.field private final synthetic val$warningTipStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->val$warningTipStr:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->isHomePageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->val$warningTipStr:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showWarningView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;->val$warningTipStr:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showToastTip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    goto :goto_0
.end method
