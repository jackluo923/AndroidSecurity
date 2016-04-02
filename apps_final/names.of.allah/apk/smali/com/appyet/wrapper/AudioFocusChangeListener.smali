.class public Lcom/appyet/wrapper/AudioFocusChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private mApplicationContext:Lcom/appyet/context/ApplicationContext;

.field private mWasPaused:Z


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z

    iput-object p1, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public AudioFocus(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->f()Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->j()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListener;->mWasPaused:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appyet/wrapper/AudioFocusChangeListener;->AudioFocus(I)V

    return-void
.end method
