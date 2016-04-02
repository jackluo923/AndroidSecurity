.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->b:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onSendTextClick(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {v0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findEmojiCutPos(Ljava/lang/String;I)I

    move-result v1

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;->onSendTextClick(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
