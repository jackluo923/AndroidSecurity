.class Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->b:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->b:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    const/4 v0, 0x2

    if-le p4, v0, :cond_0

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->a:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->a:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->a:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->this$0:Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->onMore()V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->b:Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->a:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;->b:Z

    goto :goto_0
.end method
