.class Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;
.super Ljava/lang/Object;
.source "NewsRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

.field private final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/news/NewsRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;)Lcom/alipay/mobile/publicplatform/news/NewsRecv;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;-><init>(Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
