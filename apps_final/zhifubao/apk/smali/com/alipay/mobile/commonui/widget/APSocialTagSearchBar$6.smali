.class Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$200(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # invokes: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$300(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;->inputTextChanged(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # invokes: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$400(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    goto :goto_0
.end method
