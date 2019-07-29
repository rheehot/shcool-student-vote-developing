.class public Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final NO_PROPERTIES:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field protected _anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

.field protected final _beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

.field protected _config:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

.field protected _filterId:Ljava/lang/Object;

.field protected _filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected _objectIdWriter:Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

.field protected _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field

.field protected _typeId:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    .line 78
    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    .line 85
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 86
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 87
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 88
    iget-object v0, p1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public build()Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 178
    :cond_1
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 183
    :goto_1
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v2}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    goto :goto_1
.end method

.method public createDummy()Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->createDummy(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getAnyGetter()Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    return-object v0
.end method

.method public getBeanDescription()Lcom/shaded/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    return-object v0
.end method

.method public getClassInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public getFilterId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    return-object v0
.end method

.method public getFilteredProperties()[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-object v0
.end method

.method public getObjectIdWriter()Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public getTypeId()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnyGetter(Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 114
    return-void
.end method

.method protected setConfig(Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_config:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    .line 102
    return-void
.end method

.method public setFilterId(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setFilteredProperties([Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 110
    return-void
.end method

.method public setObjectIdWriter(Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 130
    return-void
.end method

.method public setProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setTypeId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple type ids specified with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 126
    return-void
.end method
