.class Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;
.super Ljava/lang/Object;
.source "Advertisement.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;->val$context:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->initAdvertisementView(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V

    .line 43
    return-void
.end method
