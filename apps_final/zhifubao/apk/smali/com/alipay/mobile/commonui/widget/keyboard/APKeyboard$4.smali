.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Z:J
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$500(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLayoutChange 5 1 parentViewOffsetCheckTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLayoutChange 5 2 APKeyboard.this.parentViewOffset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLayoutChange 5 3 parentViewOffsetLastSetted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    const-string/jumbo v1, "onLayoutChange 6"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_4

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v2

    # setter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I
    invoke-static {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1002(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;I)I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v0

    if-ge v0, v5, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parentViewOffsetCheckTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1100(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # operator++ for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$708(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I

    move-result v0

    if-lt v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # setter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->X:Z
    invoke-static {v0, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1202(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$1300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    goto/16 :goto_0
.end method
