.class Lae/gov/mol/helper/ProgressWheel$1;
.super Landroid/os/Handler;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/ProgressWheel;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/ProgressWheel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    invoke-virtual {v0}, Lae/gov/mol/helper/ProgressWheel;->invalidate()V

    .line 70
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    iget-boolean v0, v0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    iget v1, v0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    iget-object v2, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    # getter for: Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I
    invoke-static {v2}, Lae/gov/mol/helper/ProgressWheel;->access$0(Lae/gov/mol/helper/ProgressWheel;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 72
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    iget v0, v0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    iput v3, v0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 75
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    # getter for: Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lae/gov/mol/helper/ProgressWheel;->access$1(Lae/gov/mol/helper/ProgressWheel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel$1;->this$0:Lae/gov/mol/helper/ProgressWheel;

    # getter for: Lae/gov/mol/helper/ProgressWheel;->delayMillis:I
    invoke-static {v1}, Lae/gov/mol/helper/ProgressWheel;->access$2(Lae/gov/mol/helper/ProgressWheel;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    :cond_1
    return-void
.end method
