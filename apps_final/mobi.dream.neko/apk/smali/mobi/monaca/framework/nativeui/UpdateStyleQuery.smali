.class public Lmobi/monaca/framework/nativeui/UpdateStyleQuery;
.super Ljava/lang/Object;
.source "UpdateStyleQuery.java"


# instance fields
.field public final ids:Lorg/json/JSONArray;

.field public final style:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "style"    # Lorg/json/JSONObject;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->ids:Lorg/json/JSONArray;

    .line 17
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->style:Lorg/json/JSONObject;

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_query_ids:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->ids:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_query_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->style:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
