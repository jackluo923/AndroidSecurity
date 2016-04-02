.class Lmobi/monaca/framework/MonacaPageActivity$7;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->updateStyleBulkily(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;

.field final synthetic val$queries:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->val$queries:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 726
    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->val$queries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;

    .line 727
    .local v5, "query":Lmobi/monaca/framework/nativeui/UpdateStyleQuery;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, v5, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->ids:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 728
    iget-object v6, v5, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->ids:Lorg/json/JSONArray;

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "componentId":Ljava/lang/String;
    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    # getter for: Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;
    invoke-static {v6}, Lmobi/monaca/framework/MonacaPageActivity;->access$100(Lmobi/monaca/framework/MonacaPageActivity;)Lmobi/monaca/framework/nativeui/component/PageComponent;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    # getter for: Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;
    invoke-static {v6}, Lmobi/monaca/framework/MonacaPageActivity;->access$100(Lmobi/monaca/framework/MonacaPageActivity;)Lmobi/monaca/framework/nativeui/component/PageComponent;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    # getter for: Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;
    invoke-static {v6}, Lmobi/monaca/framework/MonacaPageActivity;->access$100(Lmobi/monaca/framework/MonacaPageActivity;)Lmobi/monaca/framework/nativeui/component/PageComponent;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 732
    iget-object v6, p0, Lmobi/monaca/framework/MonacaPageActivity$7;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    # getter for: Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;
    invoke-static {v6}, Lmobi/monaca/framework/MonacaPageActivity;->access$100(Lmobi/monaca/framework/MonacaPageActivity;)Lmobi/monaca/framework/nativeui/component/PageComponent;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/Component;

    .line 733
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/Component;
    if-eqz v0, :cond_1

    .line 735
    :try_start_0
    iget-object v6, v5, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;->style:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lmobi/monaca/framework/nativeui/component/Component;->updateStyle(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lmobi/monaca/framework/nativeui/exception/NativeUIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    .restart local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    :catch_0
    move-exception v2

    .line 737
    .local v2, "e":Lmobi/monaca/framework/nativeui/exception/NativeUIException;
    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;->printStackTrace()V

    goto :goto_1

    .line 748
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    .end local v1    # "componentId":Ljava/lang/String;
    .end local v2    # "e":Lmobi/monaca/framework/nativeui/exception/NativeUIException;
    .end local v3    # "i":I
    .end local v5    # "query":Lmobi/monaca/framework/nativeui/UpdateStyleQuery;
    :cond_2
    return-void
.end method
