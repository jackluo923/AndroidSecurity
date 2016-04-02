.class public Lcom/appyet/manager/as;
.super Ljava/lang/Object;


# static fields
.field private static l:Z

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private B:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private I:Z

.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/content/Intent;

.field private d:Lcom/appyet/context/ApplicationContext;

.field private e:Lcom/appyet/data/FeedItem;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Lcom/appyet/activity/MediaPlayerActivity;

.field private k:Lcom/appyet/manager/MediaProgressNotification;

.field private o:Landroid/content/ComponentName;

.field private p:Lcom/appyet/receiver/CommonReceiver;

.field private q:Z

.field private r:Lcom/appyet/manager/bj;

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Ljava/lang/Runnable;

.field private v:Landroid/media/MediaPlayer$OnPreparedListener;

.field private w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private x:Landroid/media/MediaPlayer$OnCompletionListener;

.field private y:Landroid/media/MediaPlayer$OnErrorListener;

.field private z:Landroid/media/MediaPlayer$OnInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/appyet/manager/as;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/manager/as;

    const-string v1, "registerMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/as;->m:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/appyet/manager/as;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    const-class v0, Lcom/appyet/manager/as;

    const-string v1, "unregisterMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/as;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->checkAvailable()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appyet/manager/as;->l:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/appyet/manager/as;->l:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->h:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->i:Landroid/os/Handler;

    new-instance v0, Lcom/appyet/manager/at;

    invoke-direct {v0, p0}, Lcom/appyet/manager/at;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/appyet/manager/ba;

    invoke-direct {v0, p0}, Lcom/appyet/manager/ba;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/appyet/manager/bb;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bb;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/appyet/manager/bc;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bc;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/appyet/manager/bd;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bd;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/appyet/manager/be;

    invoke-direct {v0, p0}, Lcom/appyet/manager/be;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->y:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/appyet/manager/bf;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bf;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->z:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/appyet/manager/bg;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bg;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->A:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/appyet/manager/bh;

    invoke-direct {v0, p0}, Lcom/appyet/manager/bh;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->B:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/appyet/manager/au;

    invoke-direct {v0, p0}, Lcom/appyet/manager/au;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/manager/av;

    invoke-direct {v0, p0}, Lcom/appyet/manager/av;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/manager/aw;

    invoke-direct {v0, p0}, Lcom/appyet/manager/aw;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/manager/ax;

    invoke-direct {v0, p0}, Lcom/appyet/manager/ax;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/manager/ay;

    invoke-direct {v0, p0}, Lcom/appyet/manager/ay;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->G:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/manager/az;

    invoke-direct {v0, p0}, Lcom/appyet/manager/az;-><init>(Lcom/appyet/manager/as;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->H:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    return-void
.end method

.method static synthetic a(Lcom/appyet/manager/as;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/as;->c:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/manager/as;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/manager/as;Lcom/appyet/manager/MediaProgressNotification;)Lcom/appyet/manager/MediaProgressNotification;
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/manager/as;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->u:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/manager/as;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/manager/as;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/manager/as;->q:Z

    return v0
.end method

.method public static e()V
    .locals 0

    return-void
.end method

.method static synthetic e(Lcom/appyet/manager/as;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/manager/as;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/appyet/manager/as;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    return-object v0
.end method

.method static synthetic i(Lcom/appyet/manager/as;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->u()V

    return-void
.end method

.method static synthetic l(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->p()V

    return-void
.end method

.method static synthetic m(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->s()V

    return-void
.end method

.method static synthetic n(Lcom/appyet/manager/as;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->c:Landroid/content/Intent;

    return-object v0
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v2, 0x7f0a00cb

    invoke-virtual {v1, v2}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v2, 0x7f0a00cb

    invoke-virtual {v1, v2}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->o()V

    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    iget-object v2, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/appyet/manager/MediaProgressNotification;->a(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic p(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->q()V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/appyet/manager/as;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/appyet/manager/as;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const v1, 0x7f08007a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private s()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/appyet/manager/as;->t()V

    iget-object v0, p0, Lcom/appyet/manager/as;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/manager/as;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appyet/manager/as;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/manager/as;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private v()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/appyet/manager/as;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;

    iget-object v2, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v2, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->requestFocus(Landroid/media/AudioManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private w()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/appyet/manager/as;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;

    iget-object v2, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v1, v2}, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iget-object v2, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->abandonFocus(Landroid/media/AudioManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appyet/manager/as;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/manager/as;->m:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    mul-int/lit16 v2, p1, 0x3e8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/appyet/activity/MediaPlayerActivity;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    iget-boolean v0, p0, Lcom/appyet/manager/as;->s:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appyet/manager/as;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/appyet/manager/as;->H:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/manager/as;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/manager/as;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/appyet/manager/as;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/manager/as;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/manager/as;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/appyet/manager/as;->u()V

    invoke-virtual {p0}, Lcom/appyet/manager/as;->l()V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/manager/as;->s()V

    :cond_0
    invoke-direct {p0}, Lcom/appyet/manager/as;->q()V

    :goto_2
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appyet/manager/as;->o()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public final a(Lcom/appyet/data/FeedItem;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/manager/as;->d()V

    iput-object p1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/manager/as;->d()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x5f

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/manager/as;->d()V

    iput-object p1, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/appyet/manager/as;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/appyet/manager/as;->d()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->u()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/appyet/manager/as;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/appyet/manager/as;->v()Z

    invoke-virtual {p0}, Lcom/appyet/manager/as;->a()V

    new-instance v0, Lcom/appyet/receiver/CommonReceiver;

    invoke-direct {v0}, Lcom/appyet/receiver/CommonReceiver;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/appyet/context/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    iget-object v1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/af;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v2, v0}, Lcom/appyet/manager/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->y:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->z:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->A:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/as;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->y:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->z:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->A:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/as;->s:Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/manager/as;->d()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->u()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/appyet/manager/as;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/appyet/manager/as;->v()Z

    invoke-virtual {p0}, Lcom/appyet/manager/as;->a()V

    new-instance v0, Lcom/appyet/receiver/CommonReceiver;

    invoke-direct {v0}, Lcom/appyet/receiver/CommonReceiver;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/appyet/context/ApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->y:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->z:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->A:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/as;->s:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/appyet/manager/as;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/manager/as;->n:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appyet/manager/as;->o:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()Lcom/appyet/manager/MediaProgressNotification;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    return-object v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/appyet/manager/as;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/manager/as;->I:Z

    invoke-virtual {p0}, Lcom/appyet/manager/as;->i()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->t()V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/manager/as;->l()V

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appyet/manager/as;->w()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->b:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->p:Lcom/appyet/receiver/CommonReceiver;

    :cond_2
    iget-object v0, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    invoke-virtual {v0}, Lcom/appyet/manager/MediaProgressNotification;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->k:Lcom/appyet/manager/MediaProgressNotification;

    :cond_3
    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/manager/as;->l()V

    iget-object v0, p0, Lcom/appyet/manager/as;->c:Landroid/content/Intent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/manager/as;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/as;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/as;->c:Landroid/content/Intent;

    :cond_5
    invoke-direct {p0}, Lcom/appyet/manager/as;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final f()Lcom/appyet/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/as;->I:Z

    invoke-virtual {p0}, Lcom/appyet/manager/as;->i()V

    invoke-direct {p0}, Lcom/appyet/manager/as;->p()V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto :goto_0
.end method

.method public final i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    new-instance v1, Lcom/appyet/manager/bi;

    invoke-direct {v1, p0, v0}, Lcom/appyet/manager/bi;-><init>(Lcom/appyet/manager/as;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appyet/manager/bi;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    iget-object v1, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/data/FeedItem;->setEnclosureCurrentPosition(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/appyet/manager/as;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p0}, Lcom/appyet/manager/as;->i()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/manager/as;->I:Z

    invoke-direct {p0}, Lcom/appyet/manager/as;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/appyet/manager/as;->r()V

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    invoke-direct {p0}, Lcom/appyet/manager/as;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/as;->r:Lcom/appyet/manager/bj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/manager/bj;

    invoke-direct {v0}, Lcom/appyet/manager/bj;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/as;->r:Lcom/appyet/manager/bj;

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/as;->r:Lcom/appyet/manager/bj;

    iget-object v1, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    iget-object v2, p0, Lcom/appyet/manager/as;->a:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/appyet/manager/as;->e:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/bj;->a(Landroid/app/Activity;Landroid/media/MediaPlayer;Lcom/appyet/data/FeedItem;)V

    iget-object v0, p0, Lcom/appyet/manager/as;->j:Lcom/appyet/activity/MediaPlayerActivity;

    iget-object v1, p0, Lcom/appyet/manager/as;->r:Lcom/appyet/manager/bj;

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/manager/as;->I:Z

    return v0
.end method
