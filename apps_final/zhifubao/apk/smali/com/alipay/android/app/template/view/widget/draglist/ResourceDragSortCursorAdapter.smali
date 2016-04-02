.class public abstract Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;
.super Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;
.source "ResourceDragSortCursorAdapter.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 57
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->b:I

    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->a:I

    .line 58
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->c:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 96
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->b:I

    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->a:I

    .line 97
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->c:Landroid/view/LayoutInflater;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 79
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->b:I

    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->a:I

    .line 80
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->c:Landroid/view/LayoutInflater;

    .line 81
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->b:I

    .line 132
    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->a:I

    .line 123
    return-void
.end method
