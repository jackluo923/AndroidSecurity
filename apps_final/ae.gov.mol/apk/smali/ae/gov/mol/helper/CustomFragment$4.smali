.class Lae/gov/mol/helper/CustomFragment$4;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment;->showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;

.field private final synthetic val$mKeyValueVos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    iput-object p2, p0, Lae/gov/mol/helper/CustomFragment$4;->val$mKeyValueVos:Ljava/util/ArrayList;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "mDatePicker"    # Landroid/widget/DatePicker;
    .param p2, "selectedYear"    # I
    .param p3, "selectedMonth"    # I
    .param p4, "selectedDay"    # I

    .prologue
    .line 577
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    const-string v5, ""

    invoke-static {v4, v5}, Lae/gov/mol/helper/CustomFragment;->access$3(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;)V

    .line 578
    const-string v2, ""

    .line 579
    .local v2, "mStringDay":Ljava/lang/String;
    const-string v3, ""

    .line 581
    .local v3, "mStringMonth":Ljava/lang/String;
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->val$mKeyValueVos:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->val$mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 606
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mString :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v6}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 610
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 585
    .restart local v0    # "i":I
    :cond_1
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->val$mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/KeyValueVo;

    .line 587
    .local v1, "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/16 v4, 0xa

    if-ge p4, v4, :cond_3

    .line 588
    const-string v2, "0"

    .line 592
    :goto_1
    const/16 v4, 0x9

    if-ge p3, v4, :cond_4

    .line 593
    const-string v3, "0"

    .line 596
    :goto_2
    invoke-virtual {v1}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 597
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lae/gov/mol/helper/CustomFragment;->access$3(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;)V

    .line 602
    :goto_3
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->val$mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_2

    .line 603
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lae/gov/mol/helper/CustomFragment;->access$3(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;)V

    .line 584
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 590
    :cond_3
    const-string v2, ""

    goto/16 :goto_1

    .line 595
    :cond_4
    const-string v3, ""

    goto/16 :goto_2

    .line 599
    :cond_5
    iget-object v4, p0, Lae/gov/mol/helper/CustomFragment$4;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v4}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lae/gov/mol/helper/CustomFragment;->access$3(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;)V

    goto :goto_3
.end method
