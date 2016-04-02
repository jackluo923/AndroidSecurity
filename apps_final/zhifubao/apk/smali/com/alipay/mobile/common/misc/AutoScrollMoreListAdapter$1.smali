.class Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;
.super Ljava/lang/Object;
.source "AutoScrollMoreListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->b:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->b:Z

    .line 71
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    const/4 v0, 0x2

    if-le p4, v0, :cond_0

    .line 72
    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->a:Z

    .line 74
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 55
    iput-boolean v2, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->a:Z

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    .line 60
    iput-boolean v2, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->b:Z

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->showFooter()V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;->this$0:Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->onAutoLoadMore()V

    goto :goto_0
.end method
