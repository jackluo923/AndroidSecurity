.class Lcom/alipay/mobile/commonui/widget/APTitleBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
