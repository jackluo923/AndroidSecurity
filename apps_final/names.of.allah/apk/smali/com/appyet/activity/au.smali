.class public abstract Lcom/appyet/activity/au;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/activity/au;->a()Lcom/google/android/youtube/player/YouTubePlayer$Provider;

    move-result-object v0

    const-string v1, "AIzaSyAUXIsUMWrKnCggcFBPkitgjsRsoBktRfI"

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/player/YouTubePlayer$Provider;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    :cond_0
    return-void
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0, v4}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/appyet/activity/au;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
