.class Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_unknown_exception:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->isHomePageEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showWarningTip(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showToastTip(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    goto :goto_0
.end method
