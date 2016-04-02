.class public Lmobi/monaca/framework/transition/ClosePageIntent;
.super Landroid/content/Intent;
.source "ClosePageIntent.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "close"

.field public static final DATA_TYPE:Ljava/lang/String; = "mobi.monaca/activity"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/monaca/framework/transition/ClosePageIntent;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 15
    const-string v0, "close"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "mobi.monaca/activity"

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/transition/ClosePageIntent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget v0, Lmobi/monaca/framework/psedo/R$string;->level:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmobi/monaca/framework/transition/ClosePageIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 25
    const-string v0, "close"

    const-string v1, "mobi.monaca/activity"

    invoke-static {v0, v1}, Landroid/content/IntentFilter;->create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method
