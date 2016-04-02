.class Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$3;
.super Ljava/lang/Object;
.source "Fragment_PublicServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->setBackPressListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$3;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 146
    invoke-static {}, Lae/gov/mol/helper/MOLLocationManager;->getInstance()Lae/gov/mol/helper/MOLLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 147
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_0
    return v2
.end method
