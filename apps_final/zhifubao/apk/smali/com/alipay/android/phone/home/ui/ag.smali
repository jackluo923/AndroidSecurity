.class final Lcom/alipay/android/phone/home/ui/ag;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ag;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/ag;)Lcom/alipay/android/phone/home/ui/HomeFragment;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public final onDragEnded()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public final onEditAction(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v1, v1, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    .line 349
    const-string/jumbo v2, "deleteFromHome"

    .line 350
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v2, v3}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ui/HomeFragment;->checkHomeAppLastOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/HomeFragment;->showLastAppDialog()V

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToAppCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 360
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->showMoreAppFullAlert()V

    goto :goto_1
.end method

.method public final onEnterEditMode()V
    .locals 0

    .prologue
    .line 343
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
    .line 322
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 323
    return-void
.end method

.method public final onItemLongClicked(I)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 316
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 318
    return-void
.end method

.method public final onQuitEditMode(Z)V
    .locals 4

    .prologue
    .line 328
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onQuitEditMode, appHasMoved:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ah;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ah;-><init>(Lcom/alipay/android/phone/home/ui/ag;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 339
    :cond_0
    return-void
.end method

.method public final onReorder(II)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ag;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(II)V

    .line 306
    return-void
.end method
