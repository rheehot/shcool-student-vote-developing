.class final Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;
.super Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Regular"
.end annotation


# instance fields
.field final _property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 55
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->_property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 56
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->_property:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method
