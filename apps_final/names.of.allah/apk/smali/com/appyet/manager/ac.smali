.class final Lcom/appyet/manager/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/appyet/manager/d;


# direct methods
.method constructor <init>(Lcom/appyet/manager/d;J)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/ac;->b:Lcom/appyet/manager/d;

    iput-wide p2, p0, Lcom/appyet/manager/ac;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/ac;->b:Lcom/appyet/manager/d;

    iget-wide v1, p0, Lcom/appyet/manager/ac;->a:J

    invoke-static {v0, v1, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;J)V

    const/4 v0, 0x0

    return-object v0
.end method
