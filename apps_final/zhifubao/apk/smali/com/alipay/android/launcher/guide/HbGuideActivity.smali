.class public Lcom/alipay/android/launcher/guide/HbGuideActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "HbGuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HbGuideActivity"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"


# instance fields
.field private aniView:Lcom/alipay/android/launcher/guide/AniView;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animation_left:Landroid/view/animation/Animation;

.field private animation_right:Landroid/view/animation/Animation;

.field private btn_enter:Landroid/widget/ImageButton;

.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private imageLeft:Landroid/widget/ImageView;

.field private imageRight:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private mTransactionID:Ljava/lang/String;

.field private parent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->frames:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/launcher/guide/HbGuideActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_left:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_right:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 166
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 165
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->removeTransaction(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->finish()V

    .line 170
    return-void
.end method

.method private removeAnimations()V
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->aniView:Lcom/alipay/android/launcher/guide/AniView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->aniView:Lcom/alipay/android/launcher/guide/AniView;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/AniView;->releaseBitmaps()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->frames:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 146
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->frames:Ljava/util/List;

    .line 147
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->btn_enter:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->btn_enter:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->parent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->parent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_left:Landroid/view/animation/Animation;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_right:Landroid/view/animation/Animation;

    .line 154
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 155
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 160
    :goto_1
    return-void

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->frames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 121
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 124
    if-eqz p4, :cond_0

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x400

    .line 49
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->activity_hb_guide:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncherBroadcastReceiver"

    const-string/jumbo v2, "HbGuideActivity onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "transaction_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->mTransactionID:Ljava/lang/String;

    .line 59
    :cond_0
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_img_txt1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_img_txt2:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->layout:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->parent:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_btn_ok:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->btn_enter:Landroid/widget/ImageButton;

    .line 65
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_btn_skip:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->btn_enter:Landroid/widget/ImageButton;

    new-instance v2, Lcom/alipay/android/launcher/guide/HbGuideActivity$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity$1;-><init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v1, Lcom/alipay/android/launcher/guide/HbGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity$2;-><init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v0, Lcom/alipay/android/tablauncher/R$anim;->translate_anim_left2right:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_left:Landroid/view/animation/Animation;

    .line 93
    sget v0, Lcom/alipay/android/tablauncher/R$anim;->translate_anim_right2left:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_right:Landroid/view/animation/Animation;

    .line 96
    const-string/jumbo v0, "UC-FFC-150108-07"

    const-string/jumbo v1, "09999970"

    const-string/jumbo v2, "hbstartPage"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    sget v0, Lcom/alipay/android/tablauncher/R$id;->hb_img_frame:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/guide/AniView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity;->aniView:Lcom/alipay/android/launcher/guide/AniView;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 101
    new-instance v1, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;-><init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V

    .line 116
    const-wide/16 v2, 0xc8

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 175
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->removeAnimations()V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
