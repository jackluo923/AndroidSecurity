.class public final Lcom/a/a/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/b/a/b;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/a;->a:Lcom/a/a/b/a/b;

    iput-object p2, p0, Lcom/a/a/b/a/a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/a/a;->a:Lcom/a/a/b/a/b;

    return-object v0
.end method
