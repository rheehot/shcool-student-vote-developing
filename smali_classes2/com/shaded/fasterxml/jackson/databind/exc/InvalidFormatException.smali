.class public Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;
.super Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shaded/fasterxml/jackson/core/JsonLocation;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;)V

    .line 48
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    .line 49
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    .line 41
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method public static from(Lcom/shaded/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/shaded/fasterxml/jackson/core/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    return-object v0
.end method
