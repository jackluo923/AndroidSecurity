.class public Lmobi/monaca/framework/plugin/MonacaLocalServer;
.super Ljava/lang/Object;
.source "MonacaLocalServer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lmobi/monaca/framework/MonacaPageActivity;

.field private fullPath:Ljava/lang/String;

.field private mAppAssetPath:Ljava/lang/String;

.field private port:I

.field private webServer:Lfi/iki/elonen/SimpleWebServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootDir"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    check-cast p1, Lmobi/monaca/framework/MonacaPageActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->activity:Lmobi/monaca/framework/MonacaPageActivity;

    .line 22
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->activity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getAppWWWPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->mAppAssetPath:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->mAppAssetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->removeLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->fullPath:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->fullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "fullPathFile":Ljava/io/File;
    iput p3, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->port:I

    .line 27
    new-instance v1, Lfi/iki/elonen/SimpleWebServer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p3, v0, v3}, Lfi/iki/elonen/SimpleWebServer;-><init>(Ljava/lang/String;ILjava/io/File;Z)V

    iput-object v1, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->webServer:Lfi/iki/elonen/SimpleWebServer;

    .line 28
    return-void
.end method

.method private removeLeadingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->port:I

    return v0
.end method

.method public getServerRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->fullPath:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->webServer:Lfi/iki/elonen/SimpleWebServer;

    invoke-virtual {v0}, Lfi/iki/elonen/SimpleWebServer;->start()V

    .line 32
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaLocalServer;->webServer:Lfi/iki/elonen/SimpleWebServer;

    invoke-virtual {v0}, Lfi/iki/elonen/SimpleWebServer;->stop()V

    .line 36
    return-void
.end method
