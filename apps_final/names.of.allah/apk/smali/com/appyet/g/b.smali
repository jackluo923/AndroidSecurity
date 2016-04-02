.class public final Lcom/appyet/g/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/g/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appyet/g/b;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    new-instance v1, Lcom/appyet/g/c/a;

    invoke-direct {v1}, Lcom/appyet/g/c/a;-><init>()V

    new-instance v0, Lcom/appyet/g/c/b;

    const-string v2, "methodCall"

    invoke-direct {v0, v2}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/appyet/g/c/a;->a:Lcom/appyet/g/c/b;

    new-instance v2, Lcom/appyet/g/c/b;

    const-string v3, "methodName"

    invoke-direct {v2, v3}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/g/b;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/appyet/g/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    iget-object v2, p0, Lcom/appyet/g/b;->b:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appyet/g/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/appyet/g/c/b;

    const-string v3, "params"

    invoke-direct {v2, v3}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    iget-object v3, p0, Lcom/appyet/g/b;->b:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    new-instance v6, Lcom/appyet/g/c/b;

    const-string v7, "param"

    invoke-direct {v6, v7}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/appyet/g/c/b;

    const-string v8, "value"

    invoke-direct {v7, v8}, Lcom/appyet/g/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-static {}, Lcom/appyet/g/b/j;->a()Lcom/appyet/g/b/j;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/appyet/g/b/j;->a(Ljava/lang/Object;)Lcom/appyet/g/c/b;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    invoke-virtual {v2, v6}, Lcom/appyet/g/c/b;->a(Lcom/appyet/g/c/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/appyet/g/c/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
