.class final Lcom/mobeta/android/dslv/q;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/util/SparseIntArray;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 2

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/mobeta/android/dslv/q;->d:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/q;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/mobeta/android/dslv/q;->c:I

    return-void
.end method
