.class public final Luk/co/senab/a/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final h:I


# instance fields
.field a:Luk/co/senab/a/b/e;

.field b:I

.field c:Luk/co/senab/a/b/f;

.field d:F

.field e:Z

.field f:I

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Luk/co/senab/a/b/u;->default_header:I

    sput v0, Luk/co/senab/a/b/h;->h:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Luk/co/senab/a/b/h;->a:Luk/co/senab/a/b/e;

    sget v0, Luk/co/senab/a/b/h;->h:I

    iput v0, p0, Luk/co/senab/a/b/h;->b:I

    iput-object v1, p0, Luk/co/senab/a/b/h;->c:Luk/co/senab/a/b/f;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Luk/co/senab/a/b/h;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/senab/a/b/h;->e:Z

    const/16 v0, 0x3e8

    iput v0, p0, Luk/co/senab/a/b/h;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/a/b/h;->g:Z

    return-void
.end method

.method public static a()Luk/co/senab/a/b/i;
    .locals 1

    new-instance v0, Luk/co/senab/a/b/i;

    invoke-direct {v0}, Luk/co/senab/a/b/i;-><init>()V

    return-object v0
.end method
