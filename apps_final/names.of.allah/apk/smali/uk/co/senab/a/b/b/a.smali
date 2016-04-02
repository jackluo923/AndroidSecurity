.class public Luk/co/senab/a/b/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Luk/co/senab/a/b/b/c;


# static fields
.field public static final a:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v0, v1

    sput-object v0, Luk/co/senab/a/b/b/a;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollAlwaysVisible()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_3
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    move v1, v2

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    move v1, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
