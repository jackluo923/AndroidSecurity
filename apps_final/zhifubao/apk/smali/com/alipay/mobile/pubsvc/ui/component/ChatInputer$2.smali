.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iget-boolean v0, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->exp_pan:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 107
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FFC-0916-03"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20000042"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "extMenuBtn"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extMenuBtn"

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->f:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    .line 114
    :cond_1
    return-void

    .line 109
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
