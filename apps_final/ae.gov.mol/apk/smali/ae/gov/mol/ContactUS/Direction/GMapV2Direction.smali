.class public Lae/gov/mol/ContactUS/Direction/GMapV2Direction;
.super Ljava/lang/Object;
.source "GMapV2Direction.java"


# static fields
.field public static final MODE_DRIVING:Ljava/lang/String; = "driving"

.field public static final MODE_WALKING:Ljava/lang/String; = "walking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodePoly(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v10, "poly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 162
    .local v8, "len":I
    const/4 v7, 0x0

    .local v7, "lat":I
    const/4 v9, 0x0

    .line 163
    .local v9, "lng":I
    :goto_0
    if-lt v5, v8, :cond_0

    .line 185
    return-object v10

    .line 164
    :cond_0
    const/4 v13, 0x0

    .local v13, "shift":I
    const/4 v12, 0x0

    .line 166
    .local v12, "result":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 167
    .local v2, "b":I
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 168
    add-int/lit8 v13, v13, 0x5

    .line 169
    const/16 v14, 0x20

    .line 165
    if-ge v2, v14, :cond_4

    .line 170
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v3, v14, -0x1

    .line 171
    .local v3, "dlat":I
    :goto_2
    add-int/2addr v7, v3

    .line 172
    const/4 v13, 0x0

    .line 173
    const/4 v12, 0x0

    move v5, v6

    .line 175
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 176
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 177
    add-int/lit8 v13, v13, 0x5

    .line 178
    const/16 v14, 0x20

    .line 174
    if-ge v2, v14, :cond_3

    .line 179
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_2

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v4, v14, -0x1

    .line 180
    .local v4, "dlng":I
    :goto_4
    add-int/2addr v9, v4

    .line 182
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v14, v7

    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x40f86a0000000000L    # 100000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 183
    .local v11, "position":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 170
    .end local v3    # "dlat":I
    .end local v4    # "dlng":I
    .end local v5    # "index":I
    .end local v11    # "position":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "index":I
    :cond_1
    shr-int/lit8 v3, v12, 0x1

    goto :goto_2

    .line 179
    .restart local v3    # "dlat":I
    :cond_2
    shr-int/lit8 v4, v12, 0x1

    goto :goto_4

    :cond_3
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .end local v3    # "dlat":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_4
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method private getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I
    .locals 2
    .param p1, "nl"    # Lorg/w3c/dom/NodeList;
    .param p2, "nodename"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 156
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 153
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCopyRights(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 107
    const-string v2, "copyrights"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 108
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 109
    .local v1, "node1":Lorg/w3c/dom/Node;
    const-string v2, "CopyRights"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDirection(Lorg/w3c/dom/Document;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v8, "listGeopoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-string v17, "step"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 117
    .local v13, "nl1":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_0

    .line 118
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_1

    .line 148
    .end local v3    # "i":I
    :cond_0
    return-object v8

    .line 119
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v13, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 120
    .local v16, "node1":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 122
    .local v14, "nl2":Lorg/w3c/dom/NodeList;
    const-string v17, "start_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 123
    .local v12, "locationNode":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 124
    .local v15, "nl3":Lorg/w3c/dom/NodeList;
    const-string v17, "lat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 125
    .local v7, "latNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 126
    .local v5, "lat":D
    const-string v17, "lng"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 127
    .local v11, "lngNode":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 128
    .local v9, "lng":D
    new-instance v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v17, "polyline"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 131
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 132
    const-string v17, "points"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 133
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->decodePoly(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    .line 138
    const-string v17, "end_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 139
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 140
    const-string v17, "lat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 141
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 142
    const-string v17, "lng"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 143
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 144
    new-instance v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 135
    :cond_2
    new-instance v18, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v19, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v21, v0

    invoke-direct/range {v18 .. v22}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getDistanceText(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 75
    const-string v4, "distance"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 76
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 77
    .local v2, "node1":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    .local v1, "nl2":Lorg/w3c/dom/NodeList;
    const-string v4, "text"

    invoke-direct {p0, v1, v4}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 79
    .local v3, "node2":Lorg/w3c/dom/Node;
    const-string v4, "DistanceText"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDistanceValue(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 84
    const-string v4, "distance"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 85
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 86
    .local v2, "node1":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 87
    .local v1, "nl2":Lorg/w3c/dom/NodeList;
    const-string v4, "value"

    invoke-direct {p0, v1, v4}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 88
    .local v3, "node2":Lorg/w3c/dom/Node;
    const-string v4, "DistanceValue"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public getDocument(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 12
    .param p1, "start"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "end"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://maps.googleapis.com/maps/api/directions/xml?origin="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget-wide v10, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 38
    const-string v10, "&destination="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 39
    const-string v10, "&sensor=false&units=metric&mode=driving"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 36
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "url":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 43
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 44
    .local v6, "localContext":Lorg/apache/http/protocol/HttpContext;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v3, v4, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 46
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 47
    .local v5, "in":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 48
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "localContext":Lorg/apache/http/protocol/HttpContext;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDurationText(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 57
    const-string v4, "duration"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 58
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 59
    .local v2, "node1":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 60
    .local v1, "nl2":Lorg/w3c/dom/NodeList;
    const-string v4, "text"

    invoke-direct {p0, v1, v4}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 61
    .local v3, "node2":Lorg/w3c/dom/Node;
    const-string v4, "DurationText"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDurationValue(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 66
    const-string v4, "duration"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 67
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 68
    .local v2, "node1":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 69
    .local v1, "nl2":Lorg/w3c/dom/NodeList;
    const-string v4, "value"

    invoke-direct {p0, v1, v4}, Lae/gov/mol/ContactUS/Direction/GMapV2Direction;->getNodeIndex(Lorg/w3c/dom/NodeList;Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 70
    .local v3, "node2":Lorg/w3c/dom/Node;
    const-string v4, "DurationValue"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public getEndAddress(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 100
    const-string v2, "end_address"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 101
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 102
    .local v1, "node1":Lorg/w3c/dom/Node;
    const-string v2, "StartAddress"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStartAddress(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 93
    const-string v2, "start_address"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 94
    .local v0, "nl1":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 95
    .local v1, "node1":Lorg/w3c/dom/Node;
    const-string v2, "StartAddress"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
