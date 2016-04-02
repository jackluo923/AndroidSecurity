.class Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->onMore()V

    goto :goto_0
.end method
