.class public Lae/gov/mol/vo/ServiceDataGroupVo;
.super Ljava/lang/Object;
.source "ServiceDataGroupVo.java"


# static fields
.field public static final GroupKeyName:Ljava/lang/String; = "group"

.field public static final GroupKeyNameServiceNameSeparator:Ljava/lang/String; = ":"


# instance fields
.field public GroupName:Ljava/lang/String;

.field public GroupNameService:Lae/gov/mol/vo/ServiceDataVo;

.field public ServiceGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/gov/mol/vo/ServiceDataVo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "groupNameService"    # Lae/gov/mol/vo/ServiceDataVo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/gov/mol/vo/ServiceDataVo;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "serviceGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataVo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lae/gov/mol/vo/ServiceDataGroupVo;->GroupNameService:Lae/gov/mol/vo/ServiceDataVo;

    .line 20
    iput-object p2, p0, Lae/gov/mol/vo/ServiceDataGroupVo;->ServiceGroup:Ljava/util/ArrayList;

    .line 21
    invoke-static {p1}, Lae/gov/mol/vo/ServiceDataGroupVo;->GetGroupName(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceDataGroupVo;->GroupName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static GetGroupName(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;
    .locals 5
    .param p0, "service"    # Lae/gov/mol/vo/ServiceDataVo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/16 v4, 0x2d

    .line 26
    const-string v0, ""

    .line 27
    .local v0, "groupName":Ljava/lang/String;
    invoke-virtual {p0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p0}, Lae/gov/mol/vo/ServiceDataGroupVo;->IsGroupService(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 36
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static GetServiceCode(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # Lae/gov/mol/vo/ServiceDataVo;

    .prologue
    .line 45
    invoke-static {p0}, Lae/gov/mol/vo/ServiceDataGroupVo;->IsGroupService(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "key":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static IsGroupService(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "service"    # Lae/gov/mol/vo/ServiceDataVo;

    .prologue
    .line 54
    invoke-virtual {p0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
