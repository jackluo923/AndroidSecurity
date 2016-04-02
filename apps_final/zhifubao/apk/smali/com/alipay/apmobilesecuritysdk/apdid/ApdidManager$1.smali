.class Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

.field final synthetic val$apdid:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$apdid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$apdid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->access$000(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
