.class public Lae/gov/mol/social/twitter/TwitterSession;
.super Ljava/lang/Object;
.source "TwitterSession.java"


# static fields
.field private static final SHARED:Ljava/lang/String; = "Twitter_Preferences"

.field private static final TWEET_AUTH_KEY:Ljava/lang/String; = "819249397-CoX1zqS6pjLeDfFTZoZLhXOv81BgAHFObfMvb2IB"

.field private static final TWEET_AUTH_SECRET_KEY:Ljava/lang/String; = "fOdSwD70ZMRAzG0aDO3zHEVeb8kiXhTYgIBBoB2MoUKRM"

.field private static final TWEET_USER_NAME:Ljava/lang/String; = "mol"


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Twitter_Preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->sharedPref:Landroid/content/SharedPreferences;

    .line 20
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    .line 21
    return-void
.end method


# virtual methods
.method public getAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterSession;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "819249397-CoX1zqS6pjLeDfFTZoZLhXOv81BgAHFObfMvb2IB"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "token":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/social/twitter/TwitterSession;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "fOdSwD70ZMRAzG0aDO3zHEVeb8kiXhTYgIBBoB2MoUKRM"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "tokenSecret":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 48
    new-instance v2, Ltwitter4j/auth/AccessToken;

    invoke-direct {v2, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-object v2
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "mol"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetAccessToken()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "819249397-CoX1zqS6pjLeDfFTZoZLhXOv81BgAHFObfMvb2IB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "fOdSwD70ZMRAzG0aDO3zHEVeb8kiXhTYgIBBoB2MoUKRM"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mol"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public storeAccessToken(Ltwitter4j/auth/AccessToken;Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "819249397-CoX1zqS6pjLeDfFTZoZLhXOv81BgAHFObfMvb2IB"

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "fOdSwD70ZMRAzG0aDO3zHEVeb8kiXhTYgIBBoB2MoUKRM"

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mol"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterSession;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method
