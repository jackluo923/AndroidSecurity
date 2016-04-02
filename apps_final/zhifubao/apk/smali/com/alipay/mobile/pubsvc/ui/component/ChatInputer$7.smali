.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 192
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onSwitchMenuClick()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->img_btn_select_image:I

    if-ne v0, v1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onSelectPicture()V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FFC-0916-04"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20000042"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "photosBtn"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "photosBtn"

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->f:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    goto :goto_0

    .line 198
    :cond_2
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->img_btn_take_picture:I

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onTakePicture()V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;

    const-string/jumbo v1, "UC-FFC-0916-05"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20000042"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "cameraBtn"

    const-string/jumbo v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cameraBtn"

    iput-object v1, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->f:Ljava/lang/String;

    iput-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/c/a;->a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V

    goto :goto_0
.end method
