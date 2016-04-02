.class Lmobi/monaca/framework/MonacaApplication$3;
.super Ljava/lang/Object;
.source "MonacaApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 183
    iput-object p1, p0, Lmobi/monaca/framework/MonacaApplication$3;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 186
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication$3;->this$0:Lmobi/monaca/framework/MonacaApplication;

    # getter for: Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->access$000(Lmobi/monaca/framework/MonacaApplication;)Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lmobi/monaca/framework/MonacaApplication$3;->this$0:Lmobi/monaca/framework/MonacaApplication;

    const/4 v1, 0x0

    # setter for: Lmobi/monaca/framework/MonacaApplication;->monacaSpinnerDialog:Lmobi/monaca/framework/nativeui/component/SpinnerDialog;
    invoke-static {v0, v1}, Lmobi/monaca/framework/MonacaApplication;->access$002(Lmobi/monaca/framework/MonacaApplication;Lmobi/monaca/framework/nativeui/component/SpinnerDialog;)Lmobi/monaca/framework/nativeui/component/SpinnerDialog;

    .line 189
    :cond_0
    return-void
.end method
