.class Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;
.super Ljava/lang/Object;
.source "UserSelectCity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->initCityInfoFromCache()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V

    .line 40
    return-void
.end method
