.class public abstract Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "DragSortCursorAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragSortListener;


# static fields
.field public static final REMOVED:I = -0x1


# instance fields
.field private a:Landroid/util/SparseIntArray;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v1, v0

    .line 177
    :goto_0
    if-lt v1, v3, :cond_0

    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 184
    :goto_1
    if-lt v1, v3, :cond_2

    .line 187
    return-void

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 179
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 184
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a()V

    .line 74
    return-void
.end method

.method public drag(II)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public drop(II)V
    .locals 5

    .prologue
    .line 118
    if-eq p1, p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 121
    if-le p1, p2, :cond_3

    .line 122
    :goto_0
    if-gt p1, p2, :cond_1

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b()V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-lt p1, p2, :cond_2

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursorPosition(I)I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getCursorPositions()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 218
    return-object v1

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListPosition(I)I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/4 p1, -0x1

    .line 238
    :cond_0
    :goto_0
    return p1

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 235
    if-ltz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->getCount()I

    move-result v0

    .line 152
    :goto_0
    if-lt p1, v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 158
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->b()V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 160
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a()V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;->a()V

    .line 62
    return-object v0
.end method
