.class final Landroid/support/v4/widget/c;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/a;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/a;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/a;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/a;->mDataValid:Z

    iget-object v0, p0, Landroid/support/v4/widget/c;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->notifyDataSetInvalidated()V

    return-void
.end method
