.class final Lcom/alipay/android/phone/home/ui/as;
.super Ljava/lang/Object;
.source "SimpleHomeFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/as;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/as;)Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    return-object v0
.end method


# virtual methods
.method public final onDragEnded()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final onEditAction(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iget-object v1, v1, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    const-string/jumbo v2, "deleteFromHome"

    .line 182
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->checkHomeAppLastOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->showLastAppDialog()V

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToAppCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 192
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->showMoreAppFullAlert()V

    goto :goto_1
.end method

.method public final onEnterEditMode()V
    .locals 0

    .prologue
    .line 175
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
    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 153
    return-void
.end method

.method public final onItemLongClicked(I)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 146
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public final onQuitEditMode(Z)V
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onQuitEditMode, appHasMoved:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/at;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/at;-><init>(Lcom/alipay/android/phone/home/ui/as;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    :cond_0
    return-void
.end method

.method public final onReorder(II)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/as;->a:Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(II)V

    .line 136
    return-void
.end method
