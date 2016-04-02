.class Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;
.super Ljava/lang/Object;
.source "HomeDataSyncProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;

.field private final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->handleMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 54
    return-void
.end method
