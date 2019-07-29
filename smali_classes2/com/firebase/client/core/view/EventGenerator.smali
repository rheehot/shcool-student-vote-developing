.class public Lcom/firebase/client/core/view/EventGenerator;
.super Ljava/lang/Object;
.source "EventGenerator.java"


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;

.field private final query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1
    .param p1, "query"    # Lcom/firebase/client/core/view/QuerySpec;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/core/view/EventGenerator;->query:Lcom/firebase/client/core/view/QuerySpec;

    .line 18
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/view/EventGenerator;)Lcom/firebase/client/snapshot/Index;
    .locals 1
    .param p0, "x0"    # Lcom/firebase/client/core/view/EventGenerator;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/firebase/client/core/view/EventGenerator$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/view/EventGenerator$1;-><init>(Lcom/firebase/client/core/view/EventGenerator;)V

    return-object v0
.end method

.method private generateEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/DataEvent;
    .locals 5
    .param p1, "change"    # Lcom/firebase/client/core/view/Change;
    .param p2, "registration"    # Lcom/firebase/client/core/EventRegistration;
    .param p3, "eventCache"    # Lcom/firebase/client/snapshot/IndexedNode;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v2

    sget-object v3, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v2

    sget-object v3, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    move-object v0, p1

    .line 46
    .local v0, "newChange":Lcom/firebase/client/core/view/Change;
    :goto_0
    iget-object v2, p0, Lcom/firebase/client/core/view/EventGenerator;->query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {p2, v0, v2}, Lcom/firebase/client/core/EventRegistration;->createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/DataEvent;

    move-result-object v2

    return-object v2

    .line 43
    .end local v0    # "newChange":Lcom/firebase/client/core/view/Change;
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p3, v2, v3, v4}, Lcom/firebase/client/snapshot/IndexedNode;->getPredecessorChildName(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 44
    .local v1, "prevChildKey":Lcom/firebase/client/snapshot/ChildKey;
    invoke-virtual {p1, v1}, Lcom/firebase/client/core/view/Change;->changeWithPrevName(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    .restart local v0    # "newChange":Lcom/firebase/client/core/view/Change;
    goto :goto_0
.end method

.method private generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V
    .locals 6
    .param p2, "type"    # Lcom/firebase/client/core/view/Event$EventType;
    .param p5, "eventCache"    # Lcom/firebase/client/snapshot/IndexedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;",
            "Lcom/firebase/client/core/view/Event$EventType;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;",
            "Lcom/firebase/client/snapshot/IndexedNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/DataEvent;>;"
    .local p3, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    .local p4, "eventRegistrations":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v1, "filteredChanges":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 24
    .local v0, "change":Lcom/firebase/client/core/view/Change;
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    .end local v0    # "change":Lcom/firebase/client/core/view/Change;
    :cond_1
    invoke-direct {p0}, Lcom/firebase/client/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 30
    .restart local v0    # "change":Lcom/firebase/client/core/view/Change;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/EventRegistration;

    .line 31
    .local v4, "registration":Lcom/firebase/client/core/EventRegistration;
    invoke-virtual {v4, p2}, Lcom/firebase/client/core/EventRegistration;->respondsTo(Lcom/firebase/client/core/view/Event$EventType;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 32
    invoke-direct {p0, v0, v4, p5}, Lcom/firebase/client/core/view/EventGenerator;->generateEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/DataEvent;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    .end local v0    # "change":Lcom/firebase/client/core/view/Change;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "registration":Lcom/firebase/client/core/EventRegistration;
    :cond_4
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p2, "eventCache"    # Lcom/firebase/client/snapshot/IndexedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;",
            "Lcom/firebase/client/snapshot/IndexedNode;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    .local p3, "eventRegistrations":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/EventRegistration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/DataEvent;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v8, "moves":Ljava/util/List;, "Ljava/util/List<Lcom/firebase/client/core/view/Change;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/view/Change;

    .line 54
    .local v6, "change":Lcom/firebase/client/core/view/Change;
    invoke-virtual {v6}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v0

    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/EventGenerator;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v6}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v6}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/firebase/client/snapshot/Index;->indexedValueChanged(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v6}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v6}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firebase/client/core/view/Change;->childMovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v6    # "change":Lcom/firebase/client/core/view/Change;
    :cond_1
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 61
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 62
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_MOVED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, v8

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 63
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 64
    sget-object v2, Lcom/firebase/client/core/view/Event$EventType;->VALUE:Lcom/firebase/client/core/view/Event$EventType;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/firebase/client/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 66
    return-object v1
.end method
