.class Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;
.super Ljava/lang/Object;
.source "TemplateDragList.java"

# interfaces
.implements Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getItem(I)Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->remove(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->insert(Ljava/lang/Object;I)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->clearAllViews()V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->notifyDataSetChanged()V

    .line 160
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->getInstance()Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->switchItem(II)V

    .line 161
    return-void
.end method
