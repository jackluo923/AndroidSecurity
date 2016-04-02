.class Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;->this$0:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;->tagClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
