.class final Lcom/appyet/g/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 2

    const-string v0, "i8"

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/g/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0
.end method
