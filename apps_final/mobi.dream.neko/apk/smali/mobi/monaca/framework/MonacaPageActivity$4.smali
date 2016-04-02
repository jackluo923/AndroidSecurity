.class Lmobi/monaca/framework/MonacaPageActivity$4;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->showMonacaSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;

.field final synthetic val$activity:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->val$activity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/16 v8, 0x400

    .line 212
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->val$activity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 215
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->val$activity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaPageActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .local v2, "root":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 217
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 218
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v4, v4, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/monaca/framework/AppJsonSetting;->getSplashBackgroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 219
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :try_start_0
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v3, "splashImageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->val$activity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaPageActivity;->getSplashDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v3    # "splashImageView":Landroid/widget/ImageView;
    :goto_0
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    const v7, 0x1030010

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, v4, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    .line 235
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-ne v4, v8, :cond_0

    .line 236
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v4, v4, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 238
    :cond_0
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v4, v4, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 239
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v4, v4, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 240
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity$4;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v4, v4, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 241
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lmobi/monaca/framework/MonacaPageActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
