.class Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;->inputAreaClicked()V

    :cond_0
    return-void
.end method
