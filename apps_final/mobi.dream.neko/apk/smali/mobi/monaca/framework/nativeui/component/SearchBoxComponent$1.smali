.class Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;
.super Ljava/lang/Object;
.source "SearchBoxComponent.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 126
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 130
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 131
    .local v1, "sp":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "keyword":Ljava/lang/String;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$1;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v4, v4, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v0}, Lmobi/monaca/framework/nativeui/ComponentEventer;->onSearch(Landroid/view/View;Ljava/lang/String;)V

    .line 135
    .end local v0    # "keyword":Ljava/lang/String;
    .end local v1    # "sp":Landroid/text/SpannableStringBuilder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
