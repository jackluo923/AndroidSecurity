.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final synthetic a:Landroid/widget/TextView;

.field private final synthetic b:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->b:Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->afterTextChanged(Landroid/text/Editable;)V

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
