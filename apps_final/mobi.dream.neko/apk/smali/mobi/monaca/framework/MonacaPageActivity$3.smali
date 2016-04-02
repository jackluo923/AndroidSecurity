.class Lmobi/monaca/framework/MonacaPageActivity$3;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$3;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$3;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$3;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaURI;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
