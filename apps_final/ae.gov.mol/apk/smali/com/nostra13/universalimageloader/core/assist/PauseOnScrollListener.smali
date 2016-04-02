.class public Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;
.super Ljava/lang/Object;
.source "PauseOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final externalListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "pauseOnScroll"    # Z
    .param p2, "pauseOnFling"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;-><init>(ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "pauseOnScroll"    # Z
    .param p2, "pauseOnFling"    # Z
    .param p3, "customListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->pauseOnScroll:Z

    .line 45
    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->pauseOnFling:Z

    .line 46
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 47
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 76
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 69
    :cond_1
    return-void

    .line 53
    :pswitch_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
