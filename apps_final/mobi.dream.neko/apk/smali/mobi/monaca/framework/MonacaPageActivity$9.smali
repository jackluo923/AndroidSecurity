.class Lmobi/monaca/framework/MonacaPageActivity$9;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;

.field final synthetic val$params:Lmobi/monaca/framework/transition/TransitionParams;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->val$params:Lmobi/monaca/framework/transition/TransitionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->bench_pushpage_async_run:I

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/monaca/framework/util/BenchmarkTimer;->mark(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity$9;->val$params:Lmobi/monaca/framework/transition/TransitionParams;

    invoke-virtual {v0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageWithIntent(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 1071
    return-void
.end method
