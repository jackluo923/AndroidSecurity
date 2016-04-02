.class public Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->position:I

    iput-wide p3, p0, Lcom/actionbarsherlock/internal/widget/IcsAdapterView$AdapterContextMenuInfo;->id:J

    return-void
.end method
