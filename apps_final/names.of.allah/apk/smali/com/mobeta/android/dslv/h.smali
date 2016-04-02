.class final Lcom/mobeta/android/dslv/h;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/mobeta/android/dslv/DragSortListView;

.field final synthetic b:Lcom/mobeta/android/dslv/g;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/g;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/h;->b:Lcom/mobeta/android/dslv/g;

    iput-object p2, p0, Lcom/mobeta/android/dslv/h;->a:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/h;->b:Lcom/mobeta/android/dslv/g;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/g;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/h;->b:Lcom/mobeta/android/dslv/g;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/g;->notifyDataSetInvalidated()V

    return-void
.end method
