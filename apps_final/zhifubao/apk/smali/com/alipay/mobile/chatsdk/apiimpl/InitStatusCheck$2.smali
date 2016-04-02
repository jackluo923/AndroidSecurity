.class Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;
.super Ljava/lang/Object;
.source "InitStatusCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;->val$userId:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;->val$userId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;-><init>(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
