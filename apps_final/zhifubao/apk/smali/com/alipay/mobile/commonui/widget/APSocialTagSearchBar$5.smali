.class Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$200(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->removeTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
