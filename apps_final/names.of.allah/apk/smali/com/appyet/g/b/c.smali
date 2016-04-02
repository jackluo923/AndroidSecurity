.class public final Lcom/appyet/g/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 3

    const-string v1, "boolean"

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/appyet/g/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
