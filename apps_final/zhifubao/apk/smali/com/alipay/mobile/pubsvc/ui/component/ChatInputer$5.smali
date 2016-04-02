.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;
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
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    # invokes: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    .line 158
    return-void
.end method
