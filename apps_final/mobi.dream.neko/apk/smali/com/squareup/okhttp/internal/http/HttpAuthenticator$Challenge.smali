.class final Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Challenge"
.end annotation


# instance fields
.field final realm:Ljava/lang/String;

.field final scheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 166
    instance-of v0, p1, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
