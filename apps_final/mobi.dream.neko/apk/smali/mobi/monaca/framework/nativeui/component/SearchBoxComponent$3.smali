.class Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;
.super Ljava/lang/Object;
.source "SearchBoxComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 162
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v1, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->clearButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$3;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 154
    return-void
.end method
