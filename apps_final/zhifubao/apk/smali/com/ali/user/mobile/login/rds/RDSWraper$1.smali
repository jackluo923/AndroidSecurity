.class Lcom/ali/user/mobile/login/rds/RDSWraper$1;
.super Ljava/lang/Object;
.source "RDSWraper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iput-object p2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;->a:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$0(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;->this$0:Lcom/ali/user/mobile/login/rds/RDSWraper;

    # getter for: Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;
    invoke-static {v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->access$1(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;->a:Ljava/lang/String;

    add-int v3, p2, p4

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
