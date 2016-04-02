.class Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;
.super Ljava/lang/Object;
.source "RelationRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

.field private final synthetic val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    invoke-static {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$0(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "init"

    .line 79
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processInitCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$1(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    iget-object v0, v0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->command:Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "fullUpdate"

    .line 82
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;->val$syncCommand:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processFullUpdateCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->access$2(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    goto :goto_0
.end method
