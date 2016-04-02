.class public Lcom/appyet/manager/ProgressNotificationManager;
.super Landroid/app/Notification;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/app/NotificationManager;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const v1, 0x41a9aa

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Notification;-><init>()V

    iput v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->c:I

    iput-object p1, p0, Lcom/appyet/manager/ProgressNotificationManager;->f:Landroid/content/Context;

    iput v1, p0, Lcom/appyet/manager/ProgressNotificationManager;->a:I

    iput p2, p0, Lcom/appyet/manager/ProgressNotificationManager;->b:I

    iput-object p3, p0, Lcom/appyet/manager/ProgressNotificationManager;->d:Ljava/lang/String;

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->e:Landroid/app/NotificationManager;

    const v0, 0x1080081

    iput v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->icon:I

    iget v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->flags:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03005d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d9

    const v2, 0x1080081

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00db

    iget v2, p0, Lcom/appyet/manager/ProgressNotificationManager;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->e:Landroid/app/NotificationManager;

    const v1, 0x41a9aa

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/appyet/manager/ProgressNotificationManager;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    iput p1, p0, Lcom/appyet/manager/ProgressNotificationManager;->c:I

    const v0, 0x1080081

    :try_start_0
    iput v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->icon:I

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/appyet/manager/ProgressNotificationManager;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03005d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d9

    const v2, 0x1080081

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00da

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/ProgressNotificationManager;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00db

    iget v2, p0, Lcom/appyet/manager/ProgressNotificationManager;->b:I

    iget v3, p0, Lcom/appyet/manager/ProgressNotificationManager;->c:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/appyet/manager/ProgressNotificationManager;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/appyet/manager/ProgressNotificationManager;->a:I

    return v0
.end method
