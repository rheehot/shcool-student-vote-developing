.class public final Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
.super Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
.source "CollectionType.java"


# static fields
.field private static final serialVersionUID:J = -0x6cbb315ebf8435f0L


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 23
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 37
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 48
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6

    .prologue
    .line 79
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;
    .locals 6

    .prologue
    .line 74
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_elementType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;->_asStatic:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method
