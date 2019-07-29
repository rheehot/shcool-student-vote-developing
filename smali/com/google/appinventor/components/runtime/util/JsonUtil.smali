.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final BINFILE_DIR:Ljava/lang/String; = "/AppInventorBinaries"

.field private static final LOG_TAG:Ljava/lang/String; = "JsonUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p0, :cond_1

    .line 142
    const-string p0, "null"

    .line 166
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 145
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 146
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 149
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 150
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 153
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 170
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    const-string v3, "null"

    .line 209
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 173
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Lgnu/lists/FString;

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 176
    :cond_2
    instance-of v3, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_3

    .line 177
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 186
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, p0, Lgnu/math/IntFraction;

    if-eqz v3, :cond_4

    .line 187
    check-cast p0, Lgnu/math/IntFraction;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 189
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 190
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 192
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 195
    :cond_6
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 196
    check-cast p0, Ljava/util/List;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 198
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, ""

    .line 202
    .local v2, "separator":Ljava/lang/String;
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v0, p0, v3

    .line 203
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ","

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "o":Ljava/lang/Object;
    :cond_8
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 209
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "separator":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 260
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 261
    new-instance v3, Lorg/json/JSONArray;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, "valueJsonList":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 269
    .end local v3    # "valueJsonList":Lorg/json/JSONArray;
    .local v4, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 270
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "filename":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filename Written: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    const-string v5, "file:/"

    const-string v6, "file:///"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .end local v2    # "filename":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 263
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 264
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .restart local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 266
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v6, "getJsonRepresentationIfValueFileName called on unknown type"

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local p0    # "value":Ljava/lang/Object;
    .restart local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "JsonUtil"

    const-string v6, "JSONException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 283
    goto :goto_1

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    move-object v5, v7

    .line 276
    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 279
    goto :goto_1
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object v1
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "keysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    return-object v4
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    :cond_0
    const-string v0, ""

    .line 231
    :cond_1
    :goto_0
    return-object v0

    .line 220
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 228
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    .line 229
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 230
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 231
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 233
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid JSON string."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static trimDirectory(ILjava/io/File;)V
    .locals 4
    .param p0, "maxSavedFiles"    # I
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 325
    .local v1, "files":[Ljava/io/File;
    new-instance v3, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 331
    array-length v3, v1

    sub-int v0, v3, p0

    .line 332
    .local v0, "excess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 333
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method private static writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 301
    new-instance v7, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v8, "File Extension must be three or four characters"

    const-string v9, "Write Error"

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Write"

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 303
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    invoke-static {p0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 304
    .local v0, "content":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/AppInventorBinaries"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "fullDirName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "destDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 307
    const-string v7, "BinFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 308
    .local v1, "dest":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 309
    .local v5, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 310
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "retval":Ljava/lang/String;
    const/16 v7, 0x14

    invoke-static {v7, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->trimDirectory(ILjava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    return-object v6
.end method
