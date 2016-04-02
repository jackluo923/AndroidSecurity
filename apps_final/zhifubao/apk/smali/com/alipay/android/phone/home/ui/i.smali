.class final Lcom/alipay/android/phone/home/ui/i;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/i;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/i;)Lcom/alipay/android/phone/home/ui/AppsCenterFragment;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    return-object v0
.end method


# virtual methods
.method public final onDragEnded()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final onEditAction(I)Z
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "addToHome"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToHome()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$2(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onEnterEditMode()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 122
    return-void
.end method

.method public final onItemLongClicked(I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 116
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 117
    return-void
.end method

.method public final onQuitEditMode(Z)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/j;-><init>(Lcom/alipay/android/phone/home/ui/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    :cond_0
    return-void
.end method

.method public final onReorder(II)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/i;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$0(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(II)V

    .line 106
    return-void
.end method
