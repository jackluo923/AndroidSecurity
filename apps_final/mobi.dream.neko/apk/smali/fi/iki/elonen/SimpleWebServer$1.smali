.class final Lfi/iki/elonen/SimpleWebServer$1;
.super Ljava/util/HashMap;
.source "SimpleWebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/SimpleWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v0, "css"

    const-string v1, "text/css"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "htm"

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "html"

    const-string v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "xml"

    const-string v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "json"

    const-string v1, "text/json"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "java"

    const-string v1, "text/x-java-source, text/java"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "txt"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "asc"

    const-string v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "gif"

    const-string v1, "image/gif"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "jpg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "jpeg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "png"

    const-string v1, "image/png"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "mp3"

    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "m3u"

    const-string v1, "audio/mpeg-url"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "mp4"

    const-string v1, "video/mp4"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "ogv"

    const-string v1, "video/ogg"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "flv"

    const-string v1, "video/x-flv"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "mov"

    const-string v1, "video/quicktime"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "swf"

    const-string v1, "application/x-shockwave-flash"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "js"

    const-string v1, "application/javascript"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "pdf"

    const-string v1, "application/pdf"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "doc"

    const-string v1, "application/msword"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "ogg"

    const-string v1, "application/x-ogg"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "zip"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "exe"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "class"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lfi/iki/elonen/SimpleWebServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
