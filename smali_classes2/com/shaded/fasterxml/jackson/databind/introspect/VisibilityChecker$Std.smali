.class public Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;
    creatorVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    fieldVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    isGetterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->ANY:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker",
        "<",
        "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

.field private static final serialVersionUID:J = -0x622bae41c348ab43L


# instance fields
.field protected final _creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

.field protected final _setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    const-class v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    const-class v2, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-direct {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)V

    sput-object v1, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 220
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 221
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 222
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 223
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 224
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 227
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 228
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 229
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 230
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 204
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 205
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 206
    iput-object p4, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 207
    iput-object p5, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->getterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 192
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->isGetterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 193
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->setterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 194
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->creatorVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 195
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->fieldVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 196
    return-void
.end method

.method public static defaultInstance()Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    return-object v0
.end method


# virtual methods
.method public isCreatorVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isCreatorVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isCreatorVisible(Ljava/lang/reflect/Member;)Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isFieldVisible(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Ljava/lang/reflect/Field;)Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isIsGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->isSetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 259
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    goto :goto_0
.end method

.method public with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 2

    .prologue
    .line 244
    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->getterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 247
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->isGetterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 248
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->setterVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 249
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->creatorVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 250
    invoke-interface {p1}, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;->fieldVisibility()Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    .line 252
    :cond_0
    return-object p0
.end method

.method public bridge synthetic with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 310
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v4, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, v4, :cond_0

    .line 312
    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v4, p1

    goto :goto_0
.end method

.method public bridge synthetic withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 317
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v5, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, v5, :cond_0

    .line 319
    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v5, p1

    goto :goto_0
.end method

.method public bridge synthetic withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 289
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, v1, :cond_0

    .line 291
    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public bridge synthetic withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 296
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v2, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, v2, :cond_0

    .line 298
    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public bridge synthetic withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 6

    .prologue
    .line 303
    sget-object v0, Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v3, v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    if-ne v0, v3, :cond_0

    .line 305
    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v3, p1

    goto :goto_0
.end method

.method public bridge synthetic withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$1;->$SwitchMap$com$fasterxml$jackson$annotation$PropertyAccessor:[I

    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-object p0

    .line 269
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 277
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 279
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->with(Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic withVisibility(Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->withVisibility(Lcom/shaded/fasterxml/jackson/annotation/PropertyAccessor;Lcom/shaded/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method
