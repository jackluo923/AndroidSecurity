.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
