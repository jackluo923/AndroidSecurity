.class Lae/gov/mol/social/twitter/Twitter_Handler$2;
.super Ljava/lang/Thread;
.source "Twitter_Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/social/twitter/Twitter_Handler;->authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitter_Handler;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler$2;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 108
    const-string v0, ""

    .line 109
    .local v0, "authUrl":Ljava/lang/String;
    const/4 v2, 0x1

    .line 112
    .local v2, "what":I
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$2;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthprovider:Loauth/signpost/OAuthProvider;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$3(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/OAuthProvider;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler$2;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$4(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v4

    const-string v5, "twitterapp://connect"

    .line 112
    invoke-interface {v3, v4, v5}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    const/4 v2, 0x0

    .line 118
    :goto_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$2;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$5(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler$2;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$5(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/os/Handler;

    move-result-object v4

    .line 119
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
