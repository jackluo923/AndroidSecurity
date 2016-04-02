.class Lmobi/monaca/framework/MonacaApplication$2;
.super Ljava/lang/Object;
.source "MonacaApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaApplication;->showMonacaSpinnerDialog(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaApplication;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaApplication;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lmobi/monaca/framework/MonacaApplication$2;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 181
    return-void
.end method
