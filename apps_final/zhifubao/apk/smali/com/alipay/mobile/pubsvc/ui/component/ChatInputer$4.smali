.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APView;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Lcom/alipay/mobile/commonui/widget/APView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->b:Lcom/alipay/mobile/commonui/widget/APView;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 141
    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    # invokes: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->b:Lcom/alipay/mobile/commonui/widget/APView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$color;->chat_msg_edit_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APView;->setBackgroundColor(I)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->b:Lcom/alipay/mobile/commonui/widget/APView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$color;->chat_msg_edit_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APView;->setBackgroundColor(I)V

    goto :goto_0
.end method
