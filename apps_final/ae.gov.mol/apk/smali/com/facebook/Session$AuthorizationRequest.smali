.class public Lcom/facebook/Session$AuthorizationRequest;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private final loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private validateSameFbidAsToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1644
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1645
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1648
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1649
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1652
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1656
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$1;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1667
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1644
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1645
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1648
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1649
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1652
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1670
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$2;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1681
    return-void
.end method

.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p2, "requestCode"    # I
    .param p4, "defaultAudience"    # Ljava/lang/String;
    .param p5, "isLegacy"    # Z
    .param p6, "applicationId"    # Ljava/lang/String;
    .param p7, "validateSameFbidAsToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1686
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1644
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1645
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1648
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1649
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1652
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    .line 1689
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$3;

    invoke-direct {v0, p0}, Lcom/facebook/Session$AuthorizationRequest$3;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1702
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1703
    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1704
    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1705
    invoke-static {p4}, Lcom/facebook/SessionDefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1706
    iput-boolean p5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1707
    iput-object p6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    .line 1708
    iput-object p7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    .line 1709
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 1686
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/Session$StartActivityDelegate;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method static synthetic access$4(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/Session$AuthorizationRequest;)I
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method static synthetic access$6(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 1830
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .locals 10

    .prologue
    .line 1806
    new-instance v8, Lcom/facebook/Session$AuthorizationRequest$4;

    invoke-direct {v8, p0}, Lcom/facebook/Session$AuthorizationRequest$4;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1817
    .local v8, "delegate":Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    new-instance v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-boolean v3, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1818
    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/Session$AuthorizationRequest;->authId:Ljava/lang/String;

    .line 1817
    invoke-direct/range {v0 .. v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AuthorizationClient$StartActivityDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method getCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method getValidateSameFbidAsToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    return-object v0
.end method

.method isLegacy()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    .line 1791
    return-void
.end method

.method setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 1726
    return-object p0
.end method

.method setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "defaultAudience"    # Lcom/facebook/SessionDefaultAudience;

    .prologue
    .line 1771
    if-eqz p1, :cond_0

    .line 1772
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 1774
    :cond_0
    return-object p0
.end method

.method public setIsLegacy(Z)V
    .locals 0
    .param p1, "isLegacy"    # Z

    .prologue
    .line 1717
    iput-boolean p1, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    .line 1718
    return-void
.end method

.method setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 1734
    if-eqz p1, :cond_0

    .line 1735
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1737
    :cond_0
    return-object p0
.end method

.method setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$AuthorizationRequest;"
        }
    .end annotation

    .prologue
    .line 1756
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1757
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1759
    :cond_0
    return-object p0
.end method

.method varargs setPermissions([Ljava/lang/String;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 1763
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/Session$AuthorizationRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    move-result-object v0

    return-object v0
.end method

.method setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 1745
    if-ltz p1, :cond_0

    .line 1746
    iput p1, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1748
    :cond_0
    return-object p0
.end method

.method setValidateSameFbidAsToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "validateSameFbidAsToken"    # Ljava/lang/String;

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    .line 1799
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1823
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;

    .line 1824
    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z

    iget-object v6, p0, Lcom/facebook/Session$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/Session$AuthorizationRequest;->validateSameFbidAsToken:Ljava/lang/String;

    .line 1823
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;)V

    return-object v0
.end method
