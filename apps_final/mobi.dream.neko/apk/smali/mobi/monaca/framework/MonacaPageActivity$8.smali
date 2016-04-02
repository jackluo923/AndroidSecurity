.class Lmobi/monaca/framework/MonacaPageActivity$8;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->pushPageWithIntent(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
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
    .line 1006
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$8;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$8;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 1010
    return-void
.end method
