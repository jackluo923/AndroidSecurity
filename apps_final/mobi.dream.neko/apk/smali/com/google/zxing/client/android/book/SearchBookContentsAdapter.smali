.class final Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchBookContentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/zxing/client/android/book/SearchBookContentsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static fakeR:Lcom/google/zxing/FakeR;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/client/android/book/SearchBookContentsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "layout"

    const-string v2, "search_book_contents_list_item"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 41
    new-instance v0, Lcom/google/zxing/FakeR;

    invoke-direct {v0, p1}, Lcom/google/zxing/FakeR;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;->fakeR:Lcom/google/zxing/FakeR;

    .line 42
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "factory":Landroid/view/LayoutInflater;
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "layout"

    const-string v5, "search_book_contents_list_item"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;

    .line 60
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .local v1, "listItem":Lcom/google/zxing/client/android/book/SearchBookContentsListItem;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    .line 61
    .local v2, "result":Lcom/google/zxing/client/android/book/SearchBookContentsResult;
    invoke-virtual {v1, v2}, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->set(Lcom/google/zxing/client/android/book/SearchBookContentsResult;)V

    move-object p2, v1

    .line 62
    .end local v1    # "listItem":Lcom/google/zxing/client/android/book/SearchBookContentsListItem;
    .end local v2    # "result":Lcom/google/zxing/client/android/book/SearchBookContentsResult;
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    return-object p2

    .line 53
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    instance-of v3, p2, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 54
    check-cast v1, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;

    .restart local v1    # "listItem":Lcom/google/zxing/client/android/book/SearchBookContentsListItem;
    goto :goto_0
.end method
