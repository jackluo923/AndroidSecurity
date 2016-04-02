.class Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
