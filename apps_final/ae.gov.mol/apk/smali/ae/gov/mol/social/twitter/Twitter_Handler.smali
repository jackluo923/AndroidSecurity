.class public Lae/gov/mol/social/twitter/Twitter_Handler;
.super Ljava/lang/Object;
.source "Twitter_Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    }
.end annotation


# static fields
.field public static final CALLBACK_URL:Ljava/lang/String; = "twitterapp://connect"

.field private static final TWITTER_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final TWITTER_AUTHORZE_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final TWITTER_REQUEST_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field public static twitterObj:Ltwitter4j/Twitter;


# instance fields
.field private final context:Landroid/app/Activity;

.field private mAccessToken:Ltwitter4j/auth/AccessToken;

.field private final mConsumerKey:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private final mHttpOauthprovider:Loauth/signpost/OAuthProvider;

.field private mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

.field private final mProgressDlg:Landroid/app/ProgressDialog;

.field private final mSecretKey:Ljava/lang/String;

.field private final mSession:Lae/gov/mol/social/twitter/TwitterSession;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v3, Lae/gov/mol/social/twitter/Twitter_Handler$1;

    invoke-direct {v3, p0}, Lae/gov/mol/social/twitter/Twitter_Handler$1;-><init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V

    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->context:Landroid/app/Activity;

    .line 43
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    sput-object v3, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    .line 44
    new-instance v3, Lae/gov/mol/social/twitter/TwitterSession;

    invoke-direct {v3, p1}, Lae/gov/mol/social/twitter/TwitterSession;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;

    .line 45
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 47
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mProgressDlg:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 49
    iput-object p2, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mConsumerKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSecretKey:Ljava/lang/String;

    .line 52
    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mConsumerKey:Ljava/lang/String;

    .line 53
    iget-object v5, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSecretKey:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 55
    const-string v2, "https://api.twitter.com/oauth/request_token"

    .line 56
    .local v2, "request_url":Ljava/lang/String;
    const-string v0, "https://api.twitter.com/oauth/access_token"

    .line 57
    .local v0, "access_token_url":Ljava/lang/String;
    const-string v1, "https://api.twitter.com/oauth/authorize"

    .line 59
    .local v1, "authorize_url":Ljava/lang/String;
    new-instance v3, Loauth/signpost/basic/DefaultOAuthProvider;

    .line 60
    invoke-direct {v3, v2, v0, v1}, Loauth/signpost/basic/DefaultOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthprovider:Loauth/signpost/OAuthProvider;

    .line 61
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;

    invoke-virtual {v3}, Lae/gov/mol/social/twitter/TwitterSession;->getAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    .line 63
    invoke-direct {p0}, Lae/gov/mol/social/twitter/Twitter_Handler;->configureToken()V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/social/twitter/Twitter_Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lae/gov/mol/social/twitter/Twitter_Handler;->showLoginDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/social/twitter/Twitter_Handler;)Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/OAuthProvider;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthprovider:Loauth/signpost/OAuthProvider;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/social/twitter/Twitter_Handler;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/social/twitter/Twitter_Handler;Ltwitter4j/auth/AccessToken;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    return-void
.end method

.method static synthetic access$7(Lae/gov/mol/social/twitter/Twitter_Handler;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lae/gov/mol/social/twitter/Twitter_Handler;->configureToken()V

    return-void
.end method

.method static synthetic access$8(Lae/gov/mol/social/twitter/Twitter_Handler;)Lae/gov/mol/social/twitter/TwitterSession;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;

    return-object v0
.end method

.method static synthetic access$9(Lae/gov/mol/social/twitter/Twitter_Handler;)Ltwitter4j/auth/AccessToken;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    return-object v0
.end method

.method private configureToken()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mConsumerKey:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSecretKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 75
    :cond_0
    return-void
.end method

.method private getVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 161
    const-string v6, ""

    .line 164
    .local v6, "verifier":Ljava/lang/String;
    :try_start_0
    const-string v8, "twitterapp"

    const-string v9, "http"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "query":Ljava/lang/String;
    const-string v8, "&"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "array":[Ljava/lang/String;
    array-length v8, v0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 184
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v6

    .line 171
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v3    # "query":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    aget-object v2, v0, v7

    .line 172
    .local v2, "parameter":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "v":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    const-string v10, "oauth_verifier"

    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 175
    if-eqz v9, :cond_1

    .line 176
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    goto :goto_1

    .line 171
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "parameter":Ljava/lang/String;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "v":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method private showLoginDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Lae/gov/mol/social/twitter/Twitter_Handler$4;

    invoke-direct {v0, p0}, Lae/gov/mol/social/twitter/Twitter_Handler$4;-><init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V

    .line 203
    .local v0, "listener":Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    new-instance v1, Lae/gov/mol/social/twitter/TwitterDialog;

    iget-object v2, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->context:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, v0}, Lae/gov/mol/social/twitter/TwitterDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;)V

    invoke-virtual {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->show()V

    .line 204
    return-void
.end method


# virtual methods
.method public authorize()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lae/gov/mol/social/twitter/Twitter_Handler$2;

    invoke-direct {v0, p0}, Lae/gov/mol/social/twitter/Twitter_Handler$2;-><init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V

    .line 121
    invoke-virtual {v0}, Lae/gov/mol/social/twitter/Twitter_Handler$2;->start()V

    .line 122
    return-void
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/TwitterSession;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessToken()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lae/gov/mol/social/twitter/Twitter_Handler;->getVerifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "verifier":Ljava/lang/String;
    new-instance v1, Lae/gov/mol/social/twitter/Twitter_Handler$3;

    invoke-direct {v1, p0, v0}, Lae/gov/mol/social/twitter/Twitter_Handler$3;-><init>(Lae/gov/mol/social/twitter/Twitter_Handler;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Lae/gov/mol/social/twitter/Twitter_Handler$3;->start()V

    .line 157
    return-void
.end method

.method public resetAccessToken()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mSession:Lae/gov/mol/social/twitter/TwitterSession;

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/TwitterSession;->resetAccessToken()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mAccessToken:Ltwitter4j/auth/AccessToken;

    .line 87
    :cond_0
    return-void
.end method

.method public setListener(Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    .prologue
    .line 67
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    .line 68
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    sget-object v1, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    invoke-interface {v1, p1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ltwitter4j/TwitterException;
    throw v0
.end method
