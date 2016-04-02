.class Lcom/inmobi/commons/internal/ApplicationFocusManager$b;
.super Landroid/os/Handler;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
