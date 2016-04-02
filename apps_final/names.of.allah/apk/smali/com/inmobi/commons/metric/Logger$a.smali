.class Lcom/inmobi/commons/metric/Logger$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/commons/metric/Logger;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/metric/Logger;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/metric/Logger$a;->a:Lcom/inmobi/commons/metric/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger$a;->a:Lcom/inmobi/commons/metric/Logger;

    invoke-static {v0}, Lcom/inmobi/commons/metric/Logger;->a(Lcom/inmobi/commons/metric/Logger;)Lcom/inmobi/commons/metric/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->sendFile()V

    return-void
.end method
