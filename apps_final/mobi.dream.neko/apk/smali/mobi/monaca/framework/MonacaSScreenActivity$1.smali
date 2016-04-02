.class Lmobi/monaca/framework/MonacaSScreenActivity$1;
.super Ljava/lang/Object;
.source "MonacaSScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaSScreenActivity;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaSScreenActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaSScreenActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 43
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaSScreenActivity;->hasSplashScreenExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v3}, Lmobi/monaca/framework/MonacaSScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->splashView:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->splashView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaSScreenActivity;->getSplashFileStream()Ljava/io/InputStream;

    move-result-object v0

    .line 47
    .local v0, "stream":Ljava/io/InputStream;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->splashView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->splashView:Landroid/widget/ImageView;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v2, v2, Lmobi/monaca/framework/MonacaSScreenActivity;->app:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/AppJsonSetting;->getSplashBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v2, v2, Lmobi/monaca/framework/MonacaSScreenActivity;->splashView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaSScreenActivity;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_none:I

    sget v3, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_close_exit:I

    invoke-virtual {v1, v2, v3}, Lmobi/monaca/framework/MonacaSScreenActivity;->overridePendingTransition(II)V

    .line 57
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->handler:Landroid/os/Handler;

    .line 58
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    new-instance v2, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;

    invoke-direct {v2, p0}, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;-><init>(Lmobi/monaca/framework/MonacaSScreenActivity$1;)V

    iput-object v2, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->pageLauncher:Ljava/lang/Runnable;

    .line 67
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    iget-object v2, v2, Lmobi/monaca/framework/MonacaSScreenActivity;->pageLauncher:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .end local v0    # "stream":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaSScreenActivity;->goNextActivityWithoutSplash()V

    goto :goto_1

    .line 51
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
