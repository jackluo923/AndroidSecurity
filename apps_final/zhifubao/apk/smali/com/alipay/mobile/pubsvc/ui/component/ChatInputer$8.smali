.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Landroid/view/View;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->b:Landroid/view/View;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$5(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;I)V

    .line 218
    :cond_0
    return-void
.end method
