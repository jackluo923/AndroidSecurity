.class public Ljp/innovationplus/ipp/constants/IPPConstants;
.super Ljava/lang/Object;
.source "IPPConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/constants/IPPConstants$IPP_ERROR_CODE;,
        Ljp/innovationplus/ipp/constants/IPPConstants$IPP_PROFILE_FIELD_ELEMENT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static descriptionErrorCode(I)Ljava/lang/String;
    .locals 3
    .param p0, "error_code"    # I

    .prologue
    .line 77
    const/16 v1, -0x384

    if-ge p0, v1, :cond_0

    .line 78
    sparse-switch p0, :sswitch_data_0

    .line 119
    const-string v0, "IPP_ERROR_CODE : UNEXPECTED_ERROR"

    .line 126
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 80
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_0
    const-string v0, "IPP_KIT_ERROR : MALFORMED_URL"

    .line 81
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_1
    const-string v0, "IPP_KIT_ERROR : FAILURE_OPEN_CONNECTION"

    .line 84
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_2
    const-string v0, "IPP_KIT_ERROR : INVALID_PROTOCOL"

    .line 87
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_3
    const-string v0, "IPP_KIT_ERROR : UNSET_APPLICATION_KEY"

    .line 90
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_4
    const-string v0, "IPP_KIT_ERROR : FAILURE_JSON_GENERATION"

    .line 93
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_5
    const-string v0, "IPP_KIT_ERROR : INVALID_JSON_MAPPING"

    .line 96
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_6
    const-string v0, "IPP_KIT_ERROR : FAILURE_OPEN_JSON_DATA"

    .line 99
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_7
    const-string v0, "IPP_KIT_ERROR : FAILURE_IO_STREAM"

    .line 102
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_8
    const-string v0, "PLATFORM_SERVER_ERROR : NG_RESOURCE_NOT_FOUND"

    .line 105
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_9
    const-string v0, "PLATFORM_SERVER_ERROR : NG_UNAUTHORIZED"

    .line 108
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_a
    const-string v0, "PLATFORM_SERVER_ERROR : NG_PERMISSION_DENIED"

    .line 111
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_b
    const-string v0, "PLATFORM_SERVER_ERROR : NG_UNEXPECTED_ERROR"

    .line 114
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_c
    const-string v0, "PLATFORM_SERVER_ERROR : NG_BAD_REQUEST"

    .line 117
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP RESPONSE CODE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        -0x2716 -> :sswitch_c
        -0x2715 -> :sswitch_b
        -0x2714 -> :sswitch_a
        -0x2713 -> :sswitch_9
        -0x2710 -> :sswitch_8
        -0x3ef -> :sswitch_7
        -0x3ee -> :sswitch_6
        -0x3ed -> :sswitch_5
        -0x3ec -> :sswitch_4
        -0x3eb -> :sswitch_3
        -0x3ea -> :sswitch_2
        -0x3e9 -> :sswitch_1
        -0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
