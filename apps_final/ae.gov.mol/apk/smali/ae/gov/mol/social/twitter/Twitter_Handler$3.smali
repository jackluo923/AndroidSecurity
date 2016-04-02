.class Lae/gov/mol/social/twitter/Twitter_Handler$3;
.super Ljava/lang/Thread;
.source "Twitter_Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/social/twitter/Twitter_Handler;->processToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

.field private final synthetic val$verifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitter_Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    iput-object p2, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->val$verifier:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 133
    const/4 v2, 0x1

    .line 136
    .local v2, "what":I
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthprovider:Loauth/signpost/OAuthProvider;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$3(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/OAuthProvider;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$4(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v4

    .line 137
    iget-object v5, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->val$verifier:Ljava/lang/String;

    .line 136
    invoke-interface {v3, v4, v5}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    new-instance v4, Ltwitter4j/auth/AccessToken;

    .line 140
    iget-object v5, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v5}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$4(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v5

    invoke-virtual {v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 141
    iget-object v6, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v6}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$4(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v6

    invoke-virtual {v6}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v3, v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$6(Lae/gov/mol/social/twitter/Twitter_Handler;Ltwitter4j/auth/AccessToken;)V

    .line 143
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # invokes: Lae/gov/mol/social/twitter/Twitter_Handler;->configureToken()V
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$7(Lae/gov/mol/social/twitter/Twitter_Handler;)V

    .line 145
    sget-object v3, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    invoke-interface {v3}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v1

    .line 147
    .local v1, "user":Ltwitter4j/User;
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$8(Lae/gov/mol/social/twitter/Twitter_Handler;)Lae/gov/mol/social/twitter/TwitterSession;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$9(Lae/gov/mol/social/twitter/Twitter_Handler;)Ltwitter4j/auth/AccessToken;

    move-result-object v4

    invoke-interface {v1}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lae/gov/mol/social/twitter/TwitterSession;->storeAccessToken(Ltwitter4j/auth/AccessToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v2, 0x0

    .line 154
    .end local v1    # "user":Ltwitter4j/User;
    :goto_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$5(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler$3;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$5(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
