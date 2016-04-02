.class public Luk/co/senab/a/b/b/b;
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

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v0, v1

    sput-object v0, Luk/co/senab/a/b/b/b;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
