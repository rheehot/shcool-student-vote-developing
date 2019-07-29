.class public Lorg/shaded/apache/http/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lorg/shaded/apache/http/protocol/HttpContext;


# instance fields
.field private map:Ljava/util/Map;

.field private final parentContext:Lorg/shaded/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/shaded/apache/http/protocol/BasicHttpContext;-><init>(Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 1
    .param p1, "parentContext"    # Lorg/shaded/apache/http/protocol/HttpContext;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/shaded/apache/http/protocol/HttpContext;

    .line 60
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/shaded/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :cond_2
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
