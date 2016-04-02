.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

.field private final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->val$b:Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;)Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2$1;->val$b:Z

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->onNotifyShowAD(Z)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Z)V

    .line 66
    return-void
.end method
