.class Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findViews()[Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember",
        "<[",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;


# direct methods
.method constructor <init>(Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public withMember(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->this$0:Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
