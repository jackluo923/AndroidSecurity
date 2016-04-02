.class Lcom/alipay/mobile/commonui/widget/APTitleBar$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$4;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$4;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APTitleBar;->q:Lcom/alipay/mobile/commonui/widget/APProgressBar;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->access$000(Lcom/alipay/mobile/commonui/widget/APTitleBar;)Lcom/alipay/mobile/commonui/widget/APProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
