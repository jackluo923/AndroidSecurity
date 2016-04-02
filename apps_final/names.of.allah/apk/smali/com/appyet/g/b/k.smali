.class public final Lcom/appyet/g/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/appyet/g/b/k;->a:Z

    iput-boolean v0, p0, Lcom/appyet/g/b/k;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appyet/g/b/k;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "string"

    invoke-static {v1, v0}, Lcom/appyet/g/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0
.end method
