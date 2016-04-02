.class Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;
.super Ljava/lang/Object;
.source "TemplateDragList.java"

# interfaces
.implements Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getItem(I)Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->remove(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
