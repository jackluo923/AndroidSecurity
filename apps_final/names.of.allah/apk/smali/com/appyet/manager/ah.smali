.class final Lcom/appyet/manager/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/manager/af;


# direct methods
.method constructor <init>(Lcom/appyet/manager/af;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/ah;->a:Lcom/appyet/manager/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    iget-object v0, p0, Lcom/appyet/manager/ah;->a:Lcom/appyet/manager/af;

    invoke-static {p1}, Lcom/appyet/manager/af;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/ah;->a:Lcom/appyet/manager/af;

    invoke-static {p2}, Lcom/appyet/manager/af;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
