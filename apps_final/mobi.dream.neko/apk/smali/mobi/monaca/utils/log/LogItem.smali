.class public Lmobi/monaca/utils/log/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/utils/log/LogItem$Source;,
        Lmobi/monaca/utils/log/LogItem$LogLevel;
    }
.end annotation


# instance fields
.field private currentTimeStamp:Ljava/lang/String;

.field private lineNumber:I

.field private logLevel:Lmobi/monaca/utils/log/LogItem$LogLevel;

.field private message:Ljava/lang/String;

.field private source:Lmobi/monaca/utils/log/LogItem$Source;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "currentTimeStamp"    # Ljava/lang/String;
    .param p2, "source"    # Lmobi/monaca/utils/log/LogItem$Source;
    .param p3, "logLevel"    # Lmobi/monaca/utils/log/LogItem$LogLevel;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "lineNumber"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmobi/monaca/utils/log/LogItem;->currentTimeStamp:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lmobi/monaca/utils/log/LogItem;->source:Lmobi/monaca/utils/log/LogItem$Source;

    .line 31
    iput-object p3, p0, Lmobi/monaca/utils/log/LogItem;->logLevel:Lmobi/monaca/utils/log/LogItem$LogLevel;

    .line 32
    iput-object p4, p0, Lmobi/monaca/utils/log/LogItem;->message:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lmobi/monaca/utils/log/LogItem;->url:Ljava/lang/String;

    .line 34
    iput p6, p0, Lmobi/monaca/utils/log/LogItem;->lineNumber:I

    .line 35
    return-void
.end method


# virtual methods
.method public createJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "source"

    iget-object v2, p0, Lmobi/monaca/utils/log/LogItem;->source:Lmobi/monaca/utils/log/LogItem$Source;

    invoke-virtual {v2}, Lmobi/monaca/utils/log/LogItem$Source;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "type"

    iget-object v2, p0, Lmobi/monaca/utils/log/LogItem;->logLevel:Lmobi/monaca/utils/log/LogItem$LogLevel;

    invoke-virtual {v2}, Lmobi/monaca/utils/log/LogItem$LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "message"

    iget-object v2, p0, Lmobi/monaca/utils/log/LogItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "url"

    iget-object v2, p0, Lmobi/monaca/utils/log/LogItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "line"

    iget v2, p0, Lmobi/monaca/utils/log/LogItem;->lineNumber:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    return-object v0
.end method

.method public getCurrentTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->currentTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmobi/monaca/utils/log/LogItem;->lineNumber:I

    return v0
.end method

.method public getLogLevel()Lmobi/monaca/utils/log/LogItem$LogLevel;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->logLevel:Lmobi/monaca/utils/log/LogItem$LogLevel;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lmobi/monaca/utils/log/LogItem$Source;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->source:Lmobi/monaca/utils/log/LogItem$Source;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmobi/monaca/utils/log/LogItem;->message:Ljava/lang/String;

    return-object v0
.end method
