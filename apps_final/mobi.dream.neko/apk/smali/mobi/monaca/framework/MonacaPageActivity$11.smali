.class Lmobi/monaca/framework/MonacaPageActivity$11;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->goHomeAsync(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;

.field final synthetic val$homeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$11;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaPageActivity$11;->val$homeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$11;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$11;->val$homeUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    .line 1159
    return-void
.end method
