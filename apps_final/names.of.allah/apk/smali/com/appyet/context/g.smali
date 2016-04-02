.class public final Lcom/appyet/context/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/appyet/a/a/e;

.field private c:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/context/g;->c:Lcom/appyet/context/ApplicationContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/context/g;->a:Ljava/util/List;

    return-void
.end method
