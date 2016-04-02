.class Lcom/ali/user/mobile/login/rds/RDSWraper$3;
.super Ljava/lang/Object;
.source "RDSWraper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Landroid/view/View$OnFocusChangeListener;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Landroid/view/View$OnFocusChangeListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iput-object p2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->a:Landroid/view/View$OnFocusChangeListener;

    iput-object p3, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->b:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$0(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$1(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onGetFocus(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$0(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$1(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onLostFocus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
