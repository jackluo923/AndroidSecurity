.class Lcom/ali/user/mobile/login/rds/RDSWraper$2;
.super Ljava/lang/Object;
.source "RDSWraper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iput-object p2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;->a:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$0(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$1(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
