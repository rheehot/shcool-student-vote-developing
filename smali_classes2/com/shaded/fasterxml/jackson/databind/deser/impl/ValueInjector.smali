.class public Lcom/shaded/fasterxml/jackson/databind/deser/impl/ValueInjector;
.super Lcom/shaded/fasterxml/jackson/databind/BeanProperty$Std;
.source "ValueInjector.java"


# instance fields
.field protected final _valueId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/util/Annotations;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 30
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/shaded/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/PropertyName;Lcom/shaded/fasterxml/jackson/databind/util/Annotations;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V

    .line 31
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public findValue(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inject(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ValueInjector;->_member:Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/ValueInjector;->findValue(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method
