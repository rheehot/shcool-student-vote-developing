.class Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findObjectIdInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;


# direct methods
.method constructor <init>(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;->this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;->this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;->this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    iget-object v1, v1, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 368
    :cond_0
    return-object v0
.end method

.method public bridge synthetic withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$5;->withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    return-object v0
.end method
