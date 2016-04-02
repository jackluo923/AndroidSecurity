.class public Lae/gov/mol/social/twitter/Twitt_Sharing;
.super Ljava/lang/Object;
.source "Twitt_Sharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private image_path:Ljava/io/File;

.field private final mTwLoginDialogListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

.field private final mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

.field private twitt_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "consumer_key"    # Ljava/lang/String;
    .param p3, "consumer_secret"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;

    invoke-direct {v0, p0}, Lae/gov/mol/social/twitter/Twitt_Sharing$1;-><init>(Lae/gov/mol/social/twitter/Twitt_Sharing;)V

    iput-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwLoginDialogListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    .line 26
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;

    .line 27
    new-instance v0, Lae/gov/mol/social/twitter/Twitter_Handler;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p3}, Lae/gov/mol/social/twitter/Twitter_Handler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/social/twitter/Twitt_Sharing;)Lae/gov/mol/social/twitter/Twitter_Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/social/twitter/Twitt_Sharing;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->showTwittDialog()V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/social/twitter/Twitt_Sharing;)Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->image_path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/social/twitter/Twitt_Sharing;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->twitt_msg:Ljava/lang/String;

    return-object v0
.end method

.method private showTwittDialog()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;

    invoke-direct {v0, p0}, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;-><init>(Lae/gov/mol/social/twitter/Twitt_Sharing;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->twitt_msg:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method


# virtual methods
.method public Authorize_UserDetail()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public Share_Pic_Text_Titter(Ljava/io/File;Ljava/lang/String;Ltwitter4j/Twitter;)V
    .locals 5
    .param p1, "image_path"    # Ljava/io/File;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "twitter"    # Ltwitter4j/Twitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ltwitter4j/StatusUpdate;

    invoke-direct {v1, p2}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "st":Ltwitter4j/StatusUpdate;
    invoke-virtual {v1, p1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 138
    invoke-interface {p3, v1}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 144
    .end local v1    # "st":Ltwitter4j/StatusUpdate;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ltwitter4j/TwitterException;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pic Upload error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    throw v0
.end method

.method public shareToTwitter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "Image_url"    # Ljava/io/File;

    .prologue
    .line 31
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->twitt_msg:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->image_path:Ljava/io/File;

    .line 33
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwLoginDialogListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    invoke-virtual {v0, v1}, Lae/gov/mol/social/twitter/Twitter_Handler;->setListener(Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;)V

    .line 35
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->hasAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->showTwittDialog()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->authorize()V

    goto :goto_0
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;

    new-instance v1, Lae/gov/mol/social/twitter/Twitt_Sharing$2;

    invoke-direct {v1, p0, p1}, Lae/gov/mol/social/twitter/Twitt_Sharing$2;-><init>(Lae/gov/mol/social/twitter/Twitt_Sharing;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method
