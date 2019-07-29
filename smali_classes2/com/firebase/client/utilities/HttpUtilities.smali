.class public Lcom/firebase/client/utilities/HttpUtilities;
.super Ljava/lang/Object;
.source "HttpUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/utilities/HttpUtilities$1;,
        Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static addMethodParams(Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V
    .locals 7
    .param p0, "request"    # Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/shaded/apache/http/NameValuePair;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/shaded/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Lorg/shaded/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    new-instance v4, Lorg/shaded/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Lorg/shaded/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/shaded/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/shaded/apache/http/NameValuePair;>;"
    :cond_1
    return-void

    .line 64
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/shaded/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Didn\'t find utf-8 encoding"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;
    .locals 13
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v12, Ljava/net/URI;

    invoke-direct {v12, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 27
    .local v12, "serverURI":Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "uri":Ljava/net/URI;
    const/4 v10, 0x0

    .line 30
    .local v10, "query":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v11, "queryBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 33
    .local v8, "first":Z
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 34
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_0

    .line 35
    const-string v1, "&"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    const/4 v8, 0x0

    .line 38
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 49
    .end local v0    # "uri":Ljava/net/URI;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "first":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "query":Ljava/lang/String;
    .end local v11    # "queryBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "serverURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 50
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t build valid auth URI."

    invoke-direct {v1, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 42
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "uri":Ljava/net/URI;
    .restart local v8    # "first":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "query":Ljava/lang/String;
    .restart local v11    # "queryBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "serverURI":Ljava/net/URI;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 44
    .end local v8    # "first":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "queryBuilder":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v10, :cond_3

    .line 45
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 47
    .end local v0    # "uri":Ljava/net/URI;
    :cond_3
    return-object v0

    .line 51
    .end local v10    # "query":Ljava/lang/String;
    .end local v12    # "serverURI":Ljava/net/URI;
    :catch_1
    move-exception v6

    .line 52
    .local v6, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t build valid auth URI."

    invoke-direct {v1, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static requestWithType(Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;)Lorg/shaded/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/firebase/client/utilities/HttpUtilities$1;->$SwitchMap$com$firebase$client$utilities$HttpUtilities$HttpRequestType:[I

    invoke-virtual {p2}, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 80
    :goto_0
    sget-object v4, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->DELETE:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    if-ne p2, v4, :cond_0

    .line 81
    const-string v4, "_method"

    const-string v5, "delete"

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/firebase/client/utilities/HttpUtilities;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;

    move-result-object v2

    .line 84
    .local v2, "url":Ljava/net/URI;
    sget-object v4, Lcom/firebase/client/utilities/HttpUtilities$1;->$SwitchMap$com$firebase$client$utilities$HttpUtilities$HttpRequestType:[I

    invoke-virtual {p2}, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 106
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Shouldn\'t reach here!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v2    # "url":Ljava/net/URI;
    :pswitch_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 75
    .end local p3    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p3, v3

    .line 76
    .end local v3    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p3    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 86
    .restart local v2    # "url":Ljava/net/URI;
    :pswitch_1
    new-instance v0, Lorg/shaded/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/shaded/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 103
    :cond_1
    :goto_1
    return-object v0

    .line 89
    :pswitch_2
    new-instance v0, Lorg/shaded/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v2}, Lorg/shaded/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 90
    .local v0, "post":Lorg/shaded/apache/http/client/methods/HttpPost;
    if-eqz p4, :cond_1

    .line 91
    invoke-static {v0, p4}, Lcom/firebase/client/utilities/HttpUtilities;->addMethodParams(Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V

    goto :goto_1

    .line 96
    .end local v0    # "post":Lorg/shaded/apache/http/client/methods/HttpPost;
    :pswitch_3
    new-instance v0, Lorg/shaded/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v2}, Lorg/shaded/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    goto :goto_1

    .line 99
    :pswitch_4
    new-instance v1, Lorg/shaded/apache/http/client/methods/HttpPut;

    invoke-direct {v1, v2}, Lorg/shaded/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 100
    .local v1, "put":Lorg/shaded/apache/http/client/methods/HttpPut;
    if-eqz p4, :cond_2

    .line 101
    invoke-static {v1, p4}, Lcom/firebase/client/utilities/HttpUtilities;->addMethodParams(Lorg/shaded/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;)V

    :cond_2
    move-object v0, v1

    .line 103
    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
