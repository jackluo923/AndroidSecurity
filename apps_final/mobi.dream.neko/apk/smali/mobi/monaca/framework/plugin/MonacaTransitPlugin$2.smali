.class Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;
.super Ljava/lang/Object;
.source "MonacaTransitPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->loadRelativePathAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

.field final synthetic val$newUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/MonacaTransitPlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->val$newUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 144
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->val$newUri:Ljava/lang/String;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v1}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->val$newUri:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v1}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v1}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    goto :goto_0
.end method
