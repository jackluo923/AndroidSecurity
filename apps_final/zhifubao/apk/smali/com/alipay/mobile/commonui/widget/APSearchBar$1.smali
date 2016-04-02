.class Lcom/alipay/mobile/commonui/widget/APSearchBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->showSearchButton()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->showSearchButton()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->toggleSoftInput()V

    return-void
.end method
